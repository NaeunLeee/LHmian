package com.lh.app.vote.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.vote.domain.VoteVO;
import com.lh.app.vote.mapper.VoteMapper;

@Service
public class VoteServiceImpl implements VoteService {

	@Autowired VoteMapper voteMapper;
	
	@Override
	public List<VoteVO> voteList() {
		// TODO Auto-generated method stub
		return voteMapper.voteList();
	}

}
