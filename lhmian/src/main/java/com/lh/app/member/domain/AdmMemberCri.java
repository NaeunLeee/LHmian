package com.lh.app.member.domain;

import lombok.Data;

@Data
public class AdmMemberCri {
	
	private int pageNum = 1;
	private int amount = 10;
	private String type;
	private String keyword;
	private String option;
   
	public AdmMemberCri() {}
   
	public AdmMemberCri(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	// 10/18
	private String preType;
	
	public String[] getTypeArr() {
		return type == null ? new String[]{} : type.split("");
	}
	
	public String[] getOptionArr() {
		return type == null ? new String[]{} : option.split("");
	}
	
}
