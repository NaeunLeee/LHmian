package com.lh.app.comm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.comm.domain.CommVO;
import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.mapper.CommMapper;

@Service
public class CommServiceImpl implements CommService {
	
	@Autowired CommMapper commMapper;

	@Override
	public int insert(CommVO vo) {
		// TODO Auto-generated method stub
		System.out.println(vo);
		return commMapper.insert(vo);
	}

	@Override
	public int update(CommVO vo) {
		// TODO Auto-generated method stub
		return commMapper.update(vo);
	}

	@Override
	public int remove(CommVO vo) {
		// TODO Auto-generated method stub
		return commMapper.remove(vo);
	}

	@Override
	public CommVO read(CommVO vo) {
		// TODO Auto-generated method stub
		return commMapper.read(vo);
	}

	@Override
	public List<CommVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return commMapper.getList(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return commMapper.getTotalCount(cri);
	}

	@Override
	public void updateReplycnt() {
		// TODO Auto-generated method stub
		
	}

}
