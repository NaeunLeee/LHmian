package com.lh.app.payment.domain;

import lombok.Data;

@Data
public class PaymentCriteria {

	private String id;
	private int pageNum = 1;
	private int amount = 10;

	public PaymentCriteria() {
	}

	public PaymentCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
