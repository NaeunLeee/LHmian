package com.lh.app.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SkedController {

	// 스케줄폼
	@GetMapping("admSked")
	public String admSked() {
		return "admin/admSked";
	}
	
	// 스케줄폼
	@GetMapping("admSked2")
	public String admSked2() {
		return "admin/admSked2";
	}

}
