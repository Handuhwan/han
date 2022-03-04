package com.universe.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.universe.criteria.Criteria;
import com.universe.domain.ReviewVO;
import com.universe.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
import lombok.Data;

@Service
@AllArgsConstructor
@Data
public class ReviewServiceImpl implements ReviewService {
	
	private ReviewMapper mapper;
	
	@Override
	public int count(String id) {
		
		return mapper.count(id);
	}
	
	@Override
	public int delete(int rno) {
		
		return mapper.delete(rno);
	}
	
	@Override
	public int insert(ReviewVO vo) {
		
		return mapper.insert(vo);
	}
	
	@Override
	public List<ReviewVO> reviewList(Criteria cri, String id) {
		
		return mapper.reviewList(cri, id);
	}

}
