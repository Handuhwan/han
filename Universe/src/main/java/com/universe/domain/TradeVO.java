package com.universe.domain;

import java.util.Date;

<<<<<<< HEAD
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
@Data
public class TradeVO {

    private int tno ;
    private int pno ;
    private String buyer ;
    private String saler ;
    private int amount ;
    private int buystatus ;
    private int salestatus ;
   
    private Date tradedate ;
    private String content;
    
    private String img1;
    private String title;
    private String nickname;
    private String name;
    private String userimg;
=======
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
>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
    
	
	
}
