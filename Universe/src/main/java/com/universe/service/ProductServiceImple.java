package com.universe.service;

import java.util.ArrayList;
import java.util.List;

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
	
	@Override
	public List<ProductVO> productList(String id, int no) {
		
		List<ProductVO> plist = new ArrayList<ProductVO>();
		
		if(no == 0) {
			plist = mapper.recentList(id);
		}else if(no == 1) {
			plist = mapper.viewcountList(id);
		}else if(no == 2) {
			plist = mapper.rowPriceList(id);
		}else {
			plist = mapper.highPriceList(id);
		}
		return plist;
	}

}
