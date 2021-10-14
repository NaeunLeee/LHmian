package com.lh.app.admin.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.admin.domain.EventVO;
import com.lh.app.admin.service.EventService;
import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.domain.PageVO;


@Controller
public class EventController {

	@Autowired
	EventService eventService;

	// 스케줄폼
	@RequestMapping("admin/admSked")
		public String admSked() {
			return "admin/admSked";
		}
	
	// 스케줄폼
	@GetMapping("/admin/admSchedule")
	public String admSchedule() {
		return "/admin/admSchedule";
	}
	
	// 10/13 스케줄(schedule) 삭제

	// 등록
	@PostMapping("/admin/insertEvent")
	@ResponseBody
	public EventVO insertevent(@RequestBody EventVO vo) {
		if (vo.isAllDay() == false) {
			vo.setResult(0);
		} else {
			vo.setResult(1);
		}
		eventService.insert(vo);
		return vo;
	}

	// 조회
	@GetMapping("admin/getList")
	@ResponseBody
	public List<EventVO> getList(EventVO vo) {

		if (vo.getResult() == 0) {
			vo.setAllDay(false);
		} else {
			vo.setAllDay(true);
		}
		return eventService.getList();
	}
	
	@GetMapping("office/getList")
	@ResponseBody
	public List<EventVO> getListoffice(EventVO vo) {

		if (vo.getResult() == 0) {
			vo.setAllDay(false);
		} else {
			vo.setAllDay(true);
		}
		return eventService.getList();
	}
	
	
	
	@RequestMapping("admin/admSkedview")
	public String getListview(Model model,Criteria cri) {
		int total = eventService.getTotalCount(cri);
		model.addAttribute("list", eventService.getListview(cri));
		model.addAttribute("pageMaker", new PageVO(cri, total));
		return "admin/admSkedview";
	}
	
	@RequestMapping("office/schedule")
	public String schedule(Model model,Criteria cri) {
		return "office/schedule";
	}
	
	// 수정
	@PostMapping("/admin/updateEvent")
	@ResponseBody
	public EventVO updateEvent(@RequestBody EventVO vo) {
		if (vo.isAllDay() == false) {
			vo.setResult(0);
		} else {
			vo.setResult(1);
		}
		eventService.update(vo);
		return vo;
	}

	// 삭제
	@PostMapping("/admin/deleteEvent")
	@ResponseBody
	public boolean deleteEvent(@RequestParam Long eventNo) {
		System.out.println(eventNo);
		int r = eventService.delete(eventNo);
		return r == 1 ? true : false;
	}

}
