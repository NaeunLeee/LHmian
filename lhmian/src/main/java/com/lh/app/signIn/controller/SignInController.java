package com.lh.app.signIn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignInController {
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		
		return "signIn/loginForm";
	}
	
	
//	@PostMapping("/login")
//	public String 
}
