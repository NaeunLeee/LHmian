package com.lh.app.energy.domain;

import lombok.Data;

@Data
public class EnergyCriteria {

	private String id;
	private int pageNum = 1;
	private int amount = 10;

	public EnergyCriteria() {
	}

	public EnergyCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
