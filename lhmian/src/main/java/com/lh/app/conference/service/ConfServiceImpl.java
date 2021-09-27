package com.lh.app.conference.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.conference.domain.ConfCriteria;
import com.lh.app.conference.domain.ConfVO;
import com.lh.app.conference.mapper.ConfMapper;

@Service
public class ConfServiceImpl implements ConfService {

	@Autowired
	ConfMapper confMapper;
	
	
	public List<ConfVO> getList(ConfCriteria cri) {
		return confMapper.getList(cri);
	}

	public int getTotalCount(ConfCriteria cri) {
		return confMapper.getTotalCount(cri);
	}

	public ConfVO read(ConfVO vo) {
		return confMapper.read(vo);
	}

	public int insert(ConfVO vo) {
		return confMapper.insert(vo);
	}

	public int update(ConfVO vo) {
		return confMapper.update(vo);
	}

	public int delete(ConfVO vo) {
		return confMapper.delete(vo);
	}

}
