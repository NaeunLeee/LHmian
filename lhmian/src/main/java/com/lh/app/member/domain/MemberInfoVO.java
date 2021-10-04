package com.lh.app.member.domain;

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
}
