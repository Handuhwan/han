package com.universe.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	
	private int pno;
	private String title;
	private String content;
	private String kind;
	private String price;
	private Date indate;
	private int quantity;
	private String location;
	private String condition;
	private String exchange;
	private String status;
	private String id;
	private int likecount;
	private int viewcount;
	private String img1;
	private String img2;
	private String img3;
	
	private String realrealdate;
}
