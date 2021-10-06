package com.lh.app.payment.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.fee.domain.ManagementFeeVO;
import com.lh.app.payment.domain.PaymentVO;
import com.lh.app.payment.service.PaymentService;
import com.lh.app.signIn.etc.CustomUserDetails;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;

@Controller
public class PaymentController {

	@Autowired
	PaymentService paymentService;

	private IamportClient api;

	// 결제정보 넘기기 및 결제완료페이지 연결

	
	/*
	 * @PostMapping("/payComplete") public String creditCard(Model model, Locale
	 * locale, String imp_uid, PaymentVO vo, ManagementFeeVO
	 * fvo, @AuthenticationPrincipal CustomUserDetails info)throws
	 * IamportResponseException, IOException { System.out.println("결제중....");
	 * this.api = new IamportClient("3453433373716908",
	 * "efc0888a66eaa69d340e654d7ba2782e583f94ee2cd039ec3f9318a2a8a9a73fa261a5ad7df75ff5"
	 * );
	 * 
	 * fvo.setHouseInfo(info.getHOUSEINFO());
	 * 
	 * // db insert 작업 System.out.println(vo); paymentService.insert(vo);
	 * paymentService.update(fvo); model.addAttribute("pay",
	 * api.paymentByImpUid(imp_uid));
	 * 
	 * return
	 * 
	 * "pay/payComplete"; }
	 */

	@PostMapping("/payComplete")
	public String creditCard(Model model, PaymentVO vo, ManagementFeeVO fvo,
			@AuthenticationPrincipal CustomUserDetails info) throws IamportResponseException, IOException {
		fvo.setHouseInfo(info.getHOUSEINFO());

		// db insert 작업
		System.out.println(fvo.getMfTotal());
		model.addAttribute("pay", paymentService.insert(vo));
		model.addAttribute("fpay", paymentService.update(fvo));
		return "pay/payComplete";
	}

	// 전체조회
	@GetMapping("/paymentList")
	public void list(PaymentVO vo, Model model) {
		model.addAttribute("pay", paymentService.getList(vo));
	}

	// 결제취소
	@PostMapping("/cancle")
	@ResponseBody
	public void delete(PaymentVO vo) {
		paymentService.delete(vo);
	}
}