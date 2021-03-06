package com.universe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.universe.domain.MemberVO;



public interface MemberMapper {
	
	public int idCheck(String id);
	
	public void insert(MemberVO member); // 회원가입
	
	public int insert_auth(MemberVO member);
	

	public List<MemberVO> findId(@Param("name") String name, @Param("phone")String phone)throws Exception;
	
	public String certifiedPhoneNumbe(String phone, int randomNumber);
	

}
