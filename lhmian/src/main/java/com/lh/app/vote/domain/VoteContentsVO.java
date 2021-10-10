package com.lh.app.vote.domain;

import java.util.Date;

import lombok.Data;

@Data
public class VoteContentsVO {
	public int vcNo;
	public int voteNo;
	public String vcContent;
	public Date vcUpdate;
	public int vcQuesNo;
}
