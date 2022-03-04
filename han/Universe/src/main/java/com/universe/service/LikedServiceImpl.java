package com.universe.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.universe.domain.ProductVO;
import com.universe.mapper.LikedMapper;

import lombok.Setter;

@Service
public class LikedServiceImpl implements LikedService {
	
	@Setter(onMethod_ = @Autowired)
	private LikedMapper mapper;
	
	@Override
	public List<ProductVO> likeList(String id, int no) {
		
		List<ProductVO> likeList = new ArrayList<ProductVO>();
		
		if(no == 0) {
			likeList = mapper.recentList(id);
		}else if(no == 1) {
			likeList = mapper.likeList(id);
		}else if(no == 2) {
			likeList = mapper.rowpriceList(id);
		}else {
			likeList = mapper.highpriceList(id);
		}
		return likeList;
	}
	
	@Override
	public int delete(String id, int pno) {
		return mapper.delete(id, pno);
	}
	
	@Override
	public int count(String id) {
		return mapper.count(id);
	}
	
	
}
