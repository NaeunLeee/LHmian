package com.lh.app.vote.domain;

import java.util.Date;

import lombok.Data;

@Data
public class HouseVoteInfoVO {
	public int hvNo;
	public int voteNo;
	public String houseInfo;
	public String hvStatus;
	public String hvResult;
	public Date sysdate;
}
