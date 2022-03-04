package com.universe.mapper;

import java.util.List;

import com.universe.criteria.Criteria;
import com.universe.domain.ProductVO;

public interface HomeMapper {

	public List<ProductVO> Homelist();
	
	public int getTotalCount(Criteria cri);
	
	public List<ProductVO> getlistWithPaging(Criteria cri);

	public ProductVO nextPage(int pno);
	public ProductVO prevPage(int pno);
}
