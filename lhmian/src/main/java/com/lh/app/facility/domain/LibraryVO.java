package com.lh.app.facility.domain;

import java.util.Date;

import lombok.Data;

@Data
public class LibraryVO {

	private String libNo;
	private String payNo;
	private Date libStartdate;
	private int libPeriod;
	private int libPrice;
	
}
