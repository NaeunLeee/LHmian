package com.lh.app.visit.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.visit.domain.GenerationCriteria;
import com.lh.app.visit.domain.VisitVO;
import com.lh.app.visit.mapper.VisitMapper;

@Service
public class VisitServiceImpl implements VisitService {

	@Autowired
	VisitMapper visitMapper;

	@Override
	public List<VisitVO> getList(VisitVO vo) {
		return visitMapper.getList(vo);
	}

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

	@Override
	public List<GenerationVO> generation(Map<String, String> searchParam) {
		return visitMapper.generation(searchParam);
	}

	@Override
	public int getOldCount(GenerationCriteria cri) {
		return visitMapper.getOldCount(cri);
	}

}
