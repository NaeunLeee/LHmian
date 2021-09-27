package com.lh.app.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.member.domain.MemberCriteria;
import com.lh.app.member.domain.MemberPageVO;
import com.lh.app.member.service.MemberService;
import com.lh.app.signIn.domain.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	//전체조회
	@GetMapping("/admin/admMemberList")
	public String memberList(Model model, @ModelAttribute("cri") MemberCriteria cri) {
	int total = service.getTotalCount(cri);
	model.addAttribute("list", service.getList(cri));
	model.addAttribute("pageMaker", new MemberPageVO(cri, total));
	return "admin/admMemberList";
	}
	
	//단건조회
	
	/*
	 * //회원삭제
	 * 
	 * @PostMapping("/admin/admMemberDelete")
	 * 
	 * @ResponseBody public boolean delete(MemberVO vo) { service.delete(vo); return
	 * true; }
	 */
	
	//회원삭제
	
	/*
	 * @PostMapping("/admin/admMemberDelete")
	 * 
	 * @ResponseBody public delete(MemberVO vo) { service.delete(vo); return true; }
	 */
	 
}
