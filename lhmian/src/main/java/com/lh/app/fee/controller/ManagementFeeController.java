package com.lh.app.fee.controller;

import java.io.IOException;
import java.util.Locale;

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
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

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
		}
		
		return "myPage/myManageFee";
	}
	
	@PostMapping("/dateChange")
	@ResponseBody
	public ManagementFeeVO dateChange(ManagementFeeVO vo, @AuthenticationPrincipal CustomUserDetails user) {
		
		vo.setHouseInfo(user.getHOUSEINFO());
		
		return managementFeeService.selectFee(vo);
		
	}
	
	String payPrice = null;
	
	@PostMapping("/payMethodSelect")
	public String payMethodSelect(String price) {
		
		payPrice = price;
		
		return "myPage/payMethodSelect";
	}
	
	private IamportClient api;
	
	@PostMapping("/feeCreditCard")
	@ResponseBody
	public IamportResponse<Payment> creditCard(Model model, Locale locale, String imp_uid) throws IamportResponseException, IOException {
		System.out.println("결제중....");
		this.api = new IamportClient("3453433373716908", "efc0888a66eaa69d340e654d7ba2782e583f94ee2cd039ec3f9318a2a8a9a73fa261a5ad7df75ff5");
		
		
		return api.paymentByImpUid(imp_uid);
		
	}
	
}
