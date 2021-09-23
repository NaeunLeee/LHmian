package com.lh.app.test;

import lombok.Data;

@Data
public class AmountVO {
	private Integer total, tax_free, vat, point, discount;// 전체 결제 금액, 비과세 금액, 부가세금액, 사용한 포인트금액, 할인금액

}
