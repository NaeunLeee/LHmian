package com.lh.app.facility.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lh.app.facility.domain.FacCriteria;
import com.lh.app.facility.domain.FacPageVO;
import com.lh.app.facility.domain.FacVO;
import com.lh.app.facility.service.FacService;
import com.lh.app.signIn.etc.CustomUserDetails;

//10/06 추가
@Controller
public class FacController {
	
	@Autowired FacService facService;
	
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
}
