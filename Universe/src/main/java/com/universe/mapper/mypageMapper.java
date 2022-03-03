package com.universe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.universe.criteria.Criteria;
import com.universe.domain.ProductVO;
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
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
	public int likeCount(String id);
	
	public int reviewCount(String id);
	
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
	public int paypay(@Param("id") String id,@Param("amount") int amount);
<<<<<<< HEAD
	
	public List<ProductVO> manageList(Criteria cri);
	public int manageTotalCount(Criteria cri);
	public int manageDelete(@Param("id") String id, @Param("pno") int pno);
=======
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git

}
