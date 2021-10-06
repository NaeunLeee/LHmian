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

	@Override
	public ManagementFeeVO selectFee(ManagementFeeVO vo) {
		// TODO Auto-generated method stub
		return managementFeeMapper.selectFee(vo);
	}

	@Override
	public ManagementFeeVO selectAvg() {
		// TODO Auto-generated method stub
		return managementFeeMapper.selectAvg();
	}

	@Override
	public ManagementFeeVO selectCurrentFee(ManagementFeeVO vo) {
		// TODO Auto-generated method stub
		return managementFeeMapper.selectCurrentFee(vo);
	}

	@Override
	public List<ManagementFeeVO> admSelectFeeList() {
		// TODO Auto-generated method stub
		return managementFeeMapper.admSelectFeeList();
	}

}
