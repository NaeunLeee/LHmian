package com.lh.app.signIn.domain;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String name;
	private String phone;
	private Long houseInfo;
	private String author;
	private String key;
	private String password;
	private String status;
	private String position;
	
	// 10-18 추가: 이나은
	private int familyNum;
	
	// 10-19 추가: 윤지민
	private String unPaid;
}
