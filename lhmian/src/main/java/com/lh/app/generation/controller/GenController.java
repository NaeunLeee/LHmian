package com.lh.app.generation.controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.fee.domain.ManagementFeeVO;
import com.lh.app.generation.service.GenService;
import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.domain.MemberVO;

@Controller
public class GenController {

	@Autowired
	GenService genService;
	
	// 세대 전체 조회
	@RequestMapping("/admin/admGeneration")
	public String admGeneration(Model model) {
		model.addAttribute("list", genService.getList());
		return "admin/admGeneration";
	}
	
	// 세대별 회원 조회
	@PostMapping("/admin/familyList")
	@ResponseBody
	public List<MemberVO> familyList(@RequestBody MemberVO vo) {
		return genService.familyList(vo);
	}
	
	// 세대주 정보 조회 (SMS 전송 위해..)
	@PostMapping("/admin/ownerInfo")
	@ResponseBody
	public MemberVO ownerInfo(@RequestBody GenerationVO vo) {
		return genService.ownerInfo(vo);
	}
	
	// 세대 단건 조회
	@PostMapping("/admin/selectGen")
	@ResponseBody
	public GenerationVO selectGen(@RequestBody GenerationVO vo) {
		return genService.selectGen(vo);
	}
	
	// 세대 삭제
	@PostMapping("/admin/deleteGen")
	@ResponseBody
	public boolean deleteGen(@RequestParam String[] chk) {
		
		for (int i=0; i<chk.length; i++) {
			GenerationVO genVO = new GenerationVO();
			genVO.setHouseInfo(Long.parseLong(chk[i]));
			genService.deleteFamily(genVO);
			genService.makeNull(genVO);
		}
		
		return true;
	}
	
	// 인증번호 난수 생성
	public String makeRandomKey() {
		
	    Random rand  = new Random();
        String key1 = "";
        String key2 = "";
        String key3 = "";
        String key4 = "";
        String result = "";
        
        for(int i=0; i<3; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            key1 += ran;
        }
        for(int i=0; i<3; i++) {
        	String ran = Integer.toString(rand.nextInt(10));
        	key2 += ran;
        }
        for(int i=0; i<3; i++) {
        	String ran = Integer.toString(rand.nextInt(10));
        	key3 += ran;
        }
        for(int i=0; i<3; i++) {
        	String ran = Integer.toString(rand.nextInt(10));
        	key4 += ran;
        }
        
        result = key1 + "." + key2 + "." + key3 + "." + key4;
        
		return result;
		
	}
	
	// 인증번호 발급
	@PostMapping("/admin/verifyGen")
	@ResponseBody
	public int verifyGen(@RequestBody GenerationVO vo) {
		
		String authKey = makeRandomKey();
		String miniKey = makeRandomKey();
		
		vo.setAuthKey(authKey);
		vo.setMiniKey(miniKey);
		
		return genService.verifyGen(vo);
	}
	
	// 인증번호 재발급
	@PostMapping("/admin/reVerifyGen")
	@ResponseBody
	public int reVerifyGen(@RequestBody GenerationVO vo) {
		
		String authKey = makeRandomKey();
		String miniKey = makeRandomKey();
		
		vo.setAuthKey(authKey);
		vo.setMiniKey(miniKey);
		
		return genService.reVerifyGen(vo);
	}
	
	// 세대별 관리비 리스트(납부, 미납 전부 조회) 10/19 윤지민
	@PostMapping("/admin/feeList")
	@ResponseBody
	public List<ManagementFeeVO> feeList(@RequestBody ManagementFeeVO vo) {
		return genService.feeList(vo);
	}
	
}
