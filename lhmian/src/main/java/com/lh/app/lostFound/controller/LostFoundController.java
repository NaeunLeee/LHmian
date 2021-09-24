package com.lh.app.lostFound.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.lostFound.domian.LostFoundVO;
import com.lh.app.lostFound.service.LostFoundService;

@Controller
@RequestMapping("/itemLost/*")
public class LostFoundController {

	@Autowired LostFoundService lostFoundService;
	
	//전체조회
	@GetMapping("/lostList")
	public void list(LostFoundVO vo, Model model) throws IOException {
		model.addAttribute("lost", lostFoundService.getList(vo));
	}
	
	
	//등록페이지
	@GetMapping("register")
	public void registerForm() {
		
	}
	//등록처리
	@PostMapping("register")
	public String register(LostFoundVO vo, RedirectAttributes rttr) {
		lostFoundService.insert(vo);
		rttr.addFlashAttribute("result", vo.getLostNo());
		return "redirect:/lost/list";
	}
	//수정
	@PostMapping("/modify")
	public String modify(LostFoundVO vo, RedirectAttributes rttr) {
		int result = lostFoundService.update(vo);
		if(result == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/lost/list";
	}
	
	//삭제
	@PostMapping("/delete")
	public String delete(LostFoundVO vo, RedirectAttributes rttr) {
		int result = lostFoundService.delete(vo);
		if(result == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/itemLost/list";
	}
}
