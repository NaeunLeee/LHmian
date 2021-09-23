package com.lh.app.opeInfo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.lh.app.opeInfo.domain.OpeInfoVO;
import com.lh.app.opeInfo.service.OpeInfoService;

import lombok.extern.java.Log;

@Controller
//@RequestMapping("/introduce/*")
@Log
public class OpeInfoController {

	
	@Autowired
	OpeInfoService opeInfoService;
	
	// 전체 조회
	@GetMapping("/introduce/opeInfoList")
	public String opeInfoList(Model model) {
		model.addAttribute("list", opeInfoService.getList());
		return "introduce/opeInfoList";
	}
	
	// 단건 조회
	@GetMapping("/introduce/opeInfoSelect")
	public String opeInfoSelect(Model model, OpeInfoVO vo) {
		model.addAttribute("info", opeInfoService.read(vo));
		return "introduce/opeInfoSelect";
	}
	
	// 관리자 전체 조회
	@GetMapping("/admin/admOpeInfoList")
	public String admOpeInfoList(Model model) {
		model.addAttribute("list", opeInfoService.getList());
		return "admin/admOpeInfoList";
	}
	
	// 관리자 단건 조회
	@GetMapping("/admin/admOpeInfoSelect")
	public String admOpeInfoSelect(Model model, OpeInfoVO vo) {
		model.addAttribute("info", opeInfoService.read(vo));
		return "admin/admOpeInfoSelect";
	}
	
	// 등록 폼
	@GetMapping("/admin/admOpeInfoInsert")
	public String admOpeInfoInsertForm() {
		return "admin/admOpeInfoInsert";
	}
	
	// 등록
	@PostMapping("/admin/admOpeInfoInsert")
	public String admOpeInfoInsert(Model model, OpeInfoVO vo) {
		int n = opeInfoService.insert(vo);
		
		if (n > 0) {
			model.addAttribute("message", n + "건의 등록이 완료되었습니다!");
		}
		
		return "admin/admOpeInfoInsert";
	}
}
