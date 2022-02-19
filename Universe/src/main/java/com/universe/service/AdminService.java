package com.universe.service;

import java.util.List;

import com.universe.criteria.Criteria;
import com.universe.domain.MemberVO;

public interface AdminService {
	
	public int getTotal(Criteria cri);
	
	public List<MemberVO> getlistWithPaging(Criteria cri);
	
	void admin_member_forced_evictionCheck(MemberVO dto) throws Exception;
	

}