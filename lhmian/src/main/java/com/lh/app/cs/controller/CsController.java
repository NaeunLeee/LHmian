package com.lh.app.cs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.cs.domain.CsCriteria;
import com.lh.app.cs.domain.CsPageVO;
import com.lh.app.cs.domain.CsVO;
import com.lh.app.cs.domain.MyCsCriteria;
import com.lh.app.cs.service.CsService;
import com.lh.app.signIn.etc.CustomUserDetails;

@Controller
public class CsController {

	@Autowired
	CsService csService;

	// 전체 조회
	@GetMapping("/office/csList")
	public String csList(Model model, @ModelAttribute("cri") CsCriteria cri) {
		int total = csService.getTotalCount(cri);
		model.addAttribute("list", csService.getList(cri));
		model.addAttribute("pageMaker", new CsPageVO(cri, total));
		return "office/csList";
	}

	// 단건 조회
	@GetMapping("/office/csSelect")
	public String csSelect(Model model, @ModelAttribute("cri") CsCriteria cri, CsVO vo) {
		model.addAttribute("cs", csService.read(vo));
		return "office/csSelect";
	}

	// 작성자 이름으로 전체 게시글 조회
	@GetMapping("/myPage/myCsList")
	public String myCsList(Model model, @ModelAttribute("cri") MyCsCriteria cri, @AuthenticationPrincipal CustomUserDetails customUserDetails) {
		cri.setId(customUserDetails.getUsername());
		model.addAttribute("list", csService.listByWriter(cri));
		return "myPage/myCsList";
	}

	// 등록 폼
	@RequestMapping("/office/csInsert")
	public String csInsert(Model model, @AuthenticationPrincipal CustomUserDetails customUserDetails) {
		model.addAttribute("user", customUserDetails);
		return "office/csInsert";
	}

	// 등록
	@PostMapping("/office/csInsert")
	public String csInsert(RedirectAttributes rttr, CsVO vo) {
		int n = csService.insertBoard(vo);
		if (n == 1) {
			rttr.addFlashAttribute("message", "등록이 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "등록에 실패했습니다. 다시 시도해주세요.");
		}
		return "redirect:/office/csSelect?csNo=" + vo.getCsNo();
	}

	// 수정
	@PostMapping("/office/csUpdateBoard")
	@ResponseBody
	public CsVO csUpdate(@RequestBody CsVO vo) {
		csService.updateBoard(vo);
		return csService.read(vo);
	}

	// 삭제
	@PostMapping("/office/csDeleteBoard")
	public String delete(RedirectAttributes rttr, CsVO vo, @ModelAttribute("cri") CsCriteria cri) {
		int n = csService.deleteBoard(vo);
		if (n == 1) {
			rttr.addFlashAttribute("message", "삭제가 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "삭제에 실패했습니다. 다시 시도해주세요.");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());

		return "redirect:/office/csList";
	}

	// 답변등록
	@PostMapping("/office/csAnswer")
	public String csAnswerInsert(RedirectAttributes rttr, CsVO vo) {
		int n = csService.insertAnswer(vo);
		if (n == 1) {
			rttr.addFlashAttribute("message", "등록이 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "등록에 실패했습니다. 다시 시도해주세요.");
		}
		return "redirect:/office/csSelect?csNo=" + vo.getCsNo();
	}

	// 답변수정
	@PostMapping("/office/csAnswerUpdate")
	@ResponseBody
	public CsVO csAnswerUpdate(@RequestBody CsVO vo) {
		csService.updateAnswer(vo);
		return csService.read(vo);
	}

}
