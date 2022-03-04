package com.universe.service;

import java.util.List;

import com.universe.domain.ChatVO;

public interface ChatService {
	
	public List<ChatVO> chatroomCheck(String id,String person,int pno);
	
	public List<ChatVO> chatroompersonCheck(String id,String person,int pno);
	
	public List<ChatVO> chatlog(String me,String person,int pno);
	
	public void chatinput(String me,String person,int pno,String chat);

	public void chatdel(String me,String person,int pno);
}
