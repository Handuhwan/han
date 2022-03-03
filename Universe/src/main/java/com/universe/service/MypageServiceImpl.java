package com.universe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.universe.criteria.Criteria;
import com.universe.domain.ProductVO;
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
	public List<ProductVO> manageList(Criteria cri) {
		
		return mapper.manageList(cri);
	}
	
	 @Override
	public int manageTotalCount(Criteria cri) {
		
		return mapper.manageTotalCount(cri);
	}
	 
	 @Override
	public int manageDelete(String id, int pno) {
		 
		return mapper.manageDelete(id, pno);
	}
}


































