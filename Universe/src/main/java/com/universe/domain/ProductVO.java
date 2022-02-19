package com.universe.domain;

import lombok.Data;

@Data
public class ProductVO {
	
	private int pno;
	private String title;
	private String content;
	private String kind;
	private String price;
	private String indate;
	private int quantity;
	private String location;
	private String condition;
	private String exchange;
	private String status;
	private String id;
	private int likecount;
	private int viewcount;
	
}
