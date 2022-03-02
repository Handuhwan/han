package com.universe.mapper;

import java.util.List;

import com.universe.domain.ProductVO;

public interface ProductMapper {

	public void ProductInsert(ProductVO pvo);
	
	public List<ProductVO> recentList(String id);
	public List<ProductVO> viewcountList(String id);
	public List<ProductVO> highPriceList(String id);
	public List<ProductVO> rowPriceList(String id);
	
}
