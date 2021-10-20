package com.lh.app.conference.domain;

import lombok.Data;

@Data
public class ConfCriteria {

	private int pageNum = 1;
	private int amount = 10;
	private String type;
	private String keyword;
	
	public ConfCriteria() {}
	
	public ConfCriteria(int pageNum, int amount) {
	      this.pageNum = pageNum;
	      this.amount = amount;
	}
	
	// 10/20 추가
	private String preType;
	private String preKey;
	
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	} 
	
}
