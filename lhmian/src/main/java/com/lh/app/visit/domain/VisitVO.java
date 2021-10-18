package com.lh.app.visit.domain;

import java.sql.Date;
import java.util.List;

import com.lh.app.signIn.domain.GenerationVO;

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

private int pageNum;
private int amount;
private List<GenerationVO> generationList;
}
