package com.lh.app.admin.domain;

import lombok.Data;



@Data
public class PostVO {
	
	private Long postNo;
	private int houseInfo;
	private String postStatus;
	private String postDate;
	
	// 10/12 추가
	private String name;
	
}
