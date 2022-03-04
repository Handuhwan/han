package com.universe.domain;

import lombok.Data;

@Data
public class UserVO {
	
	private int usernumber;
    private String id;
    private String pwd;
    private String name;
    private String nickname;
    private String userimg;
    private String zip_num;
    private String address1;
    private String address2;
    private String phone;
    private int grade;
    private String indate;
    private int usercount;
    private String status;
    private String intro;
    private int point;
    private String usedropdate;
    private int usedrop;
    private int gradecount;

}
