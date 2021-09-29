package com.lh.app.energy.domain;

import lombok.Data;

@Data
public class EnergyVO {
private String mfDate;
private int houseInfo;
private int eng;
private int gas;
private int electric;
private int water;
private int trash;
private int trashFood;
}
