package com.lh.app.signIn.controller;

import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lh.app.signIn.domain.MemberVO;
import com.lh.app.signIn.etc.CustomUserDetails;
import com.lh.app.signIn.etc.KakaoProfile;
import com.lh.app.signIn.etc.OAuthToken;
import com.lh.app.signIn.service.SignInService;

@Controller
public class KakaoController {
	
	@Autowired SignInService signInService;
	
	@GetMapping("/kakaoLogin")
	public String kakao(String code, Model model) { //카카오 인증 코드
		//post방식으로 key&value 데이터를 요청(카카오쪽으로)
		RestTemplate rt = new RestTemplate();
		
		//HttpHeader 오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpBody 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "5986adbc56a3444841aed3bd67e4976d");
		params.add("redirect_uri", "http://localhost:8091/app/kakaoLogin");
		params.add("code", code); //code는 동적
		
		//HttpHeader, HttpBody를 하나의 오브젝트에 담기 -> 왜 여기에 담아? 밑에 있는 exchange 함수가 HttpEntity를 받아서....
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest =
				new HttpEntity<>(params, headers); //header, param 값을 가진 엔터티
		
		//POST 방식으로 Http 요청하기, 그리고 response 변수에 응답받기
		ResponseEntity<String> response = rt.exchange(
				"https://kauth.kakao.com/oauth/token",
				HttpMethod.POST,
				kakaoTokenRequest,
				String.class
				);
		
		//오브젝트 라이브러리 Gson, Json Simple, ObjectMapper
		ObjectMapper objectMapper = new ObjectMapper();
		OAuthToken oauthToken = null;
		try {
			oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		System.out.println("카카오 액세스 토큰 : " + oauthToken.getAccess_token());
		
		//post방식으로 key&value 데이터를 요청(카카오쪽으로)
		RestTemplate rt2 = new RestTemplate();
		
		//HttpHeader 오브젝트 생성
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "bearer " + oauthToken.getAccess_token());
		headers2.add("content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpHeader, HttpBody를 하나의 오브젝트에 담기 -> 왜 여기에 담아? 밑에 있는 exchange 함수가 HttpEntity를 받아서....
		HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest2 =
				new HttpEntity<>(headers2); //header, param 값을 가진 엔터티
		
		//POST 방식으로 Http 요청하기, 그리고 response 변수에 응답받기
		ResponseEntity<String> response2 = rt2.exchange(
				"https://kapi.kakao.com/v2/user/me",
				HttpMethod.POST,
				kakaoProfileRequest2,
				String.class
				);
		
		System.out.println(response2.getBody());
		
		ObjectMapper objectMapper2 = new ObjectMapper();
		KakaoProfile kakaoProfile = null;
		try {
			kakaoProfile = objectMapper2.readValue(response2.getBody(), KakaoProfile.class);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
			
		Integer kakaoId = kakaoProfile.getId();
		System.out.println("kakao id : " + kakaoId);
		System.out.println("kakao email : " + kakaoProfile.getKakao_account().getEmail());

		//회원가입 이력이 있는지 조회
		String page="";
		
		//가입 이력이 있으면 1, 없으면 0
		int kakaoIdCheck = signInService.kakaoIdCheck(kakaoId);
		
		//가입 이력이 없으면 회원가입으로
		if (kakaoIdCheck == 0) {
			model.addAttribute("kakaoId", kakaoId);
			page = "signIn/leaderStep1";
		//있으면 로그인 후 메인 페이지로
		} else {
			//패스워드 해시 암호화
			 BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	         CustomUserDetails customUserDetails = new CustomUserDetails();

	         MemberVO vo = new MemberVO();
	         
	         vo.setId("" + kakaoId);

	         vo = signInService.memberSelect(vo);
	         
	         customUserDetails.setUsername(vo.getId());
	         customUserDetails.setNAME(vo.getName());
	         customUserDetails.setPHONE(vo.getPhone());
	         customUserDetails.setHOUSEINFO("" + vo.getHouseInfo());
	         customUserDetails.setAUTHOR(vo.getAuthor());
	         customUserDetails.setSTATUS(vo.getStatus());
 
	         System.out.println(customUserDetails);
	         
	         Authentication authentication = new UsernamePasswordAuthenticationToken(customUserDetails, passwordEncoder.encode("c1X^H3yut0qhR)Y&G#JdbW$=OEw"), customUserDetails.getAuthorities());
	         SecurityContextHolder.getContext().setAuthentication(authentication);
	         System.out.println(SecurityContextHolder.getContext().getAuthentication());	
			
			page = "redirect:/";
		}
		
		return page;
	}
	
}
