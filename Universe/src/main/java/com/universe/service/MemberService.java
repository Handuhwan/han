package com.universe.service;
<<<<<<< HEAD

=======

<<<<<<< HEAD

=======
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;

>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
import com.universe.domain.MemberVO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public interface MemberService {
	
	public int idCheck(String id);
	
	public void register(MemberVO member);
	
	
	public List<MemberVO> findId(String name, String phone)throws Exception;

	public void certifiedPhoneNumber(String phone, int randomNumber) ;
		
		
	}

	

	







	

 

