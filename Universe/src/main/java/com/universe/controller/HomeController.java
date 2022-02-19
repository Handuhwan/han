package com.universe.controller;


import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.universe.service.HomeService;

import lombok.AllArgsConstructor;
import lombok.Data;


@Controller
@AllArgsConstructor
@Data
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private HomeService hservice;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model ) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		model.addAttribute("homelist",hservice.HomeList());
		
		return "index";
	}
	
	
	
}
