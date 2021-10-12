package com.lh.app.admin.service;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.admin.domain.PostVO;
import com.lh.app.admin.mapper.PostMapper;
import com.lh.app.comm.domain.Criteria;
import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.etc.Coolsms;

@Service
public class PostServiceImpl implements PostService {

	@Autowired PostMapper postMapper;
	
	@Override
	public int insert(PostVO vo) {
		// TODO Auto-generated method stub
		return postMapper.insert(vo);
	}

	@Override
	public int update(PostVO vo) {
		// TODO Auto-generated method stub
		return postMapper.update(vo);
	}

	@Override
	public PostVO read(PostVO vo) {
		// TODO Auto-generated method stub
		return postMapper.read(vo);
	}

	@Override
	public List<PostVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return postMapper.getList(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return postMapper.getTotalCount(cri);
	}

	@Override
	public int delete(PostVO vo) {
		// TODO Auto-generated method stub
		return postMapper.delete(vo);
	}
	
	
	// 10/12 추가
	@Override
	public String smsAPI(String phone) {
		
		String api_key = "NCSJQHMMQOPYHJDN";
		String api_secret = "C5S3KG1OVLB15MMS8DAVKQXVVYOEDNKX";
		Coolsms coolsms = new Coolsms(api_key, api_secret); // 메시지보내기 객체 생성
		
		HashMap<String, String> set = new HashMap<String, String>();
		set.put("to", phone); // 수신번호
		set.put("from", "01067290715"); // 발신번호
		set.put("text", "택배 도착했습니다. 수령 부탁드립니다."); // 문자내용
		set.put("type", "sms"); // 문자 타입

		JSONObject result = coolsms.send(set); // 보내기&전송결과받기
		
		if ((boolean) result.get("status") == true) {
			// 메시지 보내기 성공 및 전송결과 출력
			System.out.println("성공");
			//성공하면 인증번호를 리턴
			return "success";
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
	public String readPhone(MemberVO vo) {
		// TODO Auto-generated method stub
		return postMapper.readPhone(vo);
	}

}
