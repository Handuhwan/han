package com.universe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.Data;

@Controller
@RequestMapping("/trade/*")
@AllArgsConstructor


public class TradeController {
	
	
	@RequestMapping("/trade")
	public void trade() {
		System.out.println("trade실행");
	}
	

}
