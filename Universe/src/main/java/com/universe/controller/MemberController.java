
package com.universe.controller;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.spi.http.HttpHandler;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.ResponseEntity;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.universe.domain.MemberVO;
import com.universe.domain.ReportVO;
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
	 
	//아이디 찾기
	

	
	  @RequestMapping(value="/findPwd") 
	  public String findId() throws Exception{
	  return"/member/findPwd"; 
	  }
	 
	
	//문자인증
	 
	 @RequestMapping(value = "/findphonecheck", method = RequestMethod.GET) 
	 @ResponseBody 
	 public String sendSMS(@RequestParam("phone")String phone) { // 휴대폰 문자보내기 
		 System.out.println(phone);
		 int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성 
		 service.certifiedPhoneNumber(phone,randomNumber); 
		 return Integer.toString(randomNumber); 
		 
		 }
	 
	
	 
	 
	 @RequestMapping(value="/findPwdView", method=RequestMethod.POST)
		public String findId(MemberVO memberVO,Model model) throws Exception{
			log.info("name"+memberVO.getName());
			log.info("phone"+memberVO.getPhone());
					
			model.addAttribute("member", service.findId(memberVO.getName(), memberVO.getPhone()));
			return "/member/findPwdView";
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
	
	
	
	@GetMapping("/checkjoinid.do")
	@ResponseBody
	public int checkjoinid(String id) { // @ResponseBody json형식으로 리턴
		System.out.println(id);
		
		int result = service.joinid(id);		
		log.info("결과값 = " + result);
		
		if(result != 0) {
			System.out.println("if : "+result);
			return result;	// 중복 아이디가 존재
			
		} else {
			System.out.println("if : "+result);
			return result;	// 중복 아이디 x
			
		}	

	}

	
	
	// 비밀번호 찾기
	/*
	 * @RequestMapping(value="/findpassword", method=RequestMethod.POST) public
	 * String findPassword(MemberVO memberVO,Model model) throws Exception{
	 * log.info("email"+memberVO.getId()); log.info("name"+memberVO.getName());
	 * log.info("phone"+memberVO.getPhone());
	 * 
	 * model.addAttribute("member", service.findPssword( memberVO.getId(),
	 * memberVO.getName(), memberVO.getPhone())); return "/member/findpassword"; }
	 */
	
	/*
	 * @GetMapping("/findpassword") public String findPasswordview() {
	 * return"/member/findpassword"; }
	 */
	@RequestMapping(value="/findpassword")
	public void pwUpdate(MemberVO vo,Model model){
		System.out.println("들어옴");
		
		model.addAttribute("id", vo.getId());
		
		
	}
	@RequestMapping("/updatepassword")
	public String updatepassword(MemberVO memberVO) {
		String inputPass = pwencoder.encode(memberVO.getPwd());
		System.out.println("중간");
		memberVO.setPwd(inputPass);
		System.out.println("마지막");
		System.out.println(memberVO.getId());
		int check = service.pwUpdate(memberVO.getId(),memberVO.getPwd());
		
		System.out.println(check+"업데이트가 성공적으로 끝났습니다.");
		if(check==1) {
			return "/member/login";
		}else {
			return"/member/findPwd";
		}
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
	public void error(@AuthenticationPrincipal Authentication auth) { // login을 했을때 정지 먹은사람들 안내하는 페이지 혹은 로그인 후 판매등록이나 기타 등의 제한을 막고 여기 페이지로 안내함
		System.out.println("여기");
		String id =auth.getName();
		ReportVO rvo = service.controller(id);
		if(rvo != null) {
			//model.addAttribute("report", rvo);
		}

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



