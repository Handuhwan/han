package com.universe.domain;


import java.util.List;
import lombok.Data;

@Data
public class MemberVO {
	
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
<<<<<<< HEAD
    private int usedrop;
    private int gradecount;
    private String code;
    
=======
<<<<<<< HEAD
    private int usedrop;
=======
    private int usedrop;
>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
    private int gradecount;
<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
    private String code;

<<<<<<< HEAD
    private int gradeCount;

=======
>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
	private List<Member_authVO> authList;
	
}
