package com.universe.service;

import java.util.List;

import com.universe.criteria.Criteria;
import com.universe.domain.FaqVO;

public interface FaqService {
	
	public int register(FaqVO vo); // 등록
	
	public int delete(Long qno); // 삭제
	
	public List<FaqVO> getListWithPaging(Criteria cri, String id); // 페이지리스트
	
	public int counting(String id);

}
