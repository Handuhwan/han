package com.universe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.universe.criteria.Criteria;
import com.universe.domain.FaqVO;

public interface FaqMapper {
	
	public int register(FaqVO vo); // 등록
	
	public int delete(Long qno); // 삭제
	
	public List<FaqVO> getListWithPaging(@Param("cri") Criteria cri, @Param("id") String id); // 페이지리스트
	
	public int counting(String id);

}
