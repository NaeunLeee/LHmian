package com.lh.app.signIn.domain;

import java.util.Date;

import lombok.Data;

@Data
public class GenerationVO {
	private Long house_info;
	private Date enrollDate;
	private String authKey;
}