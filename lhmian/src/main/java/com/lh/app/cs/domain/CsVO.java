package com.lh.app.cs.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CsVO {

	private int csNo;
	private String id;
	private int houseInfo;
	private String csTitle;
	private String csContent;
	private Date csDate;
	private Date csUpdate;
	private String csAnswer;
	private Date csAnsdate;
	
	private String name;
	
}
