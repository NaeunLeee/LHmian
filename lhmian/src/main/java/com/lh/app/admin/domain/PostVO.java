package com.lh.app.admin.domain;

import lombok.Data;



@Data
public class PostVO {
	
	// 10/11 타입 변환, 전체 삭제 후 붙여넣는 걸 추천
	private Long postNo;
	private int houseInfo;
	private String postStatus;
	private String postDate;
}
