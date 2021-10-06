package com.lh.app.comm.domain;

import lombok.Data;

// 10/06 추가

@Data
public class PersonalCriteria {
   
   private String id;
   private int pageNum = 1;
   private int amount = 10;
   private String type;
   private String keyword;
   public PersonalCriteria() {}
   public PersonalCriteria(int pageNum, int amount) {
      this.pageNum = pageNum;
      this.amount = amount;
   }
   
   public String[] getTypeArr() {
	   return type == null ? new String[]{} : type.split("");
   }
}
