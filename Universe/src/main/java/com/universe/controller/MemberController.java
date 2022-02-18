package com.universe.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;
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
	
	
	@GetMapping("/join")
	public void memberView() { //회원가입
		
	}
	
	@GetMapping("/checkUserid.do")
	public @ResponseBody int checkUserid(@RequestParam("check") String id) { // @ResponseBody json형식으로 리턴
		int result = service.idCheck(id);
		log.info("result(아이디체크 ajax) : " + result);
		
		return result;
	}
	@PostMapping("/memberinsert")
	public String memberInsert(MemberVO member) {
		
		String inputPass = pwencoder.encode(member.getPwd());
		member.setPwd(inputPass);
		
		service.register(member);
		
		return "redirect:/";
	}
	//카카오 아이디 로그인, 로그인
	@RequestMapping(value = "/login",method = {RequestMethod.GET,RequestMethod.POST} )
	public void login() {
		
		 }
	
	@GetMapping("/findPwd")
	public void findPwd() {
	
	}
	@GetMapping("/memberdrop")
	public void memberdrop() {
	
	}
	
}


	
	


