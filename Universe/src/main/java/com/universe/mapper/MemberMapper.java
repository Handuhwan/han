package com.universe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.universe.domain.MemberVO;
import com.universe.domain.ReportVO;



public interface MemberMapper {
	
	public int idCheck(String id);
	
	public void insert(MemberVO member); // 회원가입
	
	public int insert_auth(MemberVO member);
	

	public List<MemberVO> findId(@Param("name") String name, @Param("phone")String phone)throws Exception;
	
	public List<MemberVO> findPssword(@Param("id") String id, @Param("name") String name, @Param("phone")String phone)throws Exception;

	public void updatePw(MemberVO member) throws Exception;

	
	public String certifiedPhoneNumbe(String phone, int randomNumber);
	
	public int joinid(String id);
	

	public int pwUpdate(@Param("id") String id, @Param("memberPw2")String memberPw2 );
	

	//에러 권한체크
	public int controller(String id);
	
	//권한없는자 이유 가져오기
	
	public ReportVO roles(String id);
}
