package com.universe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.universe.service.MypageService;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Controller
@RequestMapping("/mypage/*")
@AllArgsConstructor
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

}
