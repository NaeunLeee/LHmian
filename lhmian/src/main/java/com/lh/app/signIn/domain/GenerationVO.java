package com.lh.app.signIn.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class GenerationVO {
	private Long houseInfo;
	private Date enrollDate;
	private String authKey;
	
	// 10-18 추가: 이나은
	private String miniKey;
	
	private int pageNum;
	private int amount;
	private List<GenerationVO> generationList;
}
