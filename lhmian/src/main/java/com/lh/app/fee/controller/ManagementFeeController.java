package com.lh.app.fee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
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
			Gson gson = new Gson();

			model.addAttribute("list", managementFeeService.selectFeeList(vo));
			model.addAttribute("currentFee", managementFeeService.selectCurrentFee(vo));
			model.addAttribute("currentFeeJson", gson.toJson(managementFeeService.selectCurrentFee(vo)));
			model.addAttribute("avg", managementFeeService.selectAvg());
			model.addAttribute("sixMonth", gson.toJson(managementFeeService.sixMonthsCurrent(vo)));
		}

		return "myPage/myManageFee";
	}

	@PostMapping("/dateChange")
	@ResponseBody
	public ManagementFeeVO dateChange(ManagementFeeVO vo, @AuthenticationPrincipal CustomUserDetails user) {

		vo.setHouseInfo(user.getHOUSEINFO());

		return managementFeeService.selectFee(vo);

	}
	
	@PostMapping("/dateChange2")
	@ResponseBody
	public List<ManagementFeeVO> dateChange2(ManagementFeeVO vo, @AuthenticationPrincipal CustomUserDetails user) {

		vo.setHouseInfo(user.getHOUSEINFO());

		return managementFeeService.sixMonthsSelect(vo);

	}
	
	@PostMapping("/samePyeongAvg")
	@ResponseBody
	public ManagementFeeVO samePyeongAvg(ManagementFeeVO vo) {
		
		return managementFeeService.samePyeongAvg(vo);
	}
	
}
