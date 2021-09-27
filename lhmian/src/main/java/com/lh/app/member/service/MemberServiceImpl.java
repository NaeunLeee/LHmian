package com.lh.app.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.member.domain.MemberCriteria;
import com.lh.app.member.mapper.MemberMapper;
import com.lh.app.signIn.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mapper;

	// 전체조회
	@Override
	public List<MemberVO> getList(MemberCriteria cri) {
		// TODO Auto-generated method stub
		return mapper.getList(cri);
	}

	@Override
	public int getTotalCount(MemberCriteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}

	/*
	 * //가입승인
	 * 
	 * @Override public int update(MemberVO vo) { // TODO Auto-generated method stub
	 * return mapper.update(vo); }
	 */

	// 회원삭제
	@Override
	public int delete(MemberVO vo) {
		// TODO Auto-generated method stub
		return mapper.delete(vo);
	}

	@Override
	public MemberVO read(MemberVO vo) {
		// TODO Auto-generated method stub
		return mapper.read(vo);
	}

}
