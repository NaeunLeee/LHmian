package com.lh.app.vote.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String voteSelect(@RequestParam("no") String voteNo, Model model) {
		
		VoteVO vo = new VoteVO();
		
		vo.setVoteNo(Integer.parseInt(voteNo));
		
		model.addAttribute("content", voteService.voteSelect(vo));
		model.addAttribute("hanjul", voteService.voteSelectTitle(vo));
		
		return "resident/voteSelect";
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
}
