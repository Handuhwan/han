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
		
		return mapper.idCheck(id);
	}
	@Override
	public void register(MemberVO member) {
		mapper.insert(member);
		
		mapper.insert_auth(member);
		
	}

}
