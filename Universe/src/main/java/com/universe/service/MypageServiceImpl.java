package com.universe.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.universe.criteria.Criteria;
import com.universe.domain.ProductVO;
import com.universe.domain.ReviewVO;
import com.universe.domain.UserVO;
import com.universe.mapper.mypageMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class MypageServiceImpl implements MypageService {
	
	@Setter(onMethod_ = @Autowired)
	private mypageMapper mapper;
	
	@Override
	public UserVO infomationAboutUser(String id) {
		return mapper.infomationAboutUser(id);
	}
	
	@Override
	public boolean updateNickname(String nickname, String id) {
		return mapper.updateNickname(nickname, id) == 1;
	}
	
	@Override
	public boolean updateIntro(String intro, String id) {
		return mapper.updateIntro(intro, id) == 1;
	}
	
	@Override
	public int storePlusCount(String id) {
		return mapper.storePlusCount(id);
	}
	
	@Override
	public int selectUserCount(String id) {
		return mapper.selectUserCount(id);
	}
	
	@Override
	public int selectProductCount(String id) {
		return mapper.selectProductCount(id);
	}
	
	@Override
	public int faqCount(String id) {
		return mapper.faqCount(id);
	}
	
	@Override

	public int likeCount(String id) {
		return mapper.likeCount(id);
	}
	
	@Override
	public int reviewCount(String id) {
		return mapper.reviewCount(id);
	}
	

	public int paypay(String id, int amount) {
		
		return mapper.paypay(id, amount);
	}

	
	@Override
	public List<ProductVO> manageList(Criteria cri,String id) {
		
		return mapper.manageList(cri,id);
	}
	
	@Override
	public int manageTotalCount(Criteria cri) {
		
		return mapper.manageTotalCount(cri);
	}
	 
	@Override
	public int manageDelete(String id, int pno) {
		 
		return mapper.manageDelete(id, pno);
	}

	@Override
	public List<ProductVO> detailsSellList(String id, int no) {
		
		List<ProductVO> detailsSellList = new ArrayList<ProductVO>();
		
		if(no == 1) {
			detailsSellList = mapper.detailsSellAllList(id);
		}else if(no == 2) {
			detailsSellList = mapper.detailsSellIngList(id);
		}else if(no == 3) {
			detailsSellList = mapper.detailsSoldList(id);
		}
		System.out.println(detailsSellList);
		return detailsSellList;
	}
	
	@Override
	public List<ProductVO> detailsBuyList(String id, int no) {
		
		List<ProductVO> detailsBuyList = new ArrayList<ProductVO>();
		
		if(no == 1) {
			detailsBuyList = mapper.detailsBuyAllList(id);
		}else if(no == 2) {
			detailsBuyList = mapper.detailsBuyIngList(id);
		}else if(no == 3) {
			detailsBuyList = mapper.detailsBuyEndList(id);
		}
		
		System.out.println(detailsBuyList);
		return detailsBuyList;
	}
	
	@Override
	public int ReviewInsert(ReviewVO vo) {
		System.out.println("리뷰인서트 확인");
		return mapper.ReviewInsert(vo);
	}
	
	@Override
	public void buyListUpdateRV(int pno) {
		System.out.println("바이리스트 리뷰업데이트 확인");
		mapper.buyListUpdateRV(pno);
		
	}
	
	@Override
	public void updateMemberGrade(String id, int grade) {
		System.out.println("리뷰정상등록 & 멤버평점 업데이트");
		mapper.updateMemberGrade(id, grade);
		
	}
	
	@Override
	public List<ProductVO> serchingmanage(String types, String keywords, String id) {
		System.out.println("서치 서비스 실행");
		
		List<ProductVO> list = new ArrayList<ProductVO>();
			if(types=="") {
				list = mapper.nullserchingmanage(types, keywords, id);
			}else {
			
				list = mapper.serchingmanage(types, keywords, id);
			}
		
		return list;
		
	}
	

}


































