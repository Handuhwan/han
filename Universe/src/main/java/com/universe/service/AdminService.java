package com.universe.service;

import java.util.List;

import com.universe.criteria.Criteria;
import com.universe.domain.MemberVO;
import com.universe.domain.ReportVO;

public interface AdminService {
	
	public int getTotal(Criteria cri);
	
	public List<MemberVO> getlistWithPaging(Criteria cri);
	
	//status를 변경하기 위한
	public void admin_member_forced_checked(String id,String block) throws Exception;
	
	//admin_alert.jsp에 리스트를 출력하기 위한
	public List<ReportVO> admin_alert();
	
	//value(신고이유)값을 admin_report에 저장하기 위한
	public void Admin_Reason(ReportVO rvo);
	
	public List<MemberVO> adminmenu(String sta);
	
	public List<MemberVO> allList();
	
}
