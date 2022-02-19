package com.universe.controller;

import java.security.Principal;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.universe.domain.MemberVO;
import com.universe.mapper.Tbl_memberMapper;
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
	
	@PreAuthorize("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")
	@GetMapping("/mypage")
	public void mypage(Principal principal) {
		
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
		log.info("id : "+id);
		log.info("nickname : "+nickname);
		
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
		log.info("text : "+intro);
		log.info("id : "+id);
		
		return service.updateIntro(intro, id)
				? new ResponseEntity<> (intro, HttpStatus.OK)
				: new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	

}
	

































