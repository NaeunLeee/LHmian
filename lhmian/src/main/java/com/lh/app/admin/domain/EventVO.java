package com.lh.app.admin.domain;

import java.util.Date;

import lombok.Data;

@Data
public class EventVO {
	private Long eventNo;
	private String editTitle;
	private String eventContent;
	private Date editStart;
	private Date editEnd;
}
