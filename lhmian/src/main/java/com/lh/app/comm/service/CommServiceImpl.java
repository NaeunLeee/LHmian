package com.lh.app.comm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Service;

import com.lh.app.comm.domain.CommVO;
import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.mapper.CommMapper;
import com.lh.app.signIn.etc.CustomUserDetails;

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
	public int remove(Long commNo) {
		// TODO Auto-generated method stub
		return commMapper.remove(commNo);
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

	//댓글 이벤트
	@Override
	public int viewCount(Long commNo) {
		// TODO Auto-generated method stub
		return commMapper.viewCount(commNo);
	}

	@Override
	public void updateReplycnt() {
		// TODO Auto-generated method stub
		
	}
	
	// 10/02 cri 주석처리함
	@Override
	public List<CommVO> getListno(/* Criteria cri, */String username) {
		// TODO Auto-generated method stub
		return commMapper.getListno(/* cri, */ username);
	}


}
