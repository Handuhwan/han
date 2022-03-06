package com.universe.service;


import com.universe.domain.TradeVO;

public interface TradeService {
	
	public TradeVO tradestart(String saler,int pno, String buyer); 
	//거래 내용 불러오기

	public int buyOK(int tno,String buyer,int pno,String saler);
	// 구매자 확정
	public int salerOK(int tno,String saler,int pno,String buyer);
	//판매자 확정
	public int tradecancel(TradeVO tvo);
	//거래 취소
	

}
