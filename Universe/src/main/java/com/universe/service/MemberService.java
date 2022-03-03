package com.universe.service;

import com.universe.domain.MemberVO;

public interface MemberService {
	
	public int idCheck(String id);
	
	public void register(MemberVO member);
}
