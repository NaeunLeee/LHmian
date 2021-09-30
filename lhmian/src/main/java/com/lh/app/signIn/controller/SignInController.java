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
	
	//패스워드 해시 암호화
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	@Autowired
	SignInService signInService;

	@GetMapping("/login")
	public String loginForm() {

		return "signIn/login";
	}
	
	//접근 금지 페이지
    @GetMapping("/accessDenied")
    public String accessDeniedPage() throws Exception {
        return "/signIn/accessDenied";
    }

    //휴대폰 인증 페이지
	@GetMapping("/leaderStep1")
	public String leaderStep1() {

		return "signIn/leaderStep1";
	}
	
	//
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

	//회원 가입
	@PostMapping("/memberSignUp")
	public String memberSignUp(MemberVO vo) {
		
		String page = "";
		
		String rawPassword = vo.getPassword();
		System.out.println(rawPassword);
		int count;
		
		//일반 회원가입으로 들어오면
		if (rawPassword != null) {
			System.out.println("일반 회원가입");
			
			//일반 회원가입 -> DEFAULT
			vo.setStatus("DEFAULT");
			
			vo.setPassword(passwordEncoder.encode(rawPassword));
			
			count = signInService.insert(vo);
			
		//카카오 회원가입으로 들어오면(이 경우 password inputbox 자체가 없기 때문에 null
		} else {
			System.out.println("카카오 회원가입");
			//카카오 회원가입 -> KAKAO
			vo.setStatus("KAKAO");
			
			vo.setId("kakao_login_id_" + vo.getId());
			
			String kakaoPwd = "c1X^H3yut0qhR)Y&G#JdbW$=OEw"; //유출 금지................
			
			vo.setPassword(passwordEncoder.encode(kakaoPwd));
			
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
	
	//아이디 찾기 폼
	@GetMapping("/findIdForm")
	public String findIdForm() {
		return "no/findIdForm";
	}
	
	//아이디 찾기
	@PostMapping("/findId")
	public String findId(MemberVO vo, Model model) {
		vo = signInService.findId(vo);
		
		
		System.out.println(vo);
		
		model.addAttribute("member", vo);
		
		return "no/findId";
	}
	
	//비밀번호 찾기 폼
	@GetMapping("/findPasswordForm")
	public String findPasswordForm() {
		return "no/findPasswordForm";
	}
	
	//비밀번호 찾기
	@PostMapping("/findPassword")
	public String findPassword(MemberVO vo, Model model) {
		
		int result = signInService.findPassword(vo);
		
		//있으면 1, 없으면 0
		model.addAttribute("result", result);
		model.addAttribute("id", vo.getId());
		
		return "no/updatePasswordForm";
	}
	
	//비밀번호 변경
	@PostMapping("/updatePassword")
	public String updatePassword(MemberVO vo, Model model) {
		String page = "";
		String rawPassword = vo.getPassword();
		
		vo.setPassword(passwordEncoder.encode(rawPassword));
		
		if (signInService.updatePassword(vo) == 1) {
			page = "no/updatePasswordComplete";
		}
		
		return page;
	}

	//인증 버튼 클릭시
	@PostMapping("/sendKey")
	@ResponseBody
	public String sendKey(@RequestBody HashMap<String, String> map) {
		//넘어온 휴대폰 번호
		System.out.println(map.get("phone"));
		
		return signInService.smsAPI(map.get("phone"));
	}
}
