package com.lh.app.facility.domain;

import java.util.Date;

import lombok.Data;

@Data	
public class GymVO {

	private String gymNo;
	private String payNo;
	private Date gymStartDate;
	private String gxCode;
	private int gymLocker;
	private int gymPeriod;
	private int gymPrice;
	
}
