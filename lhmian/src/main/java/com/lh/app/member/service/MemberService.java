package com.lh.app.member.service;

import java.util.HashMap;
import java.util.List;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.member.domain.AdmMemberCri;
import com.lh.app.member.domain.MemberCriteria;
import com.lh.app.member.domain.MemberInfoVO;
import com.lh.app.signIn.domain.MemberVO;

public interface MemberService {
	
	// 전체조회 (10/12 수정: 이나은)
//	public List<MemberVO> getList(MemberCriteria cri);
	public List<MemberVO> getList(AdmMemberCri cri);

//	public int getTotalCount(MemberCriteria cri);
	public int getTotalCount(AdmMemberCri cri);

	/*
	 * //회원승인 public int update(MemberVO vo);
	 */

	// 단건조회
	public MemberInfoVO read(MemberInfoVO vo);

	// 회원삭제
	public int delete(MemberVO vo);

	// 비밀번호 변경
	public int updatePw(MemberInfoVO vo);

	// 자동차 개인 소유 목록
	public List<MemberInfoVO> getListcar(String id);

	// 차량 정보 수정 
	public int updateCar(MemberInfoVO vo);

	// 전화번호 정보 수정 
	public int updatePhone(MemberInfoVO vo);
	
	// SMS 전송 (10/12 추가: 이나은)
	public Long smsAPI(List<HashMap<String, String>> list);
	
}
