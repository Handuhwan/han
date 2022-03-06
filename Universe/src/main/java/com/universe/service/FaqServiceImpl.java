package com.universe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.universe.criteria.Criteria;
import com.universe.domain.FaqVO;
import com.universe.mapper.FaqMapper;

import lombok.Setter;

@Service
public class FaqServiceImpl implements FaqService {
	
	@Setter(onMethod_ = @Autowired)
	private FaqMapper mapper;
	
	@Override
	public int register(FaqVO vo) {
		return mapper.register(vo);
	}
	
	@Override
	public int delete(Long qno) {
		return mapper.delete(qno);
	}
	
	@Override
	public List<FaqVO> getListWithPaging(Criteria cri, String id) {
		return mapper.getListWithPaging(cri, id);
	}
	
	@Override
	public int counting(String id) {
		System.out.println("맵퍼 카운트 들어왔습니다");
		return mapper.counting(id);
	}
	
}
