package com.lh.app.signIn.mapper;

import com.lh.app.signIn.domain.MemberVO;

public interface SignInMapper {
	//id 중복체크
	public int idCheck(MemberVO vo);
}
