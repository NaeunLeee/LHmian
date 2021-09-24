package com.lh.app.signIn.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CarListVO {
	private Long carNo;
	private String carCode;
	private String carType;
	private Date carDate;
	private Long houseInfo;
}
