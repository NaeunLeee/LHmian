package com.lh.app.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.notice.domain.NoticeCriteria;
import com.lh.app.notice.domain.NoticePageVO;
import com.lh.app.notice.domain.NoticeVO;
import com.lh.app.notice.service.NoticeService;

@Controller
//@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	NoticeService service;

	// 전체조회
	@GetMapping("/office/noticeList")
	public String noticeList(Model model, @ModelAttribute("cri") NoticeCriteria cri) {
		int total = service.getTotalCount(cri);
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new NoticePageVO(cri, total));
		return "office/noticeList";
	}

	// 관리자 전체조회
	@RequestMapping("/admin/admNoticeList")
	public String admNoticeList(Model model, @ModelAttribute("cri") NoticeCriteria cri) {
		int total = service.getTotalCount(cri);
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new NoticePageVO(cri, total));
		return "admin/admNoticeList";
	}

	// 단건조회
	@GetMapping("/office/noticeSelect")
	public String noticeRead(NoticeVO vo, Model model) {
		model.addAttribute("notice", service.read(vo));
		return "office/noticeSelect";
	}

	// 관리자 단건조회
	@GetMapping("/admin/admNoticeSelect")
	public String admNoticeRead(NoticeVO vo, Model model, @ModelAttribute("cri") NoticeCriteria cri) {
		model.addAttribute("notice", service.read(vo));
		return "admin/admNoticeSelect";
	}

	// 관리자 글삭제
	@PostMapping("/admin/admNoticeDelete")
	@ResponseBody
	public boolean admNoticeDelete(NoticeVO vo) {
		service.delete(vo);
		return true;
	}

	// 등록 폼
	@GetMapping("/admin/admNoticeInsert")
	public String insertForm() {
		return "admin/admNoticeInsert";
	}

	// 등록
	@PostMapping("/admin/admNoticeInsert")
	public String admNoticeInsert(NoticeVO vo, RedirectAttributes rttr) {
		service.insert(vo);
		rttr.addFlashAttribute("message", "등록 성공했습니다.");
		return "redirect:/admin/admNoticeList";
	}

	// 관리자 공지사항 수정
	@ResponseBody
	@PostMapping("/admin/admNoticeUpdate")
	public String update(@RequestBody NoticeVO vo) {
		// System.out.println(vo.getNoticeTitle() + "/" + vo.getNoticeContent());
		service.update(vo);
		return "";
	}
}