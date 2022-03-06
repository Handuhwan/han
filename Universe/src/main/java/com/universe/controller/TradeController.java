package com.universe.controller;


import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.universe.domain.TradeVO;
import com.universe.service.TradeService;

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
