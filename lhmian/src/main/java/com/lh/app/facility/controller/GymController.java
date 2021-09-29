package com.lh.app.facility.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lh.app.facility.service.GymService;

@Controller
public class GymController {
	
	@Autowired
	GymService gymService;
	
	// 편의 시설 메뉴
	@RequestMapping("/facility/facilityList")
	public String facilityList() {
		return "facility/facilityList";
	}
	
	// 헬스장 메뉴
	@RequestMapping("/facility/gym")
	public String gym(Model model) {
		model.addAttribute("yogaTime", gymService.yogaTime());
		model.addAttribute("pilTime", gymService.pilTime());
		model.addAttribute("spinTime", gymService.spinTime());
		return "facility/gym";
	}
	
	
	
}
