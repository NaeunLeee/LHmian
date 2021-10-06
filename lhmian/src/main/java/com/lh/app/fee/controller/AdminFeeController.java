package com.lh.app.fee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lh.app.fee.service.ManagementFeeService;

@Controller
@RequestMapping("/admin/*")
public class AdminFeeController {
	
	@Autowired ManagementFeeService managementFeeService;
	
	@GetMapping("feeList")
	public String admSelectFeeList(Model model) {
		
		model.addAttribute("list", managementFeeService.admSelectFeeList());
		
		return "admin/adminFeeList";
	}
}
