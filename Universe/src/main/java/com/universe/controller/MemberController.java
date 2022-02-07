package com.universe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.universe.domain.MemberVO;
import com.universe.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@AllArgsConstructor
@Log4j
public class MemberController {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;
	
	
	@GetMapping("/join.do")
	public void memberView() { //회원가입
		
	}
	
	@GetMapping("/checkUserid.do")
	public @ResponseBody int checkUserid(@RequestParam("check") String id) { // @ResponseBody json형식으로 리턴
		int result = service.idCheck(id);
		log.info("result(아이디체크 ajax) : " + result);
		
		return result;
	}
	@PostMapping("/memberinsertpro.do")
	public String memberInsert(MemberVO member) {
		
		String inputPass = pwencoder.encode(member.getPwd());
		member.setPwd(inputPass);
		
		service.register(member);
		
		return "redirect:/";
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
}
