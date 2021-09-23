package com.lh.app.opeInfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.opeInfo.domain.OpeInfoVO;
import com.lh.app.opeInfo.mapper.OpeInfoMapper;

@Service
public class OpeInfoServiceImpl implements OpeInfoService {

	@Autowired
	OpeInfoMapper opeInfoMapper;
	
	// 전체 조회
	public List<OpeInfoVO> getList() {
		return opeInfoMapper.getList();
	}

	// 단건 조회
	public OpeInfoVO read(OpeInfoVO vo) {
		return opeInfoMapper.read(vo);
	}

	// 등록
	public int insert(OpeInfoVO vo) {
		return opeInfoMapper.insert(vo);
	}

	
	
}
