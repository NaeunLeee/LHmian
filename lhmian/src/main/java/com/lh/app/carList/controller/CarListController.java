package com.lh.app.carList.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.carList.domain.CarListCriteria;
import com.lh.app.carList.domain.CarListPageVO;
import com.lh.app.carList.service.CarListService;
import com.lh.app.comm.domain.PageVO;
import com.lh.app.signIn.domain.CarListVO;

@Controller
public class CarListController {

	@Autowired
	CarListService service;

	// 전체조회
	@GetMapping("/admin/admCarList")
	public String carList(Model model, @ModelAttribute("cri") CarListCriteria cri) {
		if (cri.getPreType() != null && cri.getType() != null && (cri.getPreType().equals(cri.getType()))
				&& cri.getKeyword() != null) {
			int total = service.getTotalCount(cri);
			model.addAttribute("list", service.getList(cri));
			model.addAttribute("pageMaker", new CarListPageVO(cri, total));
			model.addAttribute("type", cri.getType());
			System.out.println("1 ----------------------------------");
			System.out.println(cri.getType());
			System.out.println(cri.getPreType());
			System.out.println("------------------------------------");
			return "admin/admCarList";
		} else if ((cri.getType() != null) && cri.getKeyword().equals("")) {
			cri.setType("");
			cri.setPageNum(1);
			int total = service.getTotalCount(cri);
			model.addAttribute("list", service.getList(cri));
			model.addAttribute("pageMaker", new CarListPageVO(cri, total));
			model.addAttribute("type", cri.getType());
			System.out.println("2-----------------------------------");
			System.out.println(cri.getType());
			System.out.println(cri.getPreType());
			System.out.println("------------------------------------");
			return "admin/admCarList";
			// 타입 변환 시 페이지 초기화 조건 ok
		} else {
			cri.setPageNum(1);
			int total = service.getTotalCount(cri);
			model.addAttribute("list", service.getList(cri));
			model.addAttribute("pageMaker", new CarListPageVO(cri, total));
			model.addAttribute("type", cri.getType());
			return "admin/admCarList";
		}
	}

	// 차량 선택 삭제
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

	// 차량 선택 삭제
	@RequestMapping("/admin/deleteCar")
	@ResponseBody
	public boolean deleteUser(@RequestParam Long[] chk) throws Exception {
		for (int i = 0; i < chk.length; i++) {
			CarListVO vo = new CarListVO();
			vo.setCarNo((Long) chk[i]);

			service.delete(vo);
		}
		return true;
	}

	// 차량 등록
	@PostMapping("/admin/insertCar")
	@ResponseBody
	public int insertCar(@RequestBody CarListVO vo) {
		return service.insert(vo);
	}

	// 차량 한대 삭제
	@PostMapping("/admin/deleteOneCar")
	@ResponseBody
	public int deleteOneCar(@RequestBody CarListVO vo) {
		return service.delete(vo);
	}

}
