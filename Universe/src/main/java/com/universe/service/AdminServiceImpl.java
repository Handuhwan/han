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
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public List<MemberVO> getlistWithPaging(Criteria cri) {
		return mapper.getlistWithPaging(cri);
	}
	
	@Override
	public void admin_member_forced_evictionCheck(MemberVO mvo) throws Exception {
		 mapper.admin_member_forced_evictionCheck(mvo);
		
	}

}
