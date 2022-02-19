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
import com.universe.domain.MemberVO;
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
	 
	 @RequestMapping("/admin_member_forced_eviction")
	    public ModelAndView admin_member_forced_eviction(String id) throws Exception {
	        
	        //유저의 아이디를 삭제 (강제탈퇴) 시키기위해서 vo에 담는다.
	        MemberVO mvo = new MemberVO();
	        mvo.setId(id);
	        
	        //회원탈퇴 체크를 하기위한 메소드, 탈퇴 시키려는 회원의 아이디가 있는지 검사한후에 result 변수에 저장한다.
	        service.admin_member_forced_evictionCheck(mvo);
	        
	 
	        ModelAndView mav = new ModelAndView();
	        
	        if(mvo.getId() != null) {    //회원 강제탈퇴가 성공했을시 출력되는 뷰
	            
	            mav.setViewName("admin/admin");
	            
	            mav.addObject("message", "회원이 정상적으로 강제탈퇴 처리 되었습니다.");
	            
	        }else {
	            
	            mav.setViewName("admin/admin");
	            
	            mav.addObject("message", "회원 목록에 없는 회원입니다. 다시 확인해주세요.");
	        }
	        
	        
	        return mav;
	                
	    }
	 
	 
	

	
}
