package com.lh.app.visit.domain;

import lombok.Data;

@Data
public class VisitCriteria {
	private String id;
	private int pageNum = 1;
	private int amount = 10;
	private String type;
	private String keyword;

	public VisitCriteria() {
	}

	public VisitCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}
}
