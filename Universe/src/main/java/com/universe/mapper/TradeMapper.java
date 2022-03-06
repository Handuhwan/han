package com.universe.mapper;


import org.apache.ibatis.annotations.Param;

import com.universe.domain.TradeVO;

public interface TradeMapper {

	public void tradeinsert(@Param("saler")String saler,@Param("pno") int pno, @Param("buyer") String buyer);
	//구매신청시 발생 mapper
	
	public int selectbuingcheck(@Param("saler")String saler,@Param("pno") int pno, @Param("buyer") String buyer);
	//구매자가 새로고침하고 다시 페이지로 돌아왔을떄 현재 제품을 구매중인가 아닌가를 체크
	
	public TradeVO buyerview(int pno);
	//구매자 입장에서 보는 상대 info 및 상품정보
	
	public TradeVO salerview(int pno);
	//판매자 입장에서 보는 상대 info 및 상품정보
	
	public int buyOK(int tno); // 구매확정
	
	public int saleOK(int tno); // 판매확정
	
	public int tradecheck(int tno); // 구매확정 과 판매확정이 되었을때
	
	public void buyend( @Param("tno")int tno,@Param("buyer")String buyer);
	//구매자 뺴기
	public void salend(@Param("tno")int tno,@Param("saler")String saler);
	//판매자 플러스
	
	public int productstatuscheck(int pno);
	//상품 스테이터스 값 확인
	
	public void productcheck(int pno);
	//판매완료로 바꾸기
	public void productchange(int pno);
	//인서트할떄 거래 중 으로 바뀜
	
	public int cancelcheck(int tno);
	// 캔슬 유무를 체크
	public void productstatuschange(int pno);
	//상품 스테이터스 되돌림
	public void cancel(int tno);
	//trade 테이블에서 해당 거래 내역을 삭제

}
