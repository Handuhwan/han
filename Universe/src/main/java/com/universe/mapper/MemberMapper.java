package com.universe.mapper;


import com.universe.domain.MemberVO;


public interface MemberMapper {
	
	
	public int idCheck(String id);
	
	public void insert(MemberVO member);
	
	public int insert_auth(MemberVO member);
}
