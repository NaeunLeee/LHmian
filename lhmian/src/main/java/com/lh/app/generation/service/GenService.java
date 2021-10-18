package com.lh.app.generation.service;

import java.util.List;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.domain.MemberVO;

public interface GenService {

	// 세대 전체 조회
	public List<MemberVO> getList();
	
	// 세대별 회원조회
	public List<MemberVO> familyList(MemberVO vo);
	
	// 세대 존재 여부 확인
	public int countGen(GenerationVO vo);
}
