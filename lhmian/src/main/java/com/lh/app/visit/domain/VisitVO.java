package com.lh.app.visit.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class VisitVO {
private int visitNo;
private int houseInfo;
private String visitContent;
private Date visitDate;
private Date visitUpdate;
private String visitWriter;
private int writerInfo;

}
