package com.lh.app.comm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.comm.domain.CommVO;
import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.domain.MemPageVO;
import com.lh.app.comm.domain.PersonalCriteria;
import com.lh.app.comm.domain.PageVO;
import com.lh.app.comm.service.CommService;
import com.lh.app.comm.service.ReplyService;
import com.lh.app.signIn.etc.CustomUserDetails;

@Controller
public class CommController {

	@Autowired
	CommService commService;
	@Autowired
	ReplyService replyService;

	// 10/06 수정 ----------------------------------------------------------------------------------------
	// 회원 게시글 리스트 조회
	@RequestMapping("myCommunityList")
	public String getListno(Model model, @AuthenticationPrincipal CustomUserDetails customUserDetails,
			PersonalCriteria cri) {
		String id = customUserDetails.getUsername();
		cri.setId(id);
		int total = commService.getCntMember(cri);
		model.addAttribute("list", commService.getListno(cri));
		model.addAttribute("pageMaker", new MemPageVO(cri, total));
		return "myPage/myCommunityList";
	}

	// 회원 댓글 리스트 조회
	@RequestMapping("myComment")
	public String getComment(Model model, @AuthenticationPrincipal CustomUserDetails customUserDetails, @ModelAttribute("cri") Criteria cri) {
		int total = commService.getCntCmt(cri);
		String id = customUserDetails.getUsername();
		cri.setId(id);
		System.out.println("cri======" + cri);
		System.out.println(total);
		model.addAttribute("list", commService.getComment(cri));
		model.addAttribute("pageMaker", new PageVO(cri, total));
		return "myPage/myComment";
	}

	// 10/06 수정 끝----------------------------------------------------------------------------------------
	
	// 리스트 조회
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

	// 단건 조회
	@GetMapping("get") // 수정폼
	public String get(@RequestParam("commNo") Long commNo, Model model) { // 10/03 criteria 삭제
		CommVO vo = new CommVO();
		commService.viewCount(commNo);
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
	@PutMapping("updateComm")
	@ResponseBody
	public CommVO updateComm(@RequestBody CommVO vo) {
		commService.update(vo);
		return vo;
	}

	// 삭제
	@PostMapping("deleteComm")
	@ResponseBody // post 자체가 ajax 함수이기 때문에 이를 생각하고 코딩할 것
	public boolean deleteComm(Long commNo) {
		System.out.println(commNo);
		commService.remove(commNo);
		return true;
	}

}
