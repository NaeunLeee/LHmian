package com.lh.app.comm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lh.app.comm.domain.CommVO;
import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.domain.PageVO;
import com.lh.app.comm.service.CommService;

@Controller
public class CommController {

	@Autowired
	CommService commService;
	// @SessionAttributes("cri")

	@RequestMapping("commlist")
	public String getList(Model model, @ModelAttribute("cri") Criteria cri) {
		int total = commService.getTotalCount(cri);
		System.out.println("cri======" + cri);
		System.out.println(total);
		model.addAttribute("list", commService.getList(cri));
		model.addAttribute("pageMaker", new PageVO(cri, total));
		return "community/commlist";
	}

	// 등록폼
	@GetMapping("register")
	public String registerForm() {
		return "community/register";
	}

	// 등록
	@PostMapping("insertComm")
	public String insertComm(@ModelAttribute("cvo") CommVO vo) {
		commService.insert(vo);
		return "redirect:commlist";
	}

	// 단건 조회(수정페이지)
	@GetMapping("get") // 수정폼
	public String get(@RequestParam("commNo") Long commNo, Model model, @ModelAttribute("cri") Criteria cri) {
		CommVO vo = new CommVO();
		vo.setCommNo(commNo);
		model.addAttribute("list", commService.read(vo));
		return "community/get";
	}

	// 등록폼
	@GetMapping("modify")
	public String modify() {
		return "community/get";
	}

	// 수정
	@PostMapping("updateComm")
	public CommVO updateComm(@ModelAttribute("cvo") CommVO vo) {
		System.out.println(vo);
		commService.update(vo);
		return vo;
	}

	// 삭제
	@PostMapping("deleteComm")
	public String deleteComm(@RequestParam("commNo") Long commNo) {
		CommVO vo = new CommVO();
		vo.setCommNo(commNo);
		commService.remove(vo);
		return "redirect:commlist";
	}

}
