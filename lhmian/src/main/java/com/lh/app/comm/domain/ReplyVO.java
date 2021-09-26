package com.lh.app.comm.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;


@Data
public class ReplyVO {
	private long cmtNo;
	private long commNo;
	
	private String cmtContent;
	private String cmtWriter;
	
	@JsonFormat(pattern = "yyyy/MM/dd")
	private Date cmtUpdate;
	@JsonFormat(pattern = "yyyy/MM/dd")
	private Date cmtDate;
	
}
