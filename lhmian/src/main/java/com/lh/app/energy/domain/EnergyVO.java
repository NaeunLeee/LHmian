package com.lh.app.energy.domain;

import java.util.Date;

import lombok.Data;

@Data
public class EnergyVO {
	private String mfDate;
	private Date yearMonth;
	private int houseInfo;
	private String dong;
	private String hosu;
	private int eng;
	private int gas;
	private int electric;
	private int water;
	private int trash;
	private int trashFood;
	
	private String column;
	private String columnName;
}
