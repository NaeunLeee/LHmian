package com.lh.app.vote.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VoteController {
	@GetMapping("/voteList")
	public String voteList() {
		
		
		
		return "resident/voteList";
	}
}
