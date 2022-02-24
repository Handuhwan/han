package com.universe.service;

import org.springframework.stereotype.Service;

import com.universe.domain.ProductVO;
import com.universe.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.Data;

@Service
@AllArgsConstructor
@Data
public class ProductServiceImple implements ProductService {
	
	private ProductMapper mapper;
	
	@Override
	public void ProductInsert(ProductVO pvo) { // 상품 등록
		
		mapper.ProductInsert(pvo);
		
	}
	
}
