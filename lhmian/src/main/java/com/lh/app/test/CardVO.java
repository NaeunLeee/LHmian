package com.lh.app.test;

import lombok.Data;

@Data

public class CardVO {
	private String purchase_corp, purchase_corp_code;// 카드 매입사 한글명, 카드 매입사 코드
	private String issuer_corp, issuer_corp_code;// 카드 발급사 한글명, 카드 발급사 코드
	private String bin, card_type, install_month, approved_id, card_mid; // 카드bin, 카드타입, 할부 개월수, 카드사 승인번호, 카드사 가맹점번호
	private String interest_free_install, card_item_code;// 무이자 할부 여부, 카드 상품코드

}
