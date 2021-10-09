package com.lh.app.payment.domain;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class PaymentVO {
private String payNo;
private String id;
@JsonFormat(pattern = "yyyy-MM-dd")
private Date payDate;
private String payType;
private String payCat;
private String payStatus;
private int price;
}
