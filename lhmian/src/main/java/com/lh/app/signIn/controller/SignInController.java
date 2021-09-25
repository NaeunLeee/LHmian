package com.lh.app.signIn.controller;

import java.util.HashMap;
import java.util.Random;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.etc.Coolsms;
import com.lh.app.signIn.service.SignInService;

@Controller
public class SignInController {
	
	@Autowired SignInService signInService;

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
	public String leaderStep2One(@RequestParam("userPhoneNumber") String phone, Model model) {
		
		System.out.println(phone);
		
		model.addAttribute("phone", phone);
		
		return "signIn/leaderStep2-1";
	}

	@GetMapping("/memberStep1")
	public String memberStep1() {

		return "signIn/memberStep1";
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
		System.out.println(map.get("userPhoneNumber"));
		
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
		set.put("to", map.get("userPhoneNumber")); // 수신번호
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
