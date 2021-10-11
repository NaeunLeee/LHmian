package com.lh.app.vote.mapper;

import java.util.List;

import com.lh.app.vote.domain.HouseVoteInfoVO;
import com.lh.app.vote.domain.VoteContentsVO;
import com.lh.app.vote.domain.VoteVO;

public interface VoteMapper {
	public List<VoteVO> voteList();
	
	public int voteInsert(VoteVO vo);
	
	public int voteContentsInsert(VoteContentsVO vo);
	
	public List<VoteVO> voteSelect(VoteVO vo);
	
	public VoteVO voteSelectTitle(VoteVO vo);
	
	public int insertVoteInfo(HouseVoteInfoVO vo);
	
	public VoteVO voteParticipate(VoteVO vo);
	
	public int voteCountUpdate(VoteVO vo);
}
