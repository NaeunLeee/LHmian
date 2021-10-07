package com.lh.app.facility.controller;

import java.io.IOException;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.facility.domain.GxVO;
import com.lh.app.facility.domain.GymVO;
import com.lh.app.facility.service.GymService;
import com.lh.app.payment.domain.PaymentVO;
import com.lh.app.signIn.etc.CustomUserDetails;
import com.lh.app.test.KakaoPayReadyVO;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;

@Controller
public class GymController {
	
	@Autowired
	GymService gymService;
	private IamportClient api;
	
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
	
//	// 결제
//	@PostMapping("/facility/facPayComplete")
//	public String gymPay(Model model, Locale locale, String imp_uid, PaymentVO payVo, GymVO gymVo, @AuthenticationPrincipal CustomUserDetails info) throws IamportResponseException, IOException {
//		this.api = new IamportClient("3453433373716908", "efc0888a66eaa69d340e654d7ba2782e583f94ee2cd039ec3f9318a2a8a9a73fa261a5ad7df75ff5");
//		gymService.gxRegister(gymVo);
//		model.addAttribute("uid", api.paymentByImpUid(imp_uid));
//		model.addAttribute("pay", gymVo);
//		return "facility/facPayComplete";
//	}
}
