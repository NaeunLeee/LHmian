package com.lh.app.visit.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.etc.CustomUserDetails;
import com.lh.app.visit.domain.GenerationCriteria;
import com.lh.app.visit.domain.GenerationPageVO;
import com.lh.app.visit.domain.VisitVO;
import com.lh.app.visit.service.VisitService;

@Controller
public class VisitController {

	@Autowired
	VisitService visitService;

	// 세대리스트
	@GetMapping("/visit/generation")
	public String generation(Model model, @ModelAttribute("cri") GenerationCriteria cri) {
		int total = visitService.getOldCount(cri);
		model.addAttribute("oldListCnt", new GenerationPageVO(cri, total));
		return "visit/generationList";
	}

	// 세대리스트 - ajax로 10개씩 불러오기
	@RequestMapping(value = "/visit/generation", method = RequestMethod.POST)
	@ResponseBody
	public List<GenerationVO> generation(Model model, @RequestParam Map<String, String> param) throws Exception {
		Map<String, String> searchParam = new HashMap<String, String>();
		searchParam.put("startIndex", param.get("startIndex"));
		searchParam.put("endIndex", param.get("endIndex"));
		searchParam.put("m_id", param.get("m_id"));
		// 인덱스 범위에 해당하는 list 조회
		return visitService.generation(searchParam);

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
	@PostMapping("/visitDelete")
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
