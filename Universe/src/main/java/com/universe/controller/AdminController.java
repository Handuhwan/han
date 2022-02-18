package com.universe.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.universe.criteria.Criteria;
import com.universe.criteria.PageVO;
import com.universe.service.AdminService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@AllArgsConstructor
@Log4j
public class AdminController {
	
	@Setter(onMethod_ = @Autowired)
	private AdminService service;
	
	@GetMapping("/admin_login")
	public void adminLoginForm() {
		//아이디나 비밀번호가 틀렸을 때 경고 메세지를 띄워야함 
	}
	
	@GetMapping("/admin")
	public String adminMain(Criteria cri ,Model model) {
		model.addAttribute("list",service.getlistWithPaging(cri));
		int total  = service.getTotal(cri);
		model.addAttribute("pageMaker",new PageVO(cri, total));
		
	
		return "admin/admin";
	}
	
	@GetMapping("/admin_alert")
	public String adminAlert() {
		return "/admin/admin_alert";
	}
	
	 @RequestMapping("/adminLogout")
	 public ModelAndView logout(HttpSession session) {
		 session.invalidate();
	     ModelAndView mv = new ModelAndView("redirect:/");
	     return mv;
	 }
	 
	 
	

	
}
