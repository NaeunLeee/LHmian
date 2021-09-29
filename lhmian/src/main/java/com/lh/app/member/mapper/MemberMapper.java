package com.lh.app.member.mapper;

import java.util.List;

import com.lh.app.member.domain.MemberCriteria;
import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.etc.CustomUserDetails;

public interface MemberMapper {

	//전체조회
	public List<MemberVO> getList(MemberCriteria cri);
	public int getTotalCount(MemberCriteria cri);
	
	/*
	 * //회원승인 public int update(MemberVO vo);
	 */

	// 0928 추가
	//단건조회
	public MemberVO read(MemberVO vo);
	
	//0929 윤지민 스프링 시큐리티 로그인 커스터마이징 추가
	public CustomUserDetails selectUserById(String username);
	
	//회원삭제
	public int delete(MemberVO vo);
}
