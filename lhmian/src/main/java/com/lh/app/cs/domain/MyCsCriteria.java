package com.lh.app.cs.domain;

import lombok.Data;

@Data
public class MyCsCriteria {

	private String id;
	private int pageNum = 1;
	private int amount = 10;
	private String type;
	private String keyword;
	
	public MyCsCriteria() {}
	
	public MyCsCriteria(int pageNum, int amount) {
	      this.pageNum = pageNum;
	      this.amount = amount;
	}
	
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	} 
	
}
