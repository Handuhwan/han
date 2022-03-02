package com.universe.service;

import java.util.List;

import com.universe.domain.FaqVO;
import com.universe.domain.ProductVO;
import com.universe.domain.UserVO;

public interface MypageService {
	
		// 로그인한 회원정보 불러오기
		public UserVO infomationAboutUser(String id);

		// 스토어명 및 스토어소개 수정
		public boolean updateNickname(String nickname, String id);
		public boolean updateIntro(String intro, String id);
		
		// 스토어 방문자수 출력 및 카운트추가
		public int storePlusCount(String id);
		public int selectUserCount(String id);
		
		// 상품출력 및 상품개수 출력
		public List<ProductVO> selectProductListById(String id);
		public int selectProductCount(String id);
		
		// 상품문의 개수 출력
		public int faqCount(String id);
		
		
		// paypay충전
		public int paypay(String id,int amount);
}
















































