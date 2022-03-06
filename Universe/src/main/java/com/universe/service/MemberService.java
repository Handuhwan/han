package com.universe.service;

import java.util.List;


import com.universe.domain.MemberVO;

public interface MemberService {
	
	public int idCheck(String id);
	
	public int joinid(String id);
	
	public void register(MemberVO member);
	
	
	public List<MemberVO> findId(String name, String phone)throws Exception;
	
	public List<MemberVO> findPssword(String id, String name, String phone)throws Exception;
	
	public void certifiedPhoneNumber(String phone, int randomNumber) ;
		
		
	}

	

	







	

 

