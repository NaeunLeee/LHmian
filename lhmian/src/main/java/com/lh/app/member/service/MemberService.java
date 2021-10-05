package com.lh.app.member.service;

import java.util.List;

import com.lh.app.member.domain.MemberCriteria;
import com.lh.app.member.domain.MemberInfoVO;
import com.lh.app.signIn.domain.MemberVO;

public interface MemberService {
	// 전체조회
	public List<MemberVO> getList(MemberCriteria cri);

	public int getTotalCount(MemberCriteria cri);

	/*
	 * //회원승인 public int update(MemberVO vo);
	 */

	// 단건조회
	// 10/04 수정
	public MemberInfoVO read(MemberInfoVO vo);

	// 회원삭제
	public int delete(MemberVO vo);

	// 비밀번호 변경
	public int updatePw(MemberInfoVO vo);

	// 10/04 추가 (이광호)
	// 자동차 개인 소유 목록
	public List<MemberInfoVO> getListcar(String id);

	// 차량 정보 수정 (10/05 추가)
	public int updateCar(MemberInfoVO vo);

	// 전화번호 정보 수정 (10/05 추가)
	public int updatePhone(MemberInfoVO vo);
}
