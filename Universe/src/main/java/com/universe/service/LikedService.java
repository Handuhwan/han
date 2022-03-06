package com.universe.service;

import java.util.List;

import com.universe.domain.ProductVO;

public interface LikedService {
	
	public List<ProductVO> likeList(String id, int no);
	
	public int delete(String id, int pno);
	
	public int count(String id);

}
