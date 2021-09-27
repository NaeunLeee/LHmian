package com.lh.app.signIn.controller;

import java.util.HashMap;
import java.util.Random;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.etc.Coolsms;
import com.lh.app.signIn.service.SignInService;

@Controller
public class SignInController {
	
	@Autowired
	SignInService signInService;

	@GetMapping("/login")
	public String loginForm() {

		return "signIn/login";
	}

	@GetMapping("/signUp")
	public String signUp() {

		return "signIn/signUp";
	}

	@GetMapping("/leaderStep1")
	public String leaderStep1() {

		return "signIn/leaderStep1";
	}
	
	@PostMapping("/leaderStep2-1")
	public String leaderStep2One(MemberVO vo, Model model) {
		
		System.out.println(vo.getPhone());
		System.out.println(vo.getId());
		String page = "";
		
		//kakao 로그인으로 들어오면 id에 kakao id가 있음
		if (vo.getId() != "") {
			System.out.println("카카오 회원가입");
			model.addAttribute("kakaoId", vo.getId());
			
			page = "signIn/leaderStep2-2";
		//일반 회원가입
		} else {
			System.out.println("일반 회원가입");
			
			page = "signIn/leaderStep2-1";
		}
		
		model.addAttribute("phone", vo.getPhone());
		
		return page;
	}

	@GetMapping("/memberStep1")
	public String memberStep1() {

		return "signIn/memberStep1";
	}
	
	//회원 가입
	@PostMapping("/memberSignUp")
	public String memberSignUp(MemberVO vo) {
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String page = "";
		
		String rawPassword = vo.getPassword();
		System.out.println(rawPassword);
		int count;
		
		//일반 회원가입으로 들어오면
		if (rawPassword != null) {
			System.out.println("일반 회원가입");
			System.out.println(vo);
			
			vo.setPassword(passwordEncoder.encode(rawPassword));
//		System.out.println("인코딩된 패스워드와 row 패스워드 일치여부 : " + passwordEncoder.matches("test", test));
			
			count = signInService.insert(vo);
			
		//카카오 회원가입으로 들어오면(이 경우 password inputbox 자체가 없기 때문에 null
		} else {
			System.out.println("카카오 회원가입");
			System.out.println(vo);
			
			vo.setId("kakao_login_id_" + vo.getId());
			vo.setPassword("1X^H320AR)Y&G#JEIW$)OE"); //유출 금지................
			
			count = signInService.insert(vo);
		}
		
		
		if (count == 1) {
			page = "signIn/leaderStep3";
		}
		
		return page;
	}
	
	
	//세대원 인증 키를 통해 동호수 반환
	@PostMapping("/authKey")
	@ResponseBody
	public GenerationVO authKey(GenerationVO vo) {
		System.out.println(vo.getAuthKey());
		return signInService.authKey(vo);
	}
	
	
	//id 중복체크
	@PostMapping("/idCheck")
	@ResponseBody
	public int idCheck(MemberVO vo) {
		
		System.out.println("넘어온 아이디 : " + vo.getId());
		
		return signInService.idCheck(vo);
		
	}

	//인증 버튼 클릭시
	@PostMapping("/sendKey")
	@ResponseBody
	public String sendKey(@RequestBody HashMap<String, String> map) {
		//넘어온 휴대폰 번호
		System.out.println(map.get("phone"));
		
		//인증번호 4자리 랜덤 생성
        Random rand  = new Random();
        String key = "";
        for(int i=0; i<4; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            key+=ran;
        }
        System.out.println(key);

		String api_key = "NCSJQHMMQOPYHJDN";
		String api_secret = "C5S3KG1OVLB15MMS8DAVKQXVVYOEDNKX";
		Coolsms coolsms = new Coolsms(api_key, api_secret); // 메시지보내기 객체 생성
//		userService.insertAuthCode(userPhoneNumber, key); // 휴대폰 인증 관련 서비스

		HashMap<String, String> set = new HashMap<String, String>();
		set.put("to", map.get("phone")); // 수신번호
		set.put("from", "01067290715"); // 발신번호
		set.put("text", "[LHmian] 인증번호 [" + key + "]를 입력해주세요."); // 문자내용
		set.put("type", "sms"); // 문자 타입

		JSONObject result = coolsms.send(set); // 보내기&전송결과받기
		if ((boolean) result.get("status") == true) {
			// 메시지 보내기 성공 및 전송결과 출력
			System.out.println("성공");
			System.out.println(result.get("group_id")); // 그룹아이디
			System.out.println(result.get("result_code")); // 결과코드
			System.out.println(result.get("result_message")); // 결과 메시지
			System.out.println(result.get("success_count")); // 성공 갯수
			System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수
			//성공하면 인증번호를 리턴
			return key;
		} else {
			// 메시지 보내기 실패
			System.out.println("실패");
			System.out.println(result.get("code")); // REST API 에러코드
			System.out.println(result.get("message")); // 에러메시지
			//실패하면 "fail"이라는 메세지를 리턴
			return "fail";
		}
	}
}
