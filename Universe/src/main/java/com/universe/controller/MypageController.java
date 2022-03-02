package com.universe.controller;

import java.security.Principal;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.universe.domain.UserVO;
import com.universe.service.MypageService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/mypage/*")
@AllArgsConstructor
@Log4j
public class MypageController {
	
	@Setter (onMethod_ = @Autowired)
	private MypageService service;
	
	@GetMapping("/mypage")
	public void mypage(@RequestParam("id") String id, Model model) {
		
		
		UserVO uvo = service.infomationAboutUser(id);
		
		id = uvo.getId();
		
		service.storePlusCount(id);
		System.out.println("여기까지실행1");
		int userCount = service.selectUserCount(id);
		System.out.println("여기까지실행2");
		int pCount = service.selectProductCount(id);
		System.out.println("여기까지실행3");
		//List<ProductVO> plist = service.selectProductListById(id);
		int faqCount = service.faqCount(id);
		System.out.println(faqCount);
		System.out.println("여기까지실행4");
		log.info("방문자 수 : "+userCount);
		log.info("상품 수 : "+pCount);
		//log.info("상품리스트 : "+plist);
		
		model.addAttribute("memberInfo", uvo);
		
		model.addAttribute("userCount", userCount);
		model.addAttribute("pCount", pCount);
		//model.addAttribute("plist", plist);
		model.addAttribute("faqCount", faqCount);
		
 		
	}
	
	@GetMapping("/new")
	public void newInsert() {
		
	}
	
	@GetMapping("/manage")
	public void manage() {
		
	}
	
	@GetMapping("/details")
	public void details() {
		
	}
	
	@ResponseBody
	@RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH },
			value = "/newNickname",
			consumes = "application/json; charset=utf-8",
			produces = { "application/text; charset=utf-8", org.springframework.http.MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> updateNickname(@RequestBody HashMap<String, String> newNickname, Principal principal) {
		
		String nickname = newNickname.get("newNickname");
		String id = principal.getName();
		log.info("ID : "+id);
		log.info("Store name : "+nickname);
		
		return service.updateNickname(nickname, id)
				? new ResponseEntity<> (nickname, HttpStatus.OK)
				: new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}	
	
	@ResponseBody
	@RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH },
			value = "/newIntro",
			consumes = "application/json; charset=utf-8",
			produces = { "application/text; charset=utf-8", org.springframework.http.MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> updateIntro(@RequestBody HashMap<String, String> newIntro, Principal principal) {
		
		String intro = newIntro.get("text");
		String id = principal.getName();
		log.info("Intro : "+intro);
		log.info("ID : "+id);
		
		return service.updateIntro(intro, id)
				? new ResponseEntity<> (intro, HttpStatus.OK)
				: new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@RequestMapping(value = "/paypay")
	public void paypay(String id,int amount) {
		System.out.println("paypay id : "+id);
		System.out.println("payamount : " +amount);
		int result = service.paypay(id, amount);
		System.out.println(result);
	}
	
	
}
	

































