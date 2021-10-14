package com.lh.app.vote.domain;

import java.util.Date;

import lombok.Data;

@Data
public class VoteVO {
	private int voteNo;
	private String voteTitle;
	private Date voteStart;
	private Date voteEnd;
	private Date voteDay;
	private int voteCount;
	private String voteFinal;
	private Date voteUpdate;
	private Double percent;
	private String over;
	private String uploadImg;
	
	public String vcContent;
	public int vcQuesNo;
	
	public String hvStatus;
	public String houseInfo;
}
