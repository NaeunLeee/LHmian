package com.lh.app.signIn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SignInController {
	
	
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
	
	@GetMapping("/memberStep1")
	public String memberStep1() {
		
		return "signIn/memberStep1";
	}
	
	@PostMapping("/certificate")
	@ResponseBody
	public String certificate() {
		System.out.println("ho");
		return "";
	}
}
