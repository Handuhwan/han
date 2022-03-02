package com.universe.service;

import java.util.List;

import com.universe.domain.ProductVO;

public interface ProductService {

	public void ProductInsert(ProductVO pvo);
	
	public List<ProductVO> productList(String id, int no);
	
}
