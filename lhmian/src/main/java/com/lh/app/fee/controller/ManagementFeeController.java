package com.lh.app.fee.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lh.app.signIn.etc.CustomUserDetails;

@Controller
@RequestMapping("/mypage/*")
public class ManagementFeeController {
	@GetMapping("/fee")
	public String fee(@AuthenticationPrincipal CustomUserDetails user) {
		
		if (user != null) {
			System.out.println(user.getUsername());
			System.out.println(user.getHOUSEINFO());
		}
		
		
		return "myPage/myManageFee";
	}
}
