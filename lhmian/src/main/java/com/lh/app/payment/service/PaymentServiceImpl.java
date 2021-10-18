package com.lh.app.payment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.fee.domain.ManagementFeeVO;
import com.lh.app.payment.domain.PaymentCriteria;
import com.lh.app.payment.domain.PaymentVO;
import com.lh.app.payment.mapper.PaymentMapper;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	PaymentMapper paymentMapper;

	@Override
	public int insert(PaymentVO vo) {
		return paymentMapper.insert(vo);
	}

	@Override
	public PaymentVO read(PaymentVO vo) {
		return paymentMapper.read(vo);
	}

	@Override
	public int update(ManagementFeeVO vo) {
		return paymentMapper.update(vo);
	}

	@Override
	public int updateStatus(PaymentVO vo) {
		return paymentMapper.updateStatus(vo);
	}

	@Override
	public List<PaymentVO> getList(PaymentCriteria cri) {
		return paymentMapper.getList(cri);
	}

	@Override
	public int getTotalCount(PaymentCriteria cri) {
		return paymentMapper.getTotalCount(cri);
	}

}
