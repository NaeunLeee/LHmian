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
	public ManagementFeeVO selectAvg(ManagementFeeVO vo) {
		// TODO Auto-generated method stub
		return managementFeeMapper.selectAvg(vo);
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

	@Override
	public List<ManagementFeeVO> sixMonthsSelect(ManagementFeeVO vo) {
		// TODO Auto-generated method stub
		return managementFeeMapper.sixMonthsSelect(vo);
	}

	@Override
	public List<ManagementFeeVO> sixMonthsCurrent(ManagementFeeVO vo) {
		// TODO Auto-generated method stub
		return managementFeeMapper.sixMonthsCurrent(vo);
	}

	@Override
	public ManagementFeeVO samePyeongAvg(ManagementFeeVO vo) {
		// TODO Auto-generated method stub
		return managementFeeMapper.samePyeongAvg(vo);
	}

	@Override
	public ManagementFeeVO selectCurrentAvg() {
		// TODO Auto-generated method stub
		return managementFeeMapper.selectCurrentAvg();
	}

}
