package com.lh.app.comm.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommVO {
	private long commNo;
	private String id;
	private String commTitle;
	private String commContent;
	private Date commDate;
	private Date commUpdate;
	private int commHit;
	private long replycnt; 
}
