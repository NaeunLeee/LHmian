package com.lh.app.vote.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lh.app.signIn.etc.CustomUserDetails;
import com.lh.app.vote.domain.HouseVoteInfoVO;
import com.lh.app.vote.domain.VoteContentsVO;
import com.lh.app.vote.domain.VoteVO;
import com.lh.app.vote.service.VoteService;

@Controller
public class VoteController {
	
	@Autowired VoteService voteService;
	
	@GetMapping("/resident/voteList")
	public String voteList(Model model) {
		
		model.addAttribute("list", voteService.voteList());
		
		return "resident/voteList";
	}
	
	@GetMapping("/resident/vote")
	public String voteSelect(@RequestParam("no") String voteNo, 
			Model model, @AuthenticationPrincipal CustomUserDetails info) {
	
		VoteVO vo = new VoteVO();
		
		vo.setVoteNo(Integer.parseInt(voteNo));
		vo.setHouseInfo(info.getHOUSEINFO());
		
		model.addAttribute("content", voteService.voteSelect(vo));
		model.addAttribute("hanjul", voteService.voteSelectTitle(vo));
		
		VoteVO vo2 = voteService.voteParticipate(vo);
		
		//end가 1이면 투표 결과보는 페이지
		
		if (vo2 == null) {
			model.addAttribute("participate", "no");
		} else {
			model.addAttribute("participate", "yes");
		}
		
		return "resident/voteSelect";
	}
	
	@GetMapping("/resident/voteResult")
	public void voteResult(@RequestParam("no") String voteNo, Model model) {
		
		int no = Integer.parseInt(voteNo);

		List<VoteContentsVO> list = new ArrayList<VoteContentsVO>();
		
		for (int i=1; i < voteService.voteContentsCount(no) + 1; i++) {
			VoteContentsVO vo = new VoteContentsVO();
			vo.setVoteNo(no);
			vo.setVcQuesNo(i);
			vo = voteService.voteResult(vo);
			System.out.println(vo);
			list.add(vo);
		}

		model.addAttribute("list", list);
		
	}
	
	@GetMapping("/admin/admVoteList")
	public String admVoteList(Model model) {
		
		model.addAttribute("list", voteService.voteList());
		
		return "admin/admVoteList";
	}
	
	@GetMapping("/admin/voteForm")
	public String admVoteForm() {
		
		return "admin/admVoteForm";
	}
	
	@PostMapping("/admin/voteCreate")
	public String voteCreate(VoteVO vo, VoteContentsVO vcvo) {

		int result = 0;
		
		String str = vcvo.getVcContent();
		
		String[] arr = str.split(",");
		
		//글은 한개만 등록
		voteService.voteInsert(vo);
		
		//문항은 문항 개수만큼 db에 등록
		for (int i=0; i < arr.length; i++) {
			vcvo.setVcQuesNo(i+1);
			vcvo.setVcContent(arr[i]);
			
			result += voteService.voteContentsInsert(vcvo);
		}
		
		if (arr.length != result) {
			System.out.println("들어온 문항 개수와 db에 들어간 문항 개수가 다름");
		} else {
			System.out.println("vc insert 완료");
		}
		
		return "redirect:admVoteList";
	}
	
	@PostMapping("/resident/vote") 
	public String vote(HouseVoteInfoVO vo, @AuthenticationPrincipal CustomUserDetails info){
		
		vo.setHouseInfo(info.getHOUSEINFO());
		
		int result = voteService.insertVoteInfo(vo);
		
		VoteVO vvo = new VoteVO();
		
		vvo.setVoteNo(vo.getVoteNo());
		
		int plus = voteService.voteCountUpdate(vvo);
		
		System.out.println(result + "건 등록");
		System.out.println(plus + "COUNT 증가");
		
		return "redirect:voteList";
	}
}
