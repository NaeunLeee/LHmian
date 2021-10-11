package com.lh.app.vote.service;

import java.util.List;

import com.lh.app.vote.domain.HouseVoteInfoVO;
import com.lh.app.vote.domain.VoteContentsVO;
import com.lh.app.vote.domain.VoteVO;

public interface VoteService {
	public List<VoteVO> voteList();
	
	public int voteInsert(VoteVO vo);
	
	public int voteContentsInsert(VoteContentsVO vo);
	
	public List<VoteVO> voteSelect(VoteVO vo);
	
	public VoteVO voteSelectTitle(VoteVO vo);
	
	public int insertVoteInfo(HouseVoteInfoVO vo);
	
	public int voteCountUpdate(VoteVO vo);
	
	public VoteVO voteParticipate(VoteVO vo);
}
