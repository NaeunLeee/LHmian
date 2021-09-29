package com.lh.app.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.cs.domain.CsCriteria;
import com.lh.app.cs.domain.CsVO;
import com.lh.app.cs.mapper.CsMapper;

@Service
public class CsServiceImpl implements CsService {

	@Autowired
	CsMapper csMapper;
	
	
	public List<CsVO> getList(CsCriteria cri) {
		return csMapper.getList(cri);
	}

	public int getTotalCount(CsCriteria cri) {
		return csMapper.getTotalCount(cri);
	}

	public CsVO read(CsVO vo) {
		return csMapper.read(vo);
	}

	public int insertBoard(CsVO vo) {
		return csMapper.insertBoard(vo);
	}

	public int updateBoard(CsVO vo) {
		return csMapper.updateBoard(vo);
	}

	public int deleteBoard(CsVO vo) {
		return csMapper.deleteBoard(vo);
	}

	public int insertAnswer(CsVO vo) {
		return csMapper.insertAnswer(vo);
	}

	public int updateAnswer(CsVO vo) {
		return csMapper.updateAnswer(vo);
	}

	public int deleteAnswer(CsVO vo) {
		return csMapper.deleteAnswer(vo);
	}

}
