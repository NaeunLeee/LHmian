package com.lh.app.facility.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lh.app.facility.service.LibraryService;

@Controller
public class LibraryController {

	@Autowired
	LibraryService libService;
	
	@RequestMapping("/facility/library")
	public String library() {
		return "facility/library";
	}
	
}
