package com.lh.app.member.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberInfoVO {
	private String id;
	private String name;
	private String phone;
	private Long houseInfo;
	private String password;
	private String carCode;
	private String carType;
	private String rownum;
	
	//10-05 추가부분
	private String newpw;
	private String carNo;
	
	//10-06 추가부분
	private String position;
	
	//10-18 추가부분(이나은)
	private Date carDate;
}
