package com.lh.app.visit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.etc.CustomUserDetails;
import com.lh.app.visit.domain.VisitVO;
import com.lh.app.visit.service.VisitService;

@Controller
public class VisitController {

	@Autowired
	VisitService visitService;

	// 세대리스트
	@GetMapping("/visit/generation")
	public String generation(Model model, GenerationVO vo) {
		model.addAttribute("generation", visitService.generation(vo));
		return "visit/generationList";
	}

	// 세대선택, 전체조회
	@GetMapping("/no/visitList")
	public String list(Model model, VisitVO vo) {
		model.addAttribute("list", visitService.getList(vo));
		return "no/visitList";
	}

	// 등록
	@PostMapping("/no/visitInsert")
	@ResponseBody
	public String visitInsert(RedirectAttributes rttr, VisitVO vo, @AuthenticationPrincipal CustomUserDetails user) {
		vo.setVisitWriter(user.getNAME());
		vo.setWriterInfo(Integer.parseInt(user.getHOUSEINFO()));
		int n = visitService.insert(vo);
		if (n == 1) {
			rttr.addFlashAttribute("message", "등록이 완료되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "등록에 실패했습니다.");
		}
		return "redirect:/visit/visitList";
	}

	// 수정
	@PostMapping("/no/visitUpdate")
	public String update(VisitVO vo, RedirectAttributes rttr) {
		int n = visitService.update(vo);
		if (n == 1) {
			rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "수정이 실패했습니다.");
		}
		return "redirect:/no/visitList";
	}

	// 삭제
	@PostMapping("/no/visitDelete")
	public String delete(VisitVO vo, RedirectAttributes rttr) {
		int n = visitService.delete(vo);
		if (n == 1) {
			rttr.addFlashAttribute("message", "수정이 완료되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "수정이 실패했습니다.");
		}
		return "redirect:/no/visitList";
	}
}
