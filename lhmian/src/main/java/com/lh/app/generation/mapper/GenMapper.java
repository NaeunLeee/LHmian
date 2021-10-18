package com.lh.app.generation.mapper;

import java.util.List;

import com.lh.app.signIn.domain.MemberVO;

public interface GenMapper {

	// 세대 전체 조회
	public List<MemberVO> getList();
	
	// 세대별 회원조회
	public List<MemberVO> familyList(MemberVO vo);
	
}
