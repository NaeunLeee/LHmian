package com.lh.app.signIn.service;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.domain.MemberVO;

public interface SignInService {
	//id 중복체크
	public int idCheck(MemberVO vo);	
	
	//세대원 인증 키 확인
	public GenerationVO authKey(GenerationVO vo);
	
	//회원가입. 회원 테이블에 회원정보 등록
	public int insert(MemberVO vo);
}
