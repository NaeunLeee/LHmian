package com.lh.app.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.comm.domain.ReplyVO;
import com.lh.app.member.domain.MemberCriteria;
import com.lh.app.member.domain.MemberInfoVO;
import com.lh.app.member.domain.MemberPageVO;
import com.lh.app.member.service.MemberService;
import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.etc.CustomUserDetails;

@Controller
public class MemberController {

	@Autowired
	MemberService service;

	// 전체조회
	@GetMapping("admMemberList")
	public String memberList(Model model, @ModelAttribute("cri") MemberCriteria cri) {
		int total = service.getTotalCount(cri);
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new MemberPageVO(cri, total));
		return "admin/admMemberList";
	}

	// 단건조회
	// 10/04 추가
	@GetMapping("myInfo")
	public String myInfo(Model model, MemberInfoVO vo, @AuthenticationPrincipal CustomUserDetails customUserDetails) {
		String id = customUserDetails.getUsername();
		vo.setId(id);
		model.addAttribute("car",service.getListcar(id));
		model.addAttribute("info", service.read(vo));
		return "myPage/myInfo";
	}
	
	//10/04 19시 이후 커밋
	@PutMapping("updateCar") // put, delete : 파라미터 json만 가능 -> { id:100, pw:"111", name:"choi"}
	@ResponseBody
	public MemberInfoVO update(@RequestBody MemberInfoVO vo) { // RequestBody 필요
		System.out.println(vo.toString());
		service.updateCar(vo);
		return vo;
	}
	
	

	/*
	 * //회원삭제
	 * 
	 * @PostMapping("/admin/admMemberDelete")
	 * 
	 * @ResponseBody public boolean delete(MemberVO vo) { service.delete(vo); return
	 * true; }
	 */

	// 회원삭제
	// 0928 한솔 + 광호
	// ----------------------------------------------------------------------------------------------------------------

	@RequestMapping("/deleteUser")
	@ResponseBody
	public boolean deleteUser(@RequestParam String[] chk) throws Exception { // json type을 이용하려면 Requestbody룰 이용하여야한다.
		// 삭제할 사용자 ID마다 반복해서 사용자 삭제
		for (int i = 0; i < chk.length; i++) {
			MemberVO vo = new MemberVO();
			vo.setId(chk[i]);

			service.delete(vo);
		}
		// 목록 페이지로 이동
		return true;
	}
	
	

	// ----------------------------------------------------------------------------------------------------------------

	/*
	 * @PostMapping("/admin/admMemberDelete")
	 * 
	 * @ResponseBody public delete(MemberVO vo) { service.delete(vo); return true; }
	 */

}
