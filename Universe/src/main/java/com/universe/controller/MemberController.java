package com.universe.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@RequestMapping(value="/findPwd")
	public void finpwd() {
		
	}
	@RequestMapping(value="/memberdrop")
	public void memberdrop() {
		
	}
	
	@GetMapping(value= "/joinsns")
	public void membersnsView(Model model, @RequestParam("id") String id,@RequestParam("name") String name) { //회원가입
			model.addAttribute("id",id);
			model.addAttribute("name", name);
	}
	@RequestMapping(value="/loginsns")
	public void loginsns(Model model, @RequestParam("id") String id) {
		model.addAttribute("id",id);
		
	}
	
	@GetMapping("/checkUserid.do")
	public @ResponseBody int checkUserid(String id) { // @ResponseBody json형식으로 리턴
		System.out.println("controller ajax start");
		
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
	@RequestMapping(value="/login")
	public void login() {
		
		
	}

	//네이버 로그인
	@RequestMapping(value="/naverlogin")
	public String isComplete(HttpSession session) {
		return"/login";
		}
	@RequestMapping(value="/callback")
	public String navLogin(HttpServletRequest request) throws Exception {
		return "/login";
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

}//fin
}
	
	


