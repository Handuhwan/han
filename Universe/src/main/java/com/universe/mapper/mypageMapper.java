package com.universe.mapper;

import org.apache.ibatis.annotations.Param;

public interface mypageMapper {
	
	public int updateNickname(@Param("nickname") String nickname, @Param("id") String id);
	
	public int updateIntro(@Param("intro") String intro, @Param("id") String id);
	

}
