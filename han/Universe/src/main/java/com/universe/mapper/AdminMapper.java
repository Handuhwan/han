package com.universe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.universe.criteria.Criteria;
import com.universe.domain.MemberVO;
import com.universe.domain.ProductVO;
import com.universe.domain.ReportVO;

public interface AdminMapper {
	
	//admin.jsp부분
	
	public int getTotalCount(Criteria cri);
	
	public List<MemberVO> getlistWithPaging(Criteria cri); // 페이징위한
	
	//status를 변경하기 위한
	public void admin_member_forced_checked(@Param("id")String id,@Param("block")String block) throws Exception;
	
	//value(신고이유)값을 admin_report에 저장하기 위한
	public int Admin_Reason(ReportVO rvo);
	
	//검색기능
	public List<MemberVO> adminmenu(String sta);
	
	//카테고리별 출력
	public List<MemberVO> allList();
	
	public MemberVO nextPage(int usernumber);
	public MemberVO prevPage(int usernumber);
	
	
	//alert 부분
	
	//admin_alert.jsp에 리스트를 출력하기 위한
	public List<ReportVO> admin_alert();
	
	public int alert_getTotalCount(Criteria cri);
	
	public List<ReportVO> alert_getlistWithPaging(Criteria cri); // 페이징위한
	
	//검색기능
	public List<ReportVO> admin_alertmenu(String sta);
	
	//카테고리별 출력
	public List<ReportVO> alert_allList();
	
	public ReportVO alert_nextPage(int usernumber);
	public ReportVO alert_prevPage(int usernumber);
	

}
