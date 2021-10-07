package com.lh.app.comm.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommVO {
	private long commNo;
	private String id;
	
	// 10/07 login 추가
	private String login;
	private String commTitle;
	private String commContent;
	private Date commDate;
	private Date commUpdate;
	private int commHit;
	private long replycnt; 
}
