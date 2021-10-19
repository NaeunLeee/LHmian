package com.lh.app.generation.service;

import java.util.List;

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
	
	// 한 세대 Null로 리셋
	public int makeNull(GenerationVO vo);
	
	// 인증번호 발급/재발급
	public int verifyGen(GenerationVO vo);
	public int reVerifyGen(GenerationVO vo);
	
}
