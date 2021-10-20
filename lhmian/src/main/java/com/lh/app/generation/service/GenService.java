package com.lh.app.generation.service;

import java.util.List;

import com.lh.app.fee.domain.ManagementFeeVO;
import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.domain.MemberVO;

public interface GenService {

	// 세대 전체 조회
	public List<MemberVO> getList();
	
	// 세대별 회원 조회
	public List<MemberVO> familyList(MemberVO vo);
	
	// 세대주 단건 조회
	public MemberVO ownerInfo(GenerationVO vo);
	
	// 세대 한건 조회
	public GenerationVO selectGen(GenerationVO vo);
	
	// 한 세대 삭제
	public int makeNull(GenerationVO vo);
	public int deleteFamily(GenerationVO vo);
	
	// 인증번호 발급/재발급
	public int verifyGen(GenerationVO vo);
	public int reVerifyGen(GenerationVO vo);
	
	// 세대별 관리비 리스트(납부, 미납 전부 조회) 10/19 윤지민
	public List<ManagementFeeVO> feeList(ManagementFeeVO vo);
	
	// 세대 존재하는지 
	public GenerationVO checkNull(MemberVO vo);
	
}
