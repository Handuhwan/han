package com.universe.mapper;

import org.apache.ibatis.annotations.Param;

import com.universe.domain.UserVO;

public interface mypageMapper {
	
	public UserVO infomationAboutUser(String id);
	
	public int updateNickname(@Param("nickname") String nickname, @Param("id") String id);
	public int updateIntro(@Param("intro") String intro, @Param("id") String id);
	
	public int storePlusCount(@Param("id") String id);
	public int selectUserCount(@Param("id") String id);

	public int selectProductCount(@Param("id") String id);
	
	public int faqCount(String id);
	
	public int likeCount(String id);
	
	public int reviewCount(String id);
	

}
