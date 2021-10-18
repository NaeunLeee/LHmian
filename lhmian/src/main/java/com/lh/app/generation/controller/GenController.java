package com.lh.app.generation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GenController {

	// 세대 전체 조회
	@RequestMapping("/admin/admGeneration")
	public String admGeneration() {
		return "admin/admGeneration";
	}
	
	
	
}
