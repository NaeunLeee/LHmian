package com.lh.app.conference.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ConfVO {
	
	private int confNo;
	private String confTitle;
	private String confContent;
	private String confWriter;
	private Date confDate;
	private Date confUpdate;
	private int confHit;

}
