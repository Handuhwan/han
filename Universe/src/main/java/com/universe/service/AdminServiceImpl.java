package com.universe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.universe.criteria.Criteria;
import com.universe.domain.MemberVO;
import com.universe.mapper.AdminMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service 
@AllArgsConstructor 
public class AdminServiceImpl implements AdminService {
	
	
	@Setter(onMethod_ = @Autowired)
	private AdminMapper mapper;
	
	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public List<MemberVO> getlistWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getlistWithPaging(cri);
	}

}
