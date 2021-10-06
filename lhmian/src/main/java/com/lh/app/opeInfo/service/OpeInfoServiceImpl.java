package com.lh.app.opeInfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.opeInfo.domain.OpeInfoCriteria;
import com.lh.app.opeInfo.domain.OpeInfoVO;
import com.lh.app.opeInfo.mapper.OpeInfoMapper;

@Service
public class OpeInfoServiceImpl implements OpeInfoService {

	@Autowired
	OpeInfoMapper opeInfoMapper;
	
	// 전체 조회
	public List<OpeInfoVO> getList(OpeInfoCriteria cri) {
		return opeInfoMapper.getList(cri);
	}
	public int getTotalCount(OpeInfoCriteria cri) {
		return opeInfoMapper.getTotalCount(cri);
	}

	
	// 단건 조회
	public OpeInfoVO read(OpeInfoVO vo) {
		return opeInfoMapper.read(vo);
	}
	// 파일 아이디로 단건 조회
	public OpeInfoVO readByFileid(String uuid) {
		return opeInfoMapper.readByFileid(uuid);
	}
	
	
	// 등록
	public int insert(OpeInfoVO vo) {
		return opeInfoMapper.insert(vo);
	}
	
	// 수정
	public int update(OpeInfoVO vo) {
		return opeInfoMapper.update(vo);
	}

	// 삭제
	public int delete(OpeInfoVO vo) {
		return opeInfoMapper.delete(vo);
	}
	
	// 파일 삭제
	public int deleteFile(OpeInfoVO vo) {
		return opeInfoMapper.deleteFile(vo);
	}


	
	
}
