package com.lh.app.carList.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@GetMapping("admCarList")
	public String carList(Model model, @ModelAttribute("cri") CarListCriteria cri) {
		int total = service.getTotalCount(cri);
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new CarListPageVO(cri, total));
		return "admin/admCarList";
	}
	
	//차량 선택 삭제
//	@RequestMapping("/deleteCar")
//	@ResponseBody
//	public boolean deleteUser(@RequestParam int[] chk) throws Exception {
//		for (int i=0; i<chk.length; i++) {
//			CarListVO vo = new CarListVO();
//			vo.setCarNo((long)chk[i]);
//			
//			service.delete(vo);
//		}
//		return true;
//	}
	
	
	//차량 선택 삭제
		@RequestMapping("/deleteCar")
		@ResponseBody
		public boolean deleteUser(@RequestParam Long[] chk) throws Exception {
			for (int i=0; i<chk.length; i++) {
				CarListVO vo = new CarListVO();
				vo.setCarNo((Long)chk[i]);
				
				service.delete(vo);
			}
			return true;
		}
}
