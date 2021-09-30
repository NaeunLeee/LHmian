package com.lh.app.admin.controller;

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

	@Autowired
	EventService eventService;

	// 스케줄폼
	@GetMapping("admSked")
	public String admSked() {
		return "admin/admSked";
	}

	/*
	 * // 리스트 조회
	 * 
	 * @RequestMapping("eventlist") public String getList(Model model) {
	 * model.addAttribute("list", eventService.getList()); return
	 * "eventunity/eventlist"; }
	 * 
	 * // 등록
	 * 
	 * @PostMapping("insertevent") public String insertevent(@ModelAttribute("cvo")
	 * EventVO vo) { eventService.insert(vo); return "redirect:eventlist"; }
	 * 
	 * // 단건 조회
	 * 
	 * @GetMapping("get") // 수정폼 public String get(@RequestParam("eventNo") Long
	 * eventNo, Model model) { EventVO vo = new EventVO(); vo.setEventNo(eventNo);
	 * model.addAttribute("list", eventService.read(vo)); return "eventunity/get"; }
	 * 
	 * // 수정
	 * 
	 * @PutMapping("updateevent")
	 * 
	 * @ResponseBody public EventVO updateevent(@RequestBody EventVO vo) {
	 * eventService.update(vo); return vo; }
	 * 
	 * // 삭제
	 * 
	 * @PostMapping("deleteevent")
	 * 
	 * @ResponseBody // post 자체가 ajax 함수이기 때문에 이를 생각하고 코딩할 것 public boolean
	 * deleteevent(Long eventNo) { System.out.println(eventNo);
	 * eventService.remove(eventNo); return true; }
	 */

}
