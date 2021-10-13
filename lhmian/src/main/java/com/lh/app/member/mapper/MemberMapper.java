package com.lh.app.member.mapper;

import java.util.HashMap;
import java.util.List;

import com.lh.app.member.domain.AdmMemberCri;
import com.lh.app.member.domain.MemberInfoVO;
import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.etc.CustomUserDetails;

public interface MemberMapper {

	// 전체조회 (10/12 수정: 이나은)
//	public List<MemberVO> getList(MemberCriteria cri);
	public List<MemberVO> getList(AdmMemberCri cri);

//	public int getTotalCount(MemberCriteria cri);
	public int getTotalCount(AdmMemberCri cri);

	// 0928 추가
	// 단건조회
	public MemberInfoVO read(MemberInfoVO vo);

	// 0929 윤지민 스프링 시큐리티 로그인 커스터마이징 추가
	public CustomUserDetails selectUserById(String username);

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
	
	// position 수정 (10/13 추가: 이나은)
	public int updatePosition(MemberInfoVO vo);
	
}
