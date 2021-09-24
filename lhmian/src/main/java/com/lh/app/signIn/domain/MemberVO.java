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
}
