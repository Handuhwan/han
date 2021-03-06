package com.universe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.universe.criteria.Criteria;
import com.universe.domain.MemberVO;
import com.universe.domain.ReportVO;
import com.universe.mapper.AdminMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service 
@AllArgsConstructor 
public class AdminServiceImpl implements AdminService {
	
	
	@Setter(onMethod_ = @Autowired)
	private AdminMapper mapper;
	
	@Override
	public int getTotal(Criteria cri) {
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public List<MemberVO> getlistWithPaging(Criteria cri) {
		return mapper.getlistWithPaging(cri);
	}
	
	//status를 변경하기 위한
	@Override
	public void admin_member_forced_checked(String block,String id) throws Exception {
		mapper.admin_member_forced_checked(id,block);
	}
	
	//value(신고이유)값을 admin_report에 저장하기 위한
	@Override
	public void Admin_Reason(ReportVO rvo) {
		System.out.println("rvo값 : "+rvo);
		mapper.Admin_Reason(rvo);
		mapper.Role_change(rvo.getReported_id());
	}
	
	//admin_alert.jsp에 리스트를 출력하기 위한
	@Override
	public List<ReportVO> admin_alert() {
		
		return mapper.admin_alert();
	}
	
	//검색기능
	@Override
	public List<MemberVO> adminmenu(String sta) {
		return mapper.adminmenu(sta);
	}
	
	//카테고리별 출력
	@Override
	public List<MemberVO> allList() {
		return mapper.allList();
	}
	
	
	@Override
	public MemberVO nextPage(int usernumber) {
		
		return mapper.nextPage(usernumber);
	}
	
	@Override
	public MemberVO prevPage(int usernumber) {
		
		return mapper.prevPage(usernumber);
	}
	
	
	// admin_alert
	
	@Override
	public int alert_getTotalCount(Criteria cri) {
		
		return mapper.alert_getTotalCount(cri);
	}
	
	@Override
	public List<ReportVO> alert_getlistWithPaging(Criteria cri) {
		return mapper.alert_getlistWithPaging(cri);
	}
	
	@Override
	public List<ReportVO> admin_alertmenu(String sta) {
		return mapper.admin_alertmenu(sta);
	}
	
	@Override
	public ReportVO alert_nextPage(int usernumber) {
		return mapper.alert_nextPage(usernumber);
	}
	
	@Override
	public ReportVO alert_prevPage(int usernumber) {
		return mapper.alert_prevPage(usernumber);
	}
	
	@Override
	public List<ReportVO> alert_allList() {
		return mapper.alert_allList();
	}
	

}//fin