//package com.lh.app.test;
//
//import java.io.BufferedReader;
//import java.io.DataOutputStream;
//import java.io.IOException;
//import java.io.InputStream;
//import java.io.InputStreamReader;
//import java.io.OutputStream;
//import java.net.HttpURLConnection;
//import java.net.URI;
//import java.net.URISyntaxException;
//import java.net.URL;
//
//import org.springframework.http.HttpEntity;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.HttpMethod;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.util.LinkedMultiValueMap;
//import org.springframework.util.MultiValueMap;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.client.RestClientException;
//import org.springframework.web.client.RestTemplate;
//
//@Controller
//public class TestController {
//	KakaoPayReadyVO kakaoPayReadyVO;
//	
//	@GetMapping("animationTest")
//	public String animationTest() {
//		return "signIn/animationTest";
//	}
//	
//	@GetMapping("animsition1")
//	public String animsition1() {
//		return "signIn/animsition1";
//	}
//	
//	@GetMapping("/test")
//	public String testPage() {
//		
//		return "pay/pay";
//	}
//	
//	@PostMapping("kakaoPay")
//	public String kakaoPay() {
//		
//		RestTemplate rt = new RestTemplate();
//		
//		String data = null;
//		String redirectUrl = null;
//
//			HttpHeaders headers = new HttpHeaders();
//			headers.add("Authorization", "KakaoAK 2c172b7be8c512f4068bdd935fd4687a");
//			headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//			
//			MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
//			params.add("cid", "TC0ONETIME");//사업장 고유번호
//			params.add("partner_order_id", "partner_order_id"); //파라미터 세팅
//			params.add("partner_user_id", "partner_user_id"); //파라미터 세팅
//			params.add("item_name", "푸 인형"); //파라미터 세팅
//			params.add("quantity", "1"); //파라미터 세팅
//			params.add("total_amount", "110"); //파라미터 세팅
//			params.add("tax_free_amount", "0"); //파라미터 세팅
//			params.add("approval_url", "http://localhost:8005/app/kakaoPaySuccess"); 
//			params.add("cancel_url", "http://localhost:8005/app/kakaoPayCancel"); //아직 안만듬
//			params.add("fail_url", "http://localhost:8005/app/kakaoPayFail"); //아직 안만듬
//			
//			HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
//
//			try {
//				kakaoPayReadyVO = rt.postForObject(new URI("https://kapi.kakao.com/v1/payment/ready"), body, KakaoPayReadyVO.class);
//			} catch (RestClientException | URISyntaxException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		
//		return "redirect:" + kakaoPayReadyVO.getNext_redirect_pc_url();
//	}
//	
//	@GetMapping("/kakaoPaySuccess")
//	public String kakaoPaySuccess(String pg_token, Model model) {
//
//		KakaoPayApprovalVO kakaoPayApprovalVO = null;
//		
//		System.out.println(pg_token);
//		
//		//post방식으로 key&value 데이터를 요청(카카오쪽으로)
//		RestTemplate rt = new RestTemplate();
//		
//		//HttpHeader 오브젝트 생성
//		HttpHeaders headers = new HttpHeaders();
//		headers.add("Authorization", "KakaoAK 2c172b7be8c512f4068bdd935fd4687a");
//		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//		
//		//HttpBody 오브젝트 생성
//		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
//		params.add("cid", "TC0ONETIME");
//		params.add("tid", kakaoPayReadyVO.getTid());
//		params.add("partner_order_id", "partner_order_id"); //파라미터 세팅
//		params.add("partner_user_id", "partner_user_id"); //파라미터 세팅
//		params.add("pg_token", pg_token);
//		
//		//HttpHeader, HttpBody를 하나의 오브젝트에 담기 -> 왜 여기에 담아? 밑에 있는 exchange 함수가 HttpEntity를 받아서....
//		HttpEntity<MultiValueMap<String, String>> body =
//				new HttpEntity<>(params, headers); //header, param 값을 가진 엔터티
//		
//		try {
//			kakaoPayApprovalVO = rt.postForObject(new URI("https://kapi.kakao.com/v1/payment/approve"), body, KakaoPayApprovalVO.class);
//		} catch (RestClientException | URISyntaxException e) {
//			e.printStackTrace();
//		}
//		
//		model.addAttribute("info", kakaoPayApprovalVO);
//		
//		return "pay/kakaoPaySuccess";
//		
//	}
//}
