package com.lh.app.fee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.domain.PageVO;
import com.lh.app.facility.service.FacService;

@Controller
public class FacController {
	
	@Autowired FacService facService;
	
	// 리스트 조회
//		@RequestMapping("commlist")
//		public String getList(Model model, @ModelAttribute("cri") Criteria cri) {
//			int total = facService.getTotalCount(cri);
//			System.out.println("cri======" + cri);
//			System.out.println(total);
//			/* model.addAttribute("list", commService.getList(cri)); */
//			model.addAttribute("pageMaker", new PageVO(cri, total));
//			return "community/commlist";
//		}
}
