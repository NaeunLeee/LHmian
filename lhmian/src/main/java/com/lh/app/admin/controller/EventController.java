package com.lh.app.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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

import com.lh.app.admin.domain.EventVO;
import com.lh.app.admin.service.EventService;

@Controller
public class EventController {

	@Autowired	EventService eventService;

	// 스케줄폼
	@GetMapping("admSked")
	public String admSked() {
		return "admin/admSked";
	}

	// 등록
	@PostMapping("insertEvent")
	@ResponseBody
	public EventVO insertevent(@RequestBody EventVO vo) {
		if(vo.isAllDay() == false) {
			vo.setResult(0);
		} else {
			vo.setResult(1);
		}
		eventService.insert(vo);
		return vo;
	}
	
	@GetMapping("getList")
	@ResponseBody
	public List<EventVO> getList(EventVO vo) {
		
		if(vo.getResult()==0) {
			vo.setAllDay(false);
		} else {
			vo.setAllDay(true);
		}
		return eventService.getList();
		
	}
	

}
