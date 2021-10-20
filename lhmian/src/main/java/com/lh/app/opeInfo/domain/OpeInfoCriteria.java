package com.lh.app.opeInfo.domain;

import lombok.Data;

@Data
public class OpeInfoCriteria {

	private int pageNum = 1;
	private int amount = 10;
	private String type;
	private String keyword;

	// 10/15 추가
	private String preType;
	private String preKey;
	
	public OpeInfoCriteria() {}

	public OpeInfoCriteria(int pageNum, int amount) {
	      this.pageNum = pageNum;
	      this.amount = amount;
	   }

	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}

}
