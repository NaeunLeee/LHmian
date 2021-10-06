package com.lh.app.payment.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class PaymentVO {
private String payNo;
private String id;
private Date payDate;
private String payType;
private String payCat;
private String payStatus;
}
