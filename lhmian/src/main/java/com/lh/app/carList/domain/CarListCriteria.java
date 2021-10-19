package com.lh.app.carList.domain;

import lombok.Data;

@Data
public class CarListCriteria {
   
   private int pageNum = 1;
   private int amount = 10;
   private String type;
   private String keyword;
   public CarListCriteria() {}
   public CarListCriteria(int pageNum, int amount) {
      this.pageNum = pageNum;
      this.amount = amount;
   }
   
   private String preType;
   
   public String[] getTypeArr() {
	   return type == null ? new String[]{} : type.split("");
   }
}
