package com.universe.domain;

import java.util.Date;

import lombok.Data;
@Data
public class TradeVO {

    private int tno ;
    private int pno ;
    private String buyer ;
    private String saler ;
    private int amount ;
    private int buystatus ;
    private int saletatus ;
    private Date tradedate ;
    
    private String img1;
    private String title;
    private String nickname;
    
	
	
}
