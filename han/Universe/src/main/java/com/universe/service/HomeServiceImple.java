package com.universe.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.universe.criteria.Criteria;
import com.universe.domain.ProductVO;
import com.universe.mapper.HomeMapper;

import lombok.AllArgsConstructor;
import lombok.Data;


@Service
@AllArgsConstructor
@Data
public class HomeServiceImple implements HomeService {

	private HomeMapper mapper;
	
	@Override
	public List<ProductVO> HomeList() {
		System.out.println("시작");
		return mapper.Homelist();
	}
	@Override
	public List<ProductVO> getlistWithPaging(Criteria cri) {
		int red=25;	//레코드 몇개 뽑을껀지 숫자에 적는다.
		cri.setAmount(red);
		
		return mapper.getlistWithPaging(cri);
	}
	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}
	@Override
	public ProductVO nextPage(int pno) {
		// TODO Auto-generated method stub
		return mapper.nextPage(pno);
	}
	@Override
	public ProductVO prevPage(int pno) {
		// TODO Auto-generated method stub
		return mapper.prevPage(pno);
	}

}
