package com.lh.app.visit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.signIn.etc.CustomUserDetails;
import com.lh.app.visit.domain.VisitVO;
import com.lh.app.visit.mapper.VisitMapper;

@Controller
public class VisitController {

	@Autowired VisitMapper visitService;
	
	//전체조회
	@GetMapping("/visit/visitList")
	public String list(Model model, VisitVO vo, @AuthenticationPrincipal CustomUserDetails user) {
		//int total = visitService.getTotalCount(cri);
		vo.setHouseInfo(Integer.parseInt(user.getHOUSEINFO()));
		model.addAttribute("list", visitService.getList(vo));
		//model.addAttribute("pageMaker", new VisitPageVO(cri, total));
		return "visit/visitList";
	}

	//등록
	@PostMapping("/visit/visitInsert")
	public String visitInsert(RedirectAttributes rttr, VisitVO vo) {
		int n = visitService.insert(vo);
		if (n == 1) {
			rttr.addFlashAttribute("message", "등록이 완료되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "등록에 실패했습니다.");
		}
		return "redirect:/visit/visitList";
	}
	
	//수정
	@PostMapping("/visit/visitUpdate")
	public String update(VisitVO vo, RedirectAttributes rttr) {
		int n = visitService.update(vo);
		if(n==1) {
			rttr.addFlashAttribute("message", "수정이 완료되었습니다.");			
		}else {
			rttr.addFlashAttribute("message", "수정이 실패했습니다.");
		}
		return "redirect:/visit/visitList";
	}
	//삭제
	@PostMapping("/visitDelete")
	public String delete(VisitVO vo, RedirectAttributes rttr) {
		int n =visitService.delete(vo);
		if(n==1) {
			rttr.addFlashAttribute("message", "수정이 완료되었습니다.");			
		}else {
			rttr.addFlashAttribute("message", "수정이 실패했습니다.");
		}
		return "redirect:/visit/visitList";
	}
}
