package com.lh.app.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.member.domain.MemberCriteria;
import com.lh.app.member.domain.MemberInfoVO;
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
	public MemberInfoVO read(MemberInfoVO vo) {
		// TODO Auto-generated method stub
		return mapper.read(vo);
	}
	
	//10/05 추가 (이광호)
	@Override
	public int updatePw(MemberInfoVO vo) {
		
		return mapper.updatePw(vo);
	}

	@Override
	public List<MemberInfoVO> getListcar(String id) {
		// TODO Auto-generated method stub
		return mapper.getListcar(id);
	}
	
	//차량 정보 수정 (10/05)
	@Override
	public int updateCar(MemberInfoVO vo) {
		// TODO Auto-generated method stub
		return mapper.updateCar(vo);
	}

	
	//10/05 추가
	@Override
	public int updatePhone(MemberInfoVO vo) {
		// TODO Auto-generated method stub
		return mapper.updatePhone(vo);
	}
	
}
