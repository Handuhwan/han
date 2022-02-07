package com.universe.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class AdminLoginSuccessHandler implements AuthenticationSuccessHandler {
	//회원가입한 계정으로 로그인 했을때 인덱스 페이지로 이동 , 관리자 계정으로 로그인 했을떄 /adm/adminmanager로 이동 
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication auth) throws IOException, ServletException {
		
		List<String> roleNames= new ArrayList<>();
		auth.getAuthorities().forEach(authlist ->{
			
			roleNames.add(authlist.getAuthority());
		});
		
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/adm/admin");
			return;
		}
		if(roleNames.contains("ROLE_MEMBER")) {
			response.sendRedirect("/");
			return;
		}
		response.sendRedirect("/");
	}

}
