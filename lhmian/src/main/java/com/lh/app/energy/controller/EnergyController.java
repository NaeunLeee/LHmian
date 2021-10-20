package com.lh.app.energy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.lh.app.energy.domain.EnergyVO;
import com.lh.app.energy.service.EnergyService;
import com.lh.app.signIn.etc.CustomUserDetails;

@Controller
public class EnergyController {

	@Autowired
	EnergyService energyService;
		
	
	  // 첫 로딩 페이지-사용자
	  @GetMapping("/myPage/myEnergyCon") 
	  public String myList() {
	  return "myPage/myEnergyCon";
	  }
	 
	//금년데이터
	@GetMapping("/myPage/thisEnergy")
	@ResponseBody
	public List<EnergyVO> energy(EnergyVO vo, String columnName, @AuthenticationPrincipal CustomUserDetails customUserDetails) {
		vo.setHouseInfo(Integer.parseInt(customUserDetails.getHOUSEINFO())); 
		vo.setColumnName(columnName);
		  List<EnergyVO> list = energyService.thisYear(vo);
		return list;
	}

	
	  // 작년데이터
	  @GetMapping("/myPage/lastEnergy")
	  @ResponseBody 
	  public List<EnergyVO> myPeriod(EnergyVO vo, String columnName, @AuthenticationPrincipal CustomUserDetails customUserDetails) {
		  vo.setHouseInfo(Integer.parseInt(customUserDetails.getHOUSEINFO())); 
			vo.setColumnName(columnName);
			  List<EnergyVO> list = energyService.lastYear(vo);
			return list;
	  }
	 
	// 전체조회-관리자
	@GetMapping("/admin/admEnergyCon")
	public void admList(Model model, EnergyVO vo) {
		model.addAttribute("list", energyService.admList(vo));
	}
}
