package com.universe.service;

import java.util.List;

import com.universe.criteria.Criteria;
import com.universe.domain.ProductVO;
import com.universe.domain.ReviewVO;
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
		

		// paypay충전
		public int paypay(String id,int amount);

		
		// 상품관리 페이지 리스트 출력
		public List<ProductVO> manageList(Criteria cri);
		public int manageTotalCount(Criteria cri);
		public int manageDelete(String id, int pno);
		
		// 구매내역, 판매내역 리스트출력
		public List<ProductVO> detailsSellList(String id, int no);
		public List<ProductVO> detailsBuyList(String id, int no);
		
		// 리뷰작성하기
		public int ReviewInsert(ReviewVO vo);
		
		// 리뷰작성후 리뷰카운트 업데이트
		public void buyListUpdateRV(int pno);
		
		// 리뷰가 정상적으로 추가되면 멤버업데이트
		public void updateMemberGrade(String id, int grade);

}
















































