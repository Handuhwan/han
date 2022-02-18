package com.universe.mapper;

import java.util.List;

import com.universe.criteria.Criteria;
import com.universe.domain.MemberVO;

public interface AdminMapper {
	
	public int getTotalCount(Criteria cri);
	
	public List<MemberVO> getlistWithPaging(Criteria cri); // 페이징위한

}
