package com.universe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.universe.domain.ProductVO;

public interface LikedMapper {
	
	public List<ProductVO> recentList(String id);
	public List<ProductVO> likeList(String id);
	public List<ProductVO> rowpriceList(String id);
	public List<ProductVO> highpriceList(String id);
	
	public int delete(@Param("id")String id, @Param("pno")int pno);
	
	public int count(String id);

}