package com.lh.app.facility.controller;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.lh.app.facility.domain.GxVO;
import com.lh.app.facility.service.GymService;
import com.lh.app.signIn.etc.CustomUserDetails;
import com.lh.app.test.KakaoPayApprovalVO;
import com.lh.app.test.KakaoPayReadyVO;

@Controller
public class GymController {
	
	@Autowired
	GymService gymService;
	
	KakaoPayReadyVO kakaoPayReadyVO;
	
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
	
	// gx 단건 조회
	@GetMapping("/facility/gxRead")
	@ResponseBody
	public GxVO gxRead(Model model, @RequestBody GxVO vo) {
		return gymService.gxRead(vo);
	}
	
	// 결제
	
}
