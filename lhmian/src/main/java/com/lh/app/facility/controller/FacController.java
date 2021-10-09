package com.lh.app.facility.controller;

import java.io.IOException;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.facility.domain.FacCriteria;
import com.lh.app.facility.domain.FacPageVO;
import com.lh.app.facility.domain.FacVO;
import com.lh.app.facility.domain.GxVO;
import com.lh.app.facility.domain.GymVO;
import com.lh.app.facility.domain.LibraryVO;
import com.lh.app.facility.service.FacService;
import com.lh.app.payment.domain.PaymentVO;
import com.lh.app.signIn.etc.CustomUserDetails;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;

//10/06 추가
@Controller
public class FacController {
	
	@Autowired 
	FacService facService;
	private IamportClient api;
	
	@RequestMapping("myFac")
	public String getList(Model model,@AuthenticationPrincipal CustomUserDetails customUserDetails,
			@ModelAttribute("cri") FacCriteria cri, FacVO vo) {
		String id = customUserDetails.getUsername();
		vo.setId(id);
		cri.setId(id);
		System.out.println("cri======" + cri);
		int total = facService.getTotalCount(vo);
		System.out.println(total);
		model.addAttribute("list", facService.myFac(cri));
		model.addAttribute("pageMaker", new FacPageVO(cri, total));
		return "myPage/myFac";
	}
	
	// 10-07 추가 (이나은) --------------------------------
	
	// 편의 시설 메뉴
	@RequestMapping("/facility/facilityList")
	public String facilityList() {
		return "facility/facilityList";
	}
	
	// 편의 시설 메뉴
	@RequestMapping("/facility/library")
	public String library() {
		return "facility/library";
	}
	
	// 헬스장 메뉴
	@RequestMapping("/facility/gym")
	public String gym(Model model) {
		model.addAttribute("yogaTime", facService.yogaTime());
		model.addAttribute("pilTime", facService.pilTime());
		model.addAttribute("spinTime", facService.spinTime());
		return "facility/gym";
	}
	
	// gx 단건 조회
	@GetMapping("/facility/gxRead")
	@ResponseBody
	public GxVO gxRead(Model model, @RequestBody GxVO vo) {
		return facService.gxRead(vo);
	}
	
	// 헬스장 결제
	@PostMapping("/facility/gymPayComplete")
	public String gymPay(Model model, Locale locale, String imp_uid, PaymentVO payVo, GymVO gymVo, @AuthenticationPrincipal CustomUserDetails info) throws IamportResponseException, IOException {
		this.api = new IamportClient("3453433373716908", "efc0888a66eaa69d340e654d7ba2782e583f94ee2cd039ec3f9318a2a8a9a73fa261a5ad7df75ff5");
		facService.payInsert(payVo);
		facService.gymInsert(gymVo);
		model.addAttribute("uid", api.paymentByImpUid(imp_uid));
		model.addAttribute("gym", gymVo);
		model.addAttribute("pay", payVo);
		return "facility/facPayComplete";
	}
	
	// 독서실 결제
	@PostMapping("/facility/libPayComplete")
	public String libPay(Model model, Locale locale, String imp_uid, PaymentVO payVo, LibraryVO libVo, @AuthenticationPrincipal CustomUserDetails info) throws IamportResponseException, IOException {
		this.api = new IamportClient("3453433373716908", "efc0888a66eaa69d340e654d7ba2782e583f94ee2cd039ec3f9318a2a8a9a73fa261a5ad7df75ff5");
		facService.payInsert(payVo);
		facService.libInsert(libVo);
		model.addAttribute("uid", api.paymentByImpUid(imp_uid));
		model.addAttribute("lib", libVo);
		model.addAttribute("pay", payVo);
		return "facility/facPayComplete";
	}
	
	
	
	
	
	
}
