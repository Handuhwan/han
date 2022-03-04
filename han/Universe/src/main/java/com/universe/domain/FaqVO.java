package com.universe.domain;

import java.util.Date;

import lombok.Data;

@Data
public class FaqVO {
	
	private Long qno;
	private String id;
	
	private String reply;
	private String replyer;
	private Date replydate;
	private String realrealdate;

}
