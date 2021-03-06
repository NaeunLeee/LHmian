package com.lh.app.member.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

import com.lh.app.carList.service.CarListService;
import com.lh.app.generation.service.GenService;
import com.lh.app.member.domain.AdmMemberCri;
import com.lh.app.member.domain.AdmMemberPageVO;
import com.lh.app.member.domain.MemberInfoVO;
import com.lh.app.member.service.MemberService;
import com.lh.app.signIn.domain.CarListVO;
import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.etc.CustomUserDetails;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	@Autowired
	CarListService carService;
	@Autowired
	GenService genService;

	// 전체조회 (기존..)
//	@GetMapping("/admin/admMemberList")
//	public String memberList(Model model, @ModelAttribute("cri") MemberCriteria cri) {
//		int total = service.getTotalCount(cri);
//		model.addAttribute("list", service.getList(cri));
//		model.addAttribute("pageMaker", new MemberPageVO(cri, total));
//		return "admin/admMemberList";
//	}

	// 전체조회 (10/12 수정: 이나은)
	@GetMapping("/admin/admMemberList")
	public String memberList(Model model, @ModelAttribute("cri") AdmMemberCri cri) {
		if (cri.getType() == "" && cri.getPreType() == null) {
			int total = service.getTotalCount(cri);
			model.addAttribute("list", service.getList(cri));
			model.addAttribute("pageMaker", new AdmMemberPageVO(cri, total));
			model.addAttribute("option", cri.getType());
			return "admin/admMemberList";
		} else if ((cri.getPreType() != null && cri.getType() != null) && (cri.getPreType().equals(cri.getType()))) {
			int total = service.getTotalCount(cri);
			model.addAttribute("list", service.getList(cri));
			model.addAttribute("pageMaker", new AdmMemberPageVO(cri, total));
			model.addAttribute("type", cri.getType());

			System.out.println("3." + cri.getType());
			System.out.println("4." + cri.getPreType());

			return "admin/admMemberList";
		} else {
			cri.setPageNum(1);
			int total = service.getTotalCount(cri);
			model.addAttribute("list", service.getList(cri));
			model.addAttribute("pageMaker", new AdmMemberPageVO(cri, total));
			model.addAttribute("type", cri.getType());

			System.out.println("5." + cri.getType());
			System.out.println("6." + cri.getPreType());

			return "admin/admMemberList";
		}
	}

	// 단건조회
	@GetMapping("myInfo")
	public String myInfo(Model model, MemberInfoVO vo, @AuthenticationPrincipal CustomUserDetails customUserDetails) {
		String id = customUserDetails.getUsername();
		vo.setId(id);
		model.addAttribute("car", service.getListcar(id));
		model.addAttribute("info", service.read(vo));
		return "myPage/myInfo";
	}

	@PutMapping("updateCar")
	@ResponseBody
	public MemberInfoVO update(@RequestBody MemberInfoVO vo) { // RequestBody 필요
		System.out.println(vo.toString());
		service.updateCar(vo);
		return vo;
	}

	@PostMapping("admin/deleteUser")
	@ResponseBody
	public boolean deleteUser(@RequestParam String[] chk) throws Exception { // json type을 이용하려면 Requestbody룰 이용하여야한다.
		// 삭제할 사용자 ID마다 반복해서 사용자 삭제
		for (int i = 0; i < chk.length; i++) {
			MemberVO vo = new MemberVO();
			vo.setId(chk[i]);

			service.delete(vo);
		}
		// 목록 페이지로 이동
		return true;
	}

	@RequestMapping("updatePw")
	@ResponseBody
	public MemberInfoVO updatePw(@RequestBody MemberInfoVO vo,
			@AuthenticationPrincipal CustomUserDetails customUserDetails) {
		String id = customUserDetails.getUsername();
		String pw = customUserDetails.getPassword();
		if (encoder.matches(vo.getPassword(), pw)) {
			vo.setId(id);
			vo.setPassword(encoder.encode(vo.getNewpw()));
			service.updatePw(vo);
		}
		return vo;
	}

	@PutMapping("updatePhone")
	@ResponseBody
	public MemberInfoVO updatePhone(@RequestBody MemberInfoVO vo,
			@AuthenticationPrincipal CustomUserDetails customUserDetails) {

		String id = customUserDetails.getUsername();
		vo.setId(id);
		System.out.println(vo.toString());
		service.updatePhone(vo);
		return vo;
	}

	// sms 전송 (10/12 추가: 이나은)
	@PostMapping("/admin/sendSms")
	@ResponseBody
	public Long sendKey(@RequestBody List<HashMap<String, String>> list) {
		return service.smsAPI(list);
	}

	// position 수정 (10/13 추가: 이나은)
	@PostMapping("/admin/updatePosition")
	@ResponseBody
	public int updatePosition(@RequestBody MemberInfoVO vo) {
		return service.updatePosition(vo);
	}

	// 차량 조회 (10/13 추가: 이나은)
	@PostMapping("/admin/carByHouseInfo")
	@ResponseBody
	public List<CarListVO> carByHouseInfo(@RequestBody MemberInfoVO vo) {
		return carService.carByHouseInfo(vo);
	}

	// 전체 건수 ajax (10/14 추가: 이나은)
	@PostMapping("/admin/countByHouseInfo")
	@ResponseBody
	public int memberTotal(@RequestBody MemberInfoVO vo) {
		return service.countByHouseInfo(vo);
	}
	
	// 회원 한명 삭제 (10/20 추가: 이나은)
	@PostMapping("/admin/deleteMember")
	@ResponseBody
	public boolean deleteMember(@RequestBody MemberVO vo) {
		
		boolean result = false;
		
		int n = service.delete(vo);
		
		if (n > 0) {
			// 한 세대의 회원이 모두 삭제되었을 때, Generation 테이블의 한 행 리셋
			GenerationVO genVO = new GenerationVO();
			genVO = genService.checkNull(vo);
			if (genVO != null) {
				genService.makeNull(genVO);
			}
			
			result = true;
		} 
		
		return result;
	}

}
