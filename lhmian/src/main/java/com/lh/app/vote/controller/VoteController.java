package com.lh.app.vote.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.lh.app.vote.domain.VoteContentsVO;
import com.lh.app.vote.domain.VoteVO;
import com.lh.app.vote.service.VoteService;

import jdk.internal.org.jline.utils.Log;

@Controller
public class VoteController {
	
	@Autowired VoteService voteService;
	
	@GetMapping("/voteList")
	public String voteList() {
		
		
		
		return "resident/voteList";
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

		String str = vcvo.getVcContent();
		
		String[] arr = str.split(",");
		
		for (String s : arr) {
			System.out.println(s);
		}
		
		return "redirect:admVoteList";
	}
}
