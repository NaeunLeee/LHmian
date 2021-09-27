package com.lh.app.signIn.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.mapper.SignInMapper;

@Service
public class SignInServiceImpl implements SignInService {

	@Autowired SignInMapper signInMapper;
	
	@Override
	public int idCheck(MemberVO vo) {
		// TODO Auto-generated method stub
		return signInMapper.idCheck(vo);
	}

	@Override
	public GenerationVO authKey(GenerationVO vo) {
		// TODO Auto-generated method stub
		return signInMapper.authKey(vo);
	}

	@Override
	public int insert(MemberVO vo) {
		// TODO Auto-generated method stub
		return signInMapper.insert(vo);
	}

}
