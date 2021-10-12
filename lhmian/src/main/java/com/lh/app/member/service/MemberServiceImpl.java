package com.lh.app.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.member.domain.AdmMemberCri;
import com.lh.app.member.domain.MemberInfoVO;
import com.lh.app.member.mapper.MemberMapper;
import com.lh.app.signIn.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mapper;

	// 전체조회 (10/12 수정: 이나은)
	public List<MemberVO> getList(AdmMemberCri cri) {
		return mapper.getList(cri);
	}

	public int getTotalCount(AdmMemberCri cri) {
		return mapper.getTotalCount(cri);
	}

	/*
	 * //가입승인
	 * 
	 * @Override public int update(MemberVO vo) { // TODO Auto-generated method stub
	 * return mapper.update(vo); }
	 */

	// 회원삭제
	public int delete(MemberVO vo) {
		return mapper.delete(vo);
	}

	public MemberInfoVO read(MemberInfoVO vo) {
		return mapper.read(vo);
	}
	
	//10/05 추가 (이광호)
	public int updatePw(MemberInfoVO vo) {
		return mapper.updatePw(vo);
	}

	public List<MemberInfoVO> getListcar(String id) {
		return mapper.getListcar(id);
	}
	
	//차량 정보 수정 (10/05)
	public int updateCar(MemberInfoVO vo) {
		return mapper.updateCar(vo);
	}

	
	//10/05 추가
	public int updatePhone(MemberInfoVO vo) {
		return mapper.updatePhone(vo);
	}
	
}
