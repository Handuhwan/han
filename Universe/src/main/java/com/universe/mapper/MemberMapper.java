package com.universe.mapper;


import com.universe.domain.MemberVO;


public interface MemberMapper {
	
	
	public int idCheck(String id);
	
	public void insert(MemberVO member); // 회원가입
	
	public int insert_auth(MemberVO member);
	
	public String home(MemberVO member); //카카오톡 로그인
}
