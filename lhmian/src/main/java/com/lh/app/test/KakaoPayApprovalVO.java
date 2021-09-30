package com.lh.app.test;

import java.util.Date;

import lombok.Data;

@Data

public class KakaoPayApprovalVO {
	// response
	private String aid, tid, cid, sid; // cid 가맹점 필수 코드, tid 결제 고유번호 unique값
	private String partner_ordereventNo, partner_usereventNo, payment_method_type; // 가맹점주문번호, 가맨정회원id, 페이 방
	private AmountVO amount;
	private CardVO card_info; // 카드정보
	private String item_name, item_code, payload; // 상품이름, 상품코드, 해당 request와 저장해서 매핑하고 싶은 값
	private Integer quantity, tax_free_amount, vat_amount; // 수랑, 비과세금액, 부과세금액 로 수정, vat_amount가 null 받아와서 total_amount
	private Date created_at, approved_at; // 결제 준비요청시간, 결제 승인시각
}
