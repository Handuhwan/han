package com.universe.service;

import java.util.List;

import com.universe.domain.ProductVO;

public interface ProductService {

	
	
	public void ProductInsert(ProductVO pvo); // 상품등록
	
	public ProductVO Productview(int pno); // 상품보기
	
	public List<ProductVO> bestproduct(); // 베스트상품 
	
	public List<ProductVO> productsalernew(String id);// view 하단 오른쪽 판매자 최근 2개값

	public int productjjim(int pno,String id); //찜하기 ajax
	
	public int productjjimdel(int pno,String id);// 찜 삭제 ajax
	
	public int productjjimcheck(int pno,String id); // 찜 체크 버튼

}
