package com.lh.app.introduce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class introduceController {

	@RequestMapping("/introduce/myApt")
	public String myApt() {
		return "introduce/myApt";
	}
	
	@RequestMapping("/introduce/introduce")
	public String introduce() {
		return "introduce/introduce";
	}
	
	@RequestMapping("/introduce/arrangement")
	public String arrangement() {
		return "introduce/arrangement";
	}
	
	@RequestMapping("/introduce/phaseDiagram")
	public String phaseDiagram() {
		return "introduce/phaseDiagram";
	}
	
	@RequestMapping("/introduce/map")
	public String map() {
		return "introduce/map";
	}
}
