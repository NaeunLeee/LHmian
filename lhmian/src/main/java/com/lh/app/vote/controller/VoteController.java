package com.lh.app.vote.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lh.app.vote.service.VoteService;

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
		
		return "admin/voteForm";
	}
}
