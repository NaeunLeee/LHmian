package com.lh.app.conference.domain;

import lombok.Data;

@Data
public class MyConfCriteria {

	private String confWriter;
	private int pageNum = 1;
	private int amount = 10;
	private String type;
	private String keyword;
	
	public MyConfCriteria() {}
	
	public MyConfCriteria(int pageNum, int amount) {
	      this.pageNum = pageNum;
	      this.amount = amount;
	}
	
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	} 
	
}
