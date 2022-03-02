package com.universe.mapper;

import java.util.List;

<<<<<<< HEAD
=======
import org.apache.ibatis.annotations.Param;

>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
import com.universe.domain.ProductVO;

public interface ProductMapper {

<<<<<<< HEAD
	public void ProductInsert(ProductVO pvo);
	
	public List<ProductVO> recentList(String id);
	public List<ProductVO> viewcountList(String id);
	public List<ProductVO> highPriceList(String id);
	public List<ProductVO> rowPriceList(String id);
	
=======
	
	public void ProductInsert(ProductVO pvo); //상품등록
	
	public ProductVO Productview(int pno); // 상품보기
	
	public List<ProductVO> bestproduct(); // 베스트상품 뽑기
	
	public void productviewcount(int pno);//상품 조회수
	
	public List<ProductVO> productsalernew(String id);// view 하단 오른쪽 판매자 최근 2개값

	public void productjjim(@Param("pno") int pno,@Param("id") String id); // 찜하기 ajax

	public void pjjimup(int pno); //찜 카운터 추가 ajax
	
	public void productjjimdel(@Param("pno") int pno,@Param("id") String id); //찜삭제 ajax
	
	public void pjjimdown(int pno); //찜 카운터 삭제 ajax
	
	public int productjjimcount(int pno); // 찜 카운터 ajax
	
	public int productjjimcheck(@Param("pno") int pno,@Param("id") String id); //찜 체크 버튼 1 0
>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
}
