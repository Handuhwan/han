package com.universe.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.universe.domain.MemberVO;
import com.universe.domain.ReportVO;
import com.universe.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
@AllArgsConstructor
public class MemberServiceimple implements MemberService {
	/*
	 * @Autowired private findDAO findDAO;
	 */

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
	
	
	@Override
	public List<MemberVO> findId(String name, String phone)throws Exception{
		System.out.println("name : " + name);
		System.out.println("폰 : " + phone);
		
		return mapper.findId(name, phone);
	}
	
	
	@Override
	public List<MemberVO> findPssword(String id, String name, String phone) throws Exception {
	
		return mapper.findPssword(id, name, phone);
	}
	
	
	
	
	@Override
	public void certifiedPhoneNumber(String phone, int randomNumber) {
		String api_key = "NCSSUMVY5ABKSOFL";
		String api_secret = "LJUFUINEXC5THBVMB22BOMLJTA5KXXL4"; 
		Message coolsms = new Message(api_key, api_secret); // 4 params(to, from, type, text) are mandatory. must be filled 
		
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phone); // 수신전화번호 
		params.put("from", phone); // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨 
		params.put("type", "SMS"); params.put("text", "우주마켓 인증번호는" + "["+randomNumber+"]" + "입니다."); // 문자 내용 입력 
		params.put("app_version", "test app 1.2"); // application name and version 
		try { 
			JSONObject obj = (JSONObject) coolsms.send(params); 
			System.out.println(obj.toString()); 
			} catch (CoolsmsException e) { 
				System.out.println(e.getMessage()); 
				System.out.println(e.getCode()); 
				}
		
	}
	
	@Override
	public int joinid(String id){
		System.out.println(id);
		return mapper.joinid(id);
	}
	
	@Override
	public int pwUpdate(String id, String memberPw2) {
		System.out.println("id: "+ id);
		System.out.println("pwd2"+memberPw2);
		return mapper.pwUpdate(id, memberPw2);
	}
	
	@Override
	public ReportVO controller(String id) {
		int check = mapper.controller(id);
		if(check==1) {
			ReportVO rvo = mapper.roles(id);
			return rvo;
		}else {
			return null;
		}
		
		
	}

}
