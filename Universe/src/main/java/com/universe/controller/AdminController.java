package com.universe.controller;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.universe.criteria.Criteria;
import com.universe.criteria.PageVO;
import com.universe.domain.MemberVO;
import com.universe.domain.ReportVO;
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
	
	//admin로그인화면
	@GetMapping("/admin_login")
	public void adminLoginForm() {
		//아이디나 비밀번호가 틀렸을 때 경고 메세지를 띄워야함 
	}
	
	//admin list페이지
	@GetMapping("/admin")
	public String adminMain(Criteria cri ,Model model) {
		model.addAttribute("list",service.getlistWithPaging(cri));
		int total  = service.getTotal(cri);
		model.addAttribute("pageMaker",new PageVO(cri, total));
		
	
		return "admin/admin";
	}
	
	
	//admin_alert.jsp에 리스트를 출력하기 위한
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/admin_alert")
	public String adminAlert(Model model) {
		model.addAttribute("report", service.admin_alert());
		return "/admin/admin_alert";
	}
	
	
	//로그아웃
	 @RequestMapping("/adminLogout")
	 public ModelAndView logout(HttpSession session) {
		 session.invalidate();
	     ModelAndView mv = new ModelAndView("redirect:/");
	     return mv;
	 }
	 
	 
	 //회원 블락 기능
	 @PostMapping("/admin_member_forced_eviction")
		public String admin_member_forced_eviction(ReportVO rvo,@RequestParam("reasons") String reason,String block) throws Exception{
		 
		 
		
		 if(rvo.getReason() == null || rvo.getReason() == "") { //기타의 raido박스는 value값이 0이니까 밑의 textarea의 값을 가지고 오기 위해
			 rvo.setReason(reason);
			 
		 }
		 
		 System.out.println("이유씨"+rvo.getReason());
		 
			service.admin_member_forced_checked(block,rvo.getReported_id());
			service.Admin_Reason(rvo);
			
		//if(rvo.getAdmin_report() == "7") {
			
		//}
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

			Calendar cal = Calendar.getInstance();
			System.out.println("오늘 날짜: "+sdf.format(cal.getTime()));

			cal.add(Calendar.MONTH, 1); //한달 후
			cal.add(Calendar.DAY_OF_MONTH,7); //7일 후

			System.out.println("7일 후: "+sdf.format(cal.getTime()));

			
			
			return "redirect:/admin/admin";
		}
	 
	 
	 
	 
	 //admin 검색 기능
	 @ResponseBody
	 @GetMapping("/admin_menu")
	 public  List<MemberVO> AjaxstatusList(String menu){
		 List<MemberVO> list = new ArrayList<MemberVO>();
		 
		 if(menu ==null || menu=="") {
			list = service.allList();
		 }else {
		 System.out.println("현재 값"+menu);
		
		 System.out.println("최종값"+menu);
		 list =  service.adminmenu(menu);
		 }
		 
		 
		 System.out.println("control end");
		 System.out.println(list.size());
		 return list;
	                     
	 }
	

	
}//fin
