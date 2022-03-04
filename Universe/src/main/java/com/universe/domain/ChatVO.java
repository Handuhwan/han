package com.universe.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ChatVO {

	private int cno;
	private int pno;
	private String me;
	private String id;
	private String person;
	private String chat;
	private String idchat;
	private String personchat;
	private String nickname;
	private Date indate;
	private String img1;
	private String title;
	private String userimg;
	private String status;
	private int count;
	
}
