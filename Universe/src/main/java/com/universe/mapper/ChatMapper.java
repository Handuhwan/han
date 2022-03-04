package com.universe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.universe.domain.ChatVO;

public interface ChatMapper {
	
	public List<ChatVO> mychatroom(String id);
	
	public List<ChatVO> mypersonchatroom(String id);
	
	public List<ChatVO> chatroomCheck(@Param("id") String id,@Param("pno") int pno);

	public void chatroominsert1(@Param("id") String id,@Param("person") String person, @Param("pno") int pno);
	
	public void chatroominsert2(@Param("id") String id,@Param("person") String person, @Param("pno") int pno);
	
	public List<ChatVO> chatlog(@Param("person") String person ,@Param("me") String me , @Param("pno") int pno);
	
	public void chatinput(@Param("person") String person ,@Param("me") String me , @Param("pno") int pno ,@Param("chat") String chat);

	public void chatdel(@Param("person") String person ,@Param("me") String me , @Param("pno") int pno);
	public void chatlogdel(@Param("person") String person ,@Param("me") String me , @Param("pno") int pno);
}
