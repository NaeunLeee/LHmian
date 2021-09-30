package com.lh.app.fee.mapper;

import java.util.List;

import com.lh.app.fee.domain.ManagementFeeVO;

public interface ManagementFeeMapper {
	//동호수의 모든 관리비 내역
	public List<ManagementFeeVO> selectFeeList(ManagementFeeVO vo);
	
	
}
