package com.universe.controller;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public void mypage() {
		
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
	
	@PostMapping(value = "/newNickname", produces = "application/text; charset=utf-8")
	public ResponseEntity<String> updateNickname(@RequestBody HashMap<String, String> nickname) {
		
		log.info("nickname : "+nickname.get("nickname"));
		String newNickname = nickname.get("nickname");
		
		return new ResponseEntity<String> (newNickname, HttpStatus.OK);
	}
	
	@PostMapping(value = "/newIntro", produces = "application/text; charset=utf-8")
	public ResponseEntity<String> updateIntro(@RequestBody String text) {
		
		log.info("newText : "+text);
		String newIntro = text.concat(text);
		return new ResponseEntity<String> (newIntro, HttpStatus.OK);
		
	}

}


































