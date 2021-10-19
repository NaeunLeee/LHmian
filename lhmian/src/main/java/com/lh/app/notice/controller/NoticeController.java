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

import com.lh.app.comm.domain.PageVO;
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
	// 10/19 수정 
	@GetMapping("/office/noticeList")
	public String noticeList(Model model, @ModelAttribute("cri") NoticeCriteria cri) {
		if (cri.getPreType() != null && cri.getType() != null && (cri.getPreType().equals(cri.getType()))
				&& cri.getKeyword() != null) {
			int total = service.getTotalCount(cri);
			model.addAttribute("list", service.getList(cri));
			model.addAttribute("pageMaker", new NoticePageVO(cri, total));
			model.addAttribute("type", cri.getType());
			System.out.println("1 ----------------------------------");
			System.out.println(cri.getType());
			System.out.println(cri.getPreType());
			System.out.println("------------------------------------");
			return "office/noticeList";
			
		} else if((cri.getType() != null && cri.getKeyword().equals(""))) {
			cri.setType("");
			cri.setPageNum(1);
			int total = service.getTotalCount(cri);
			model.addAttribute("list", service.getList(cri));
			model.addAttribute("pageMaker", new NoticePageVO(cri, total));
			model.addAttribute("type", null);
			System.out.println("3 ---------------------------------");
			System.out.println(cri.getType());
			System.out.println(cri.getPreType());
			System.out.println("-----------------------------------");
			return "office/noticeList";
		}
		 else {
			cri.setPageNum(1);
			int total = service.getTotalCount(cri);
			model.addAttribute("list", service.getList(cri));
			model.addAttribute("pageMaker", new NoticePageVO(cri, total));
			model.addAttribute("type", cri.getType());
			
			System.out.println("5."+cri.getType());
			System.out.println("6."+cri.getPreType());

			return "office/noticeList";
		}
		
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

	// 관리자 글삭제 (ajax)
//	@PostMapping("/admin/admNoticeDelete")
//	@ResponseBody
//	public boolean admNoticeDelete(NoticeVO vo) {
//		service.delete(vo);
//		return true;
//	}
	
	// 관리자 글삭제 (ajax 없이 페이지로) (10/10 추가 - 이나은)
	@PostMapping("/admin/admNoticeDelete")
	public String delete(NoticeVO vo, RedirectAttributes rttr, @ModelAttribute("cri") NoticeCriteria cri) {
		
		int n = service.delete(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "삭제가 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "삭제에 실패했습니다. 다시 시도해주세요.");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/admin/admNoticeList";
		
	}

	// 등록 폼
	@GetMapping("/admin/admNoticeInsert")
	public String insertForm() {
		return "admin/admNoticeInsert";
	}

	// 등록
	@PostMapping("/admin/admNoticeInsert")
	public String admNoticeInsert(NoticeVO vo, RedirectAttributes rttr) {
		int n = service.insert(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "공지사항 한 건이 정상적으로 등록되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "다시 시도해주세요.");
		}
		
		return "redirect:/admin/admNoticeList";
	}

	// 관리자 공지사항 수정 폼
	@GetMapping("/admin/admNoticeUpdate")
	public String updateForm(NoticeVO vo, Model model) {
		model.addAttribute("notice", service.read(vo));
		return "admin/admNoticeUpdate";
	}
	
	// 관리자 공지사항 수정 (ajax 없이 페이지로) (10/10 추가 - 이나은)
	@PostMapping("/admin/admNoticeUpdate")
	public String update(RedirectAttributes rttr, NoticeVO vo) {
		int n = service.update(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "수정이 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "수정에 실패했습니다. 다시 시도해주세요.");
		}
		
		return "redirect:/admin/admNoticeList";
	}
	
	// 관리자 공지사항 수정 (ajax)
//	@ResponseBody
//	@PostMapping("/admin/admNoticeUpdate")
//	public String update(@RequestBody NoticeVO vo) {
//		// System.out.println(vo.getNoticeTitle() + "/" + vo.getNoticeContent());
//		service.update(vo);
//		return "";
//	}
}