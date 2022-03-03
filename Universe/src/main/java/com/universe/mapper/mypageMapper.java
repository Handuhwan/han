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
	
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
	public int likeCount(String id);
	
	public int reviewCount(String id);
	
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
	public int paypay(@Param("id") String id,@Param("amount") int amount);
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git

}
