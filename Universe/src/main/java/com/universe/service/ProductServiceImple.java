package com.universe.service;

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
	public ProductVO Productview(int pno) { // 상품 view
		
		mapper.productviewcount(pno);
		
		return mapper.Productview(pno);
	}
	
	@Override
	public List<ProductVO> bestproduct() { // best상품
		// TODO Auto-generated method stub
		return mapper.bestproduct();
	}
	@Override
	public List<ProductVO> productsalernew(String id) { //view판매자정보 가져오기
		
		return mapper.productsalernew(id);
	}
	
	@Override
	public int productjjim(int pno, String id) {
		System.out.println("pno : "+pno+" id:"+id);
		mapper.productjjim(pno, id);//찜 in
		mapper.pjjimup(pno);
		
		return mapper.productjjimcount(pno);
	}
	
	@Override
	public int productjjimdel(int pno, String id) {
		
		mapper.productjjimdel(pno, id);//찜 삭제
		mapper.pjjimdown(pno);
		
		return mapper.productjjimcount(pno);
	}
	@Override
	public int productjjimcheck(int pno, String id) { //찜체크 버튼
			
		return mapper.productjjimcheck(pno, id);
	}
	
}
