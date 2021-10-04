package com.lh.app.signIn.service;

import java.util.HashMap;
import java.util.Random;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.etc.Coolsms;
import com.lh.app.signIn.etc.CustomUserDetails;
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

	
	//smsAPI
	@Override
	public String smsAPI(String phone) {
		
		//인증번호 4자리 랜덤 생성
        Random rand  = new Random();
        String key = "";
        for(int i=0; i<4; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            key+=ran;
        }
        System.out.println(key);

		String api_key = "NCSJQHMMQOPYHJDN";
		String api_secret = "C5S3KG1OVLB15MMS8DAVKQXVVYOEDNKX";
		Coolsms coolsms = new Coolsms(api_key, api_secret); // 메시지보내기 객체 생성
//		userService.insertAuthCode(userPhoneNumber, key); // 휴대폰 인증 관련 서비스

		HashMap<String, String> set = new HashMap<String, String>();
		set.put("to", phone); // 수신번호
		set.put("from", "01067290715"); // 발신번호
		set.put("text", "[LHmian] 인증번호 [" + key + "]를 입력해주세요."); // 문자내용
		set.put("type", "sms"); // 문자 타입

		JSONObject result = coolsms.send(set); // 보내기&전송결과받기
		if ((boolean) result.get("status") == true) {
			// 메시지 보내기 성공 및 전송결과 출력
			System.out.println("성공");
			System.out.println(result.get("group_id")); // 그룹아이디
			System.out.println(result.get("result_code")); // 결과코드
			System.out.println(result.get("result_message")); // 결과 메시지
			System.out.println(result.get("success_count")); // 성공 갯수
			System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수
			//성공하면 인증번호를 리턴
			return key;
		} else {
			// 메시지 보내기 실패
			System.out.println("실패");
			System.out.println(result.get("code")); // REST API 에러코드
			System.out.println(result.get("message")); // 에러메시지
			//실패하면 "fail"이라는 메세지를 리턴
			return "fail";
		}
	}

	@Override
	public MemberVO findId(MemberVO vo) {
		// TODO Auto-generated method stub
		return signInMapper.findId(vo);
	}

	@Override
	public int findPassword(MemberVO vo) {
		// TODO Auto-generated method stub
		return signInMapper.findPassword(vo);
	}

	@Override
	public int updatePassword(MemberVO vo) {
		// TODO Auto-generated method stub
		return signInMapper.updatePassword(vo);
	}

	@Override
	public int kakaoIdCheck(Integer id) {
		// TODO Auto-generated method stub
		return signInMapper.kakaoIdCheck(id);
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// TODO Auto-generated method stub
		return signInMapper.memberSelect(vo);
	}

}
