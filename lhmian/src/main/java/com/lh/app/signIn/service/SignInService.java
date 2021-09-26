package com.lh.app.signIn.service;

import com.lh.app.signIn.domain.MemberVO;

public interface SignInService {
	//id 중복체크
	public int idCheck(MemberVO vo);
}
