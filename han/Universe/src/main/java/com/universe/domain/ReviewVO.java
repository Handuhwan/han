package com.universe.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int rno;
	private int pno;
	private String id;
	private String nickname;
	private Date indate;
	private int grade;
	private String content;
	private String title;
	private String img1;

	private String realrealdate;
}
