package com.lh.app.vote.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.vote.domain.HouseVoteInfoVO;
import com.lh.app.vote.domain.VoteContentsVO;
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

	@Override
	public int voteInsert(VoteVO vo) {
		// TODO Auto-generated method stub
		return voteMapper.voteInsert(vo);
	}

	@Override
	public int voteContentsInsert(VoteContentsVO vo) {
		// TODO Auto-generated method stub
		return voteMapper.voteContentsInsert(vo);
	}

	@Override
	public List<VoteVO> voteSelect(VoteVO vo) {
		// TODO Auto-generated method stub
		return voteMapper.voteSelect(vo);
	}

	@Override
	public VoteVO voteSelectTitle(VoteVO vo) {
		// TODO Auto-generated method stub
		return voteMapper.voteSelectTitle(vo);
	}

	@Override
	public int insertVoteInfo(HouseVoteInfoVO vo) {
		// TODO Auto-generated method stub
		return voteMapper.insertVoteInfo(vo);
	}

	@Override
	public VoteVO voteParticipate(VoteVO vo) {
		// TODO Auto-generated method stub
		return voteMapper.voteParticipate(vo);
	}

	@Override
	public int voteCountUpdate(VoteVO vo) {
		// TODO Auto-generated method stub
		return voteMapper.voteCountUpdate(vo);
	}

}
