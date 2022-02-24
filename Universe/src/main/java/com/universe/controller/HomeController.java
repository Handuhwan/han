package com.universe.controller;


import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.universe.domain.ProductVO;
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
		Date today = new Date();
		double Dtime= today.getTime();
		List<ProductVO> list = hservice.HomeList();
		int size = list.size();
		for(int i =0; size>i; i++) {
		
			
		double pdate = list.get(i).getIndate().getTime();
		int betweenTime = (int) Math.floor((Dtime-pdate) / 1000 / 60) ;
		int betweenHour = betweenTime / 60;
		int betweenDay = betweenTime / 60 / 24;
		String indate = null;
		
		if(betweenTime<1) {
			list.get(i).setRealrealdate("방금전");
			
		}else if(betweenTime < 60) {
			indate = Integer.toString(betweenTime);
			list.get(i).setRealrealdate(indate + " 분 전");
	
		}else if(betweenHour <24) {
			indate = Integer.toString(betweenHour);
			list.get(i).setRealrealdate(indate+"시간 전");
		
		}else if(betweenDay< 365) {
			list.get(i).setRealrealdate(betweenDay+"일 전");
			
		}else {
			list.get(i).setRealrealdate((betweenDay / 365) + "년");
	
		}
		
		
		}
		
		
		model.addAttribute("homelist",list);
		
		return "index";
	}
	
	
	
}
