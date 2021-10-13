package com.lh.app.member.service;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.member.domain.AdmMemberCri;
import com.lh.app.member.domain.MemberInfoVO;
import com.lh.app.member.mapper.MemberMapper;
import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.etc.Coolsms;

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

	//sms 전송 (10/12 추가: 이나은)
	public Long smsAPI(List<HashMap<String, String>> list) {
		String api_key = "NCSJQHMMQOPYHJDN";
		String api_secret = "C5S3KG1OVLB15MMS8DAVKQXVVYOEDNKX";
		Coolsms coolsms = new Coolsms(api_key, api_secret); // 메시지보내기 객체 생성
//		userService.insertAuthCode(userPhoneNumber, key); // 휴대폰 인증 관련 서비스

		Long n = 0L;
		
	
		for (int i=0; i<list.size(); i++) {
			HashMap<String, String> set = new HashMap<String, String>();
			set.put("to", list.get(i).get("phone")); // 수신번호
			set.put("from", "01067290715"); // 발신번호
			set.put("text", list.get(i).get("content")); // 문자내용
			set.put("type", list.get(i).get("sms")); // 문자 타입 (sms / lms)
			
			JSONObject result = coolsms.send(set); // 보내기&전송결과받기
			if ((boolean) result.get("status") == true) {
				// 메시지 보내기 성공 및 전송결과 출력
				n += (Long) result.get("success_count");
			} 
		}
		return n;
	}

	// position 수정 (10/13 추가: 이나은)
	public int updatePosition(MemberInfoVO vo) {
		return mapper.updatePosition(vo);
	}
	
}
