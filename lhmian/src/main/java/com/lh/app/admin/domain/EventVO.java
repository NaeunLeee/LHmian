package com.lh.app.admin.domain;


import lombok.Data;

@Data
public class EventVO {
	
	// 10/01 수정부분
	
	private Long eventNo;
	private String title;
	private String description;
	private String start;
	private String end;
	private String type;
	private String backgroundColor; 
	private boolean allDay;
	private int result;
	private String username;
}
