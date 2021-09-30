package com.lh.app.fee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.fee.domain.ManagementFeeVO;
import com.lh.app.fee.mapper.ManagementFeeMapper;

@Service
public class ManagementFeeServiceImpl implements ManagementFeeService {

	@Autowired ManagementFeeMapper managementFeeMapper;
	
	@Override
	public List<ManagementFeeVO> selectFeeList(ManagementFeeVO vo) {
		// TODO Auto-generated method stub
		return managementFeeMapper.selectFeeList(vo);
	}

}
