package com.lh.app.opeInfo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.opeInfo.domain.OpeInfoCriteria;
import com.lh.app.opeInfo.domain.OpeInfoPageVO;
import com.lh.app.opeInfo.domain.OpeInfoVO;
import com.lh.app.opeInfo.service.OpeInfoService;

import lombok.extern.java.Log;

@Controller
//@RequestMapping("/introduce/*")
@Log
public class OpeInfoController {

	
	@Autowired
	OpeInfoService opeInfoService;
	
	// 전체 조회
	@GetMapping("/introduce/opeInfoList")
	public String opeInfoList(Model model, @ModelAttribute("cri") OpeInfoCriteria cri) {
		int total = opeInfoService.getTotalCount(cri);
		model.addAttribute("list", opeInfoService.getList(cri));
		model.addAttribute("pageMaker", new OpeInfoPageVO(cri, total));
		return "introduce/opeInfoList";
	}
	
	// 단건 조회
	@GetMapping("/introduce/opeInfoSelect")
	public String opeInfoSelect(Model model, OpeInfoVO vo) {
		model.addAttribute("info", opeInfoService.read(vo));
		return "introduce/opeInfoSelect";
	}
	
	// 관리자 전체 조회
	@GetMapping("/admin/admOpeInfoList")
	public String admOpeInfoList(Model model, @ModelAttribute("cri") OpeInfoCriteria cri) {
		int total = opeInfoService.getTotalCount(cri);
		model.addAttribute("list", opeInfoService.getList(cri));
		model.addAttribute("pageMaker", new OpeInfoPageVO(cri, total));
		return "admin/admOpeInfoList";
	}
	
	// 관리자 단건 조회 (ajax로 바로 수정 가능)
	@GetMapping("/admin/admOpeInfoSelect")
	public String admOpeInfoSelect(Model model, OpeInfoVO vo, @ModelAttribute("cri") OpeInfoCriteria cri) {
		model.addAttribute("info", opeInfoService.read(vo));
		return "admin/admOpeInfoSelect";
	}
	
	// 등록 폼
	@GetMapping("/admin/admOpeInfoInsert")
	public String admOpeInfoInsertForm() {
		return "admin/admOpeInfoInsert";
	}
	
	// 등록
	@PostMapping("/admin/admOpeInfoInsert")
	public String admOpeInfoInsert(RedirectAttributes rttr, OpeInfoVO vo) {
		int n = opeInfoService.insert(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "등록이 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "등록에 실패했습니다. 다시 시도해주세요.");
		}
		
		return "redirect:/admin/admOpeInfoList";
	}
	
	// 수정
	@PostMapping("opeInfoUpdate")
	public String opeInfoUpdate(RedirectAttributes rttr, OpeInfoVO vo, @ModelAttribute("cri") OpeInfoCriteria cri) {
		int n = opeInfoService.update(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "수정이 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "수정에 실패했습니다. 다시 시도해주세요.");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/admin/admOpeInfoList";
	}
	
	// 삭제
	@PostMapping("opeInfoDelete")
	public String delete(RedirectAttributes rttr, OpeInfoVO vo, @ModelAttribute("cri") OpeInfoCriteria cri) {
		
		int n = opeInfoService.delete(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "삭제가 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "수정에 실패했습니다. 다시 시도해주세요.");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/admin/admOpeInfoList";
	}
	
	
	
	
	
}
