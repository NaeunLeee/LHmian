package com.lh.app.generation.domain;

import lombok.Data;

@Data
public class GenCriteria {

	private int pageNum = 1;
	private int amount = 10;
	private String type;
	private String keyword;
	private String preType;
	
	public GenCriteria() {}
	
	public GenCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}
	
}
