package com.lh.app.payment.controller;

import java.io.IOException;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.fee.domain.ManagementFeeVO;
import com.lh.app.payment.domain.PaymentCriteria;
import com.lh.app.payment.domain.PaymentPageVO;
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
	@PostMapping("/payComplete")
	public String creditCard(Model model, Locale locale, String imp_uid, @RequestParam("mfTotal") String price, PaymentVO vo, ManagementFeeVO fvo, @AuthenticationPrincipal CustomUserDetails info)
			throws IamportResponseException, IOException {
		System.out.println("결제중....");
		this.api = new IamportClient("3453433373716908",
				"efc0888a66eaa69d340e654d7ba2782e583f94ee2cd039ec3f9318a2a8a9a73fa261a5ad7df75ff5");
		fvo.setHouseInfo(info.getHOUSEINFO());
		// db insert 작업
		fvo.setMfTotal(Long.parseLong(price));
		paymentService.insert(vo);
		paymentService.update(fvo);
		model.addAttribute("uid", api.paymentByImpUid(imp_uid));
		model.addAttribute("pay", vo);
		model.addAttribute("fpay", fvo);
		return "pay/payComplete";
	}

	// 전체조회
	@RequestMapping("/myPaidList")
	public String list(@ModelAttribute("cri") PaymentCriteria cri, Model model, @AuthenticationPrincipal CustomUserDetails userId) {
		int total = paymentService.getTotalCount(cri);
		cri.setId(userId.getUsername());
		model.addAttribute("pay", paymentService.getList(cri));
		model.addAttribute("pageMaker", new PaymentPageVO(cri, total));
		return "pay/myPaidList";
	}

	// 결제취소폼(단건조회)
	@GetMapping("/cancelForm")
	@ResponseBody
	public PaymentVO deleteForm(Model model, PaymentVO vo) throws IamportResponseException, IOException {
		vo.setPrice(vo.getPrice());
		PaymentVO result = paymentService.read(vo);
		return result;
	}

	// 결제취소
	@PostMapping("/cancel")
	public String delete(Model model, PaymentVO vo, RedirectAttributes rttr) {
		RefundTicket rft = new RefundTicket();
		int result = rft.refundTicket(vo);
		vo.setPayStatus(vo.getPayStatus());
		int n = paymentService.updateStatus(vo);
		if(n == 1) {
			rttr.addFlashAttribute("message", "취소가 완료되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "취소에 실패했습니다.");
		}
		System.out.println(result);
		return "redirect:/myPaidList";
	}
}
