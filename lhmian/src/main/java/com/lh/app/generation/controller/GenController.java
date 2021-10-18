package com.lh.app.generation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.generation.service.GenService;
import com.lh.app.signIn.domain.MemberVO;

@Controller
public class GenController {

	@Autowired
	GenService genService;
	
	// 세대 전체 조회
	@RequestMapping("/admin/admGeneration")
	public String admGeneration(Model model) {
		model.addAttribute("list", genService.getList());
		return "admin/admGeneration";
	}
	
	// 세대별 회원 조회
	@PostMapping("/admin/familyList")
	@ResponseBody
	public List<MemberVO> familyList(@RequestBody MemberVO vo) {
		return genService.familyList(vo);
	}
	
	
}
