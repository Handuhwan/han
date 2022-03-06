package com.universe.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.universe.domain.MemberVO;
import com.universe.mapper.Tbl_memberMapper;
import com.universe.security.domain.AdminUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class AdminUserDetailService implements UserDetailsService {
	
	@Setter(onMethod_ = @Autowired)
	private Tbl_memberMapper mapper;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//username = id;
		MemberVO vo = mapper.read(username);
		
		log.warn("mapper result : " + vo);
		
		//return null;
		
		return vo == null ? null: new AdminUser(vo);
	}
}
