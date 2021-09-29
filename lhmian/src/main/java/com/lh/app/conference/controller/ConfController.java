package com.lh.app.conference.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.conference.domain.ConfCriteria;
import com.lh.app.conference.domain.ConfPageVO;
import com.lh.app.conference.domain.ConfVO;
import com.lh.app.conference.service.ConfService;

@Controller
public class ConfController {

	@Autowired
	ConfService confService;
	
	// 전체 조회
	@GetMapping("/resident/confList")
	public String confList(Model model, @ModelAttribute("cri") ConfCriteria cri) {
		int total = confService.getTotalCount(cri);
		model.addAttribute("list", confService.getList(cri));
		model.addAttribute("pageMaker", new ConfPageVO(cri, total));
		return "resident/confList";
	}
	
	// 단건 조회
	@GetMapping("/resident/confSelect")
	public String confSelect(Model model, ConfVO vo, @ModelAttribute("cri") ConfCriteria cri) {
		model.addAttribute("conf", confService.read(vo));
		return "resident/confSelect";
	}
	
	// 등록 폼
	@GetMapping("/resident/confInsert")
	public String confInsertForm() {
		return "resident/confInsert";
	}
	
	// 등록
	@PostMapping("/resident/confInsert")
	public String confInsert(RedirectAttributes rttr, ConfVO vo) {
		int n = confService.insert(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "등록이 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "등록에 실패했습니다. 다시 시도해주세요.");
		}
		
		return "redirect:/resident/confList";
	}
	
	// 수정
	@PostMapping("/resident/confUpdate")
	@ResponseBody
	public ConfVO confUpdate(@RequestBody ConfVO vo) {
		confService.update(vo);
		return confService.read(vo);
	}
	
	// 삭제
	@PostMapping("/resident/confDelete")
	public String delete(RedirectAttributes rttr, ConfVO vo, @ModelAttribute("cri") ConfCriteria cri) {
		int n = confService.delete(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "삭제가 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "삭제에 실패했습니다. 다시 시도해주세요.");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/resident/confList";
	}
	
	
}