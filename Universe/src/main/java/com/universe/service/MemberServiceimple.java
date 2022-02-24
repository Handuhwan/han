package com.universe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.universe.domain.MemberVO;
import com.universe.mapper.MemberMapper;


import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class MemberServiceimple implements MemberService {
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public int idCheck(String id) {
		System.out.println("서비스 id실행 "+id);
		return mapper.idCheck(id);
	}
	@Override
	public void register(MemberVO member) {
		System.out.println("여기");
		mapper.insert(member);
		System.out.println("여기1");
		mapper.insert_auth(member);
		System.out.println("여기2");
	}

}
