package com.lh.app.fee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.fee.domain.ManagementFeeVO;
import com.lh.app.fee.service.ManagementFeeService;
import com.lh.app.signIn.etc.CustomUserDetails;

@Controller
@RequestMapping("/mypage/*")
public class ManagementFeeController {
	
	@Autowired ManagementFeeService managementFeeService;
	
	@GetMapping("/fee")
	public String fee(Model model, @AuthenticationPrincipal CustomUserDetails user) {
		
		if (user != null) {
			String houseInfo = user.getHOUSEINFO();
			
			ManagementFeeVO vo = new ManagementFeeVO();
			vo.setHouseInfo(houseInfo);
			//가장 최근 관리비
			
			model.addAttribute("list", managementFeeService.selectFeeList(vo));
			model.addAttribute("avg", managementFeeService.selectAvg());
		}
		
		return "myPage/myManageFee";
	}
	
	@PostMapping("/dateChange")
	@ResponseBody
	public ManagementFeeVO dateChange(ManagementFeeVO vo, @AuthenticationPrincipal CustomUserDetails user) {
		
		vo.setHouseInfo(user.getHOUSEINFO());
		
		return managementFeeService.selectFee(vo);
		
	}
}
