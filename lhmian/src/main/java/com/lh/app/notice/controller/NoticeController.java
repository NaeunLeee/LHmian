package com.lh.app.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.notice.domain.NoticeVO;
import com.lh.app.notice.service.NoticeService;

@Controller
//@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	NoticeService service;
	
	//전체조회
	@RequestMapping("/office/noticeList")
	public String list(Model model) {
		model.addAttribute("list", service.getList());
		return "office/noticeList";
	}
	
	//관리자 전체조회
	@RequestMapping("/admin/admNoticeList")
	public String admlist(Model model) {
		model.addAttribute("admlist", service.getList());
		return "admin/admNoticeList";
	}
	
	//단건조회
	@GetMapping("/office/noticeSelect")
	public String read(NoticeVO vo, Model model) {
		model.addAttribute("notice", service.read(vo));
		return "office/noticeSelect";
	}
	
	//관리자 단건조회
	@GetMapping("/admin/admNoticeSelect")
	public String admread(NoticeVO vo, Model model) {
		model.addAttribute("notice", service.read(vo));
		return "admin/noticeSelect";
	}

	//관리자 공지사항 삭제
//	@GetMapping("/delete")
//	public String delete(NoticeVO vo, RedirectAttributes rttr) {
//		int result = service.delete(vo);
//		if(result == 1) {
//			rttr.addFlashAttribute("result","success");	
//		}
//		return "redirect:/admin/admNoticeList";
//	}
//	
//	//관리자 공지사항 등록
//	@PostMapping("/insert")
//	public String insert(NoticeVO vo, ) {
//		return "redirect:/admin/admNoticeList";
//	}
//	
//	//관리자 공지사항 수정
//	@GetMapping("/update")
//	public String update(NoticeVO vo, RedirectAttributes rttr) {
//		int result = service.update(vo);
//		if(result == 1) {
//			rttr.addFlashAttribute("result", "success");
//		}
//		return "redirect:/admin/admNoticeList";
	}