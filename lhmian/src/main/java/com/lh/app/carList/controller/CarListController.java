package com.lh.app.carList.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.carList.domain.CarListCriteria;
import com.lh.app.carList.domain.CarListPageVO;
import com.lh.app.carList.service.CarListService;
import com.lh.app.signIn.domain.CarListVO;

@Controller
public class CarListController {

	@Autowired
	CarListService service;
	
	//전체조회
	@GetMapping("/admin/admCarList")
	public String carList(Model model, @ModelAttribute("cri") CarListCriteria cri) {
		int total = service.getTotalCount(cri);
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new CarListPageVO(cri, total));
		return "admin/admCarList";
	}
	
	//차량삭제
	@PostMapping("/admin/admCarListDelete")
	@ResponseBody
	public boolean delete(CarListVO vo) {
		service.delete(vo);
		return true;
	}
}
