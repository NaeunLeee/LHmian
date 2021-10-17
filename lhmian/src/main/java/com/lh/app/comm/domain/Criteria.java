package com.lh.app.comm.domain;

import lombok.Data;

@Data
public class Criteria {
   
   private String id;
   private int pageNum = 1;
   private int amount = 10;
   
   private String type;
   
   private String keyword;
   public Criteria() {}
   public Criteria(int pageNum, int amount) {
      this.pageNum = pageNum;
      this.amount = amount;
   }
   
   private String preType;
   
   public String[] getTypeArr() {
	   return type == null ? new String[]{} : type.split("");
   }
   
}
