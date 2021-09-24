package com.lh.app.comm.domain;

import java.util.Date;

import lombok.Data;


@Data
public class ReplyVO {
	private long cmtNo;
	private long commNo;
	
	private String cmtContent;
	private String cmtWriter;
	
	private Date cmtUpdate;
	private Date cmtDate;
}
