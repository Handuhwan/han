package com.universe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.universe.criteria.Criteria;
import com.universe.domain.ReviewVO;

public interface ReviewMapper {
	
	// 후기 저장하기
	public int insert(ReviewVO vo);
	
	// 후기 리스트출력
	public List<ReviewVO> reviewList(@Param("cri") Criteria cri, @Param("id") String id);
	
	// 후기 삭제하기
	public int delete(int rno);
	
	// 후기 카운트하기
	public int count(String id);
}
