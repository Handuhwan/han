package com.universe.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@AllArgsConstructor
@Log4j
public class AdminController {
	
	@GetMapping("/admin_login")
	public String adminLoginForm() {
		
		return "/admin/admin_login";
	}
	
	@GetMapping("/admin")
	public String adminMain() {
		return "/admin/admin";
	}
	
	@GetMapping("/admin_alert")
	public String adminAlert() {
		return "/admin/admin_alert";
	}
	
	public static void main(String[] args) {
	    Date today = new Date();
	    System.out.println(today);
	    
	    SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
	    SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss a");
	    
	    String Date = date.format(today);
	    String Time = time.format(today);
	        
	    System.out.println("Date: "+date.format(today));
	    System.out.println("Time: "+time.format(today));
		
	  }
	


	@GetMapping("/adminLogout")
	public String adminLogout() {
		return "redirect:/";
	}

	
}
