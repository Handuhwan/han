package com.universe.service;

import java.util.List;

import com.universe.criteria.Criteria;
import com.universe.domain.ProductVO;

public interface HomeService {

	
	public List<ProductVO> HomeList();
	
	public List<ProductVO> getlistWithPaging(Criteria cri);

	public int getTotal(Criteria cri);
	
	public ProductVO nextPage(int bno);
	public ProductVO prevPage(int bno);

}
