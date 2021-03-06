package com.lh.app.payment.service;

import java.util.List;

import com.lh.app.fee.domain.ManagementFeeVO;
import com.lh.app.payment.domain.PaymentCriteria;
import com.lh.app.payment.domain.PaymentVO;

public interface PaymentService {
	// CRUD
	// 결제 정보 db로
	public int insert(PaymentVO vo);

	// 개인관리비 결제정보 업데이트
	public int update(ManagementFeeVO vo);

	// 결제취소시 상태변경
	public int updateStatus(PaymentVO vo);

	// 전체조회
	public List<PaymentVO> getList(PaymentCriteria cri);

	public int getTotalCount(PaymentCriteria cri);

	// 단건조회
	public PaymentVO read(PaymentVO vo);
}
