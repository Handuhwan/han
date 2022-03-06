package com.universe.service;

import org.springframework.stereotype.Service;

<<<<<<< HEAD
import com.universe.domain.TradeVO;
import com.universe.mapper.TradeMapper;

import lombok.AllArgsConstructor;

@Service

@AllArgsConstructor
public class TradeServiceImple implements TradeService {
	
	private TradeMapper tmapper;
	
	@Override
		public TradeVO tradestart(String saler, int pno, String buyer) {
			TradeVO tvo = new TradeVO();
			
			if(buyer.equals(saler)) {
				System.out.println("자신입니다");
				tvo = tmapper.salerview(pno);
				System.out.println("자기자신입니다");
				//자기 자신일 때, 상대 인포 및 상품정보
			}else {
				
				int check = tmapper.selectbuingcheck(saler, pno, buyer);
				//해당 품목과 자신과 거래중인가 체크
				System.out.println("자기자신이아닙니다");
				if(check == 1) {
				tvo = tmapper.buyerview(pno);
				//자기 자신이 아닐 때, 상대 인포 및 상품정보
				System.out.println("거래이력이 존재합니다");
				}else {
				tmapper.productchange(pno);
				tmapper.tradeinsert(saler, pno, buyer);
				//거래 인서트
				tvo = tmapper.buyerview(pno);
				System.out.println("인서트합니다");
				//인서트 후 불러오기
				} // 속 else end
			} // 밖에 else end
			
			
			return tvo;
		}
	@Override
	public int buyOK(int tno,String buyer,int pno,String saler) {
		
		int check = 0;
		tmapper.buyOK(tno); // 구매확정
		
		if(tmapper.productstatuscheck(pno)!=1) { //0 product 확인
			check = tmapper.tradecheck(tno); // 0
			if(check == 1) {
				tmapper.productcheck(pno);
				System.out.println("금액 입출금 시작");
				tmapper.salend(tno, saler);
				tmapper.buyend(tno, buyer);
				System.out.println("금액 입출금 끝");
				
			}
		}
		
		
		
		return check;
	}
	
	@Override
	public int salerOK(int tno, String saler, int pno,String buyer) {
		int check = 0;
		tmapper.saleOK(tno); // 판매확정

		if(tmapper.productstatuscheck(pno)!=1){
			check= tmapper.tradecheck(tno);
			if(check== 1) {
				tmapper.productcheck(pno);
				System.out.println("금액 입출금 시작");
				tmapper.salend(tno, saler);
				tmapper.buyend(tno, buyer);
				System.out.println("금액 입출금 끝");
			}
		}
		
		
		return check;
	}
	
	@Override
	public int tradecancel(TradeVO tvo) {
		System.out.println("여기");
		int check =tmapper.cancelcheck(tvo.getTno());
		System.out.println("여기까지 시작");
			if(check==0) {
				System.out.println("취소가능 조건");
				tmapper.productchange(tvo.getPno());
				tmapper.cancel(tvo.getTno());
			}
		
		
		return check;
	}
=======
import lombok.AllArgsConstructor;

@Service

@AllArgsConstructor
public class TradeServiceImple implements TradeService {

>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
}
