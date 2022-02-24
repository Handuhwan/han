package com.universe.controller;


import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	@RequestMapping(value = "/login",method = {RequestMethod.GET,RequestMethod.POST} )
	public void login() {
		
		 }
	@GetMapping("/findPwd")
	public void findPwd() {
	
	}
	@GetMapping("/memberdrop")
	public void memberdrop() {
	
	}




	@RequestMapping(value = "/controller",method = {RequestMethod.GET,RequestMethod.POST})
	public void error(Principal prin) { // login을 했을때 정지 먹은사람들 안내하는 페이지 혹은 로그인 후 판매등록이나 기타 등의 제한을 막고 여기 페이지로 안내함
		
		//String id = prin.getName(); // login한 아이디를 가져옴
		
	}
	
	 @RequestMapping(value="/", method= RequestMethod.GET)
	    public String index() {
	        log.info("home controller");
	        return "APIExamNaverLogin";
	    }

	    @RequestMapping(value="/membercallback", method=RequestMethod.GET)
	    public String loginPOSTNaver(HttpSession session) {
	        log.info("callback controller");
	        return "callback";
	    }
	    
	    
	    
	    

}//fin


	
	


