package com.lh.app.fee.service;

import java.util.List;

import com.lh.app.fee.domain.ManagementFeeVO;

public interface ManagementFeeService {
	//동호수의 모든 관리비 내역
	public List<ManagementFeeVO> selectFeeList(ManagementFeeVO vo);
}
