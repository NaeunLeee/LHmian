package com.lh.app.test;

import java.util.Date;
import lombok.Data;

@Data
public class KakaoPayReadyVO { 
	//response
	private String tid; //결제 고유번호(20자)
	private String next_redirect_pc_url; //요청한 클라이언트가 pc 웹일 경우 redirect. 
	private Date created_at; //결제 준비 요청시간
	}

