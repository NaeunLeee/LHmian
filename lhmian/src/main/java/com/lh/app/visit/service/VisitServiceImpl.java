package com.lh.app.visit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.visit.domain.VisitCriteria;
import com.lh.app.visit.domain.VisitVO;

@Service
public class VisitServiceImpl implements VisitService {

	@Autowired VisitService visitMapper;
	
	@Override
	public List<VisitVO> getList(VisitVO vo) {
		return visitMapper.getList(vo);
	}

	/*
	 * @Override public int getTotalCount(VisitCriteria cri) { return
	 * visitMapper.getTotalCount(cri); }
	 */

	@Override
	public int insert(VisitVO vo) {
		return visitMapper.insert(vo);
	}

	@Override
	public int update(VisitVO vo) {
		return visitMapper.update(vo);
	}

	@Override
	public int delete(VisitVO vo) {
		return visitMapper.delete(vo);
	}

}
