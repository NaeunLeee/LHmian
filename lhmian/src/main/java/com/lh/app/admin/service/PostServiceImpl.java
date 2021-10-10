package com.lh.app.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.admin.domain.PostVO;
import com.lh.app.admin.mapper.PostMapper;
import com.lh.app.comm.domain.Criteria;

@Service
public class PostServiceImpl implements PostService {

	@Autowired PostMapper postMapper;
	
	@Override
	public int insert(PostVO vo) {
		// TODO Auto-generated method stub
		return postMapper.insert(vo);
	}

	@Override
	public int update(PostVO vo) {
		// TODO Auto-generated method stub
		return postMapper.update(vo);
	}

	@Override
	public PostVO read(PostVO vo) {
		// TODO Auto-generated method stub
		return postMapper.read(vo);
	}

	@Override
	public List<PostVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return postMapper.getList(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return postMapper.getTotalCount(cri);
	}

	@Override
	public int delete(PostVO vo) {
		// TODO Auto-generated method stub
		return postMapper.delete(vo);
	}

}
