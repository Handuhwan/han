package com.universe.service;

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
		public int selectProductCount(String id);
		
		// 상품문의 개수 출력
		public int faqCount(String id);
		
		// 찜 개수 출력
		public int likeCount(String id);
		
		// 후기 개수 출력
		public int reviewCount(String id);
		
		
}
















































