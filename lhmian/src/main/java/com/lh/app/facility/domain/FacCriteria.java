package com.lh.app.facility.domain;

import lombok.Data;

@Data
public class FacCriteria {
	
  //10/06 id 추가 
   private String id;
   
   private int pageNum = 1;
   private int amount = 10;
   private String type;
   private String keyword;
   public FacCriteria() {}
   public FacCriteria(int pageNum, int amount) {
      this.pageNum = pageNum;
      this.amount = amount;
   }
   
   public String[] getTypeArr() {
	   return type == null ? new String[]{} : type.split("");
   }
}
