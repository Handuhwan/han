package com.universe.controller;

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
	
}
