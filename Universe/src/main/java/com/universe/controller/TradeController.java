package com.universe.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.universe.domain.TradeVO;
import com.universe.service.TradeService;

import lombok.AllArgsConstructor;
import lombok.Data;

@Controller
@RequestMapping("/trade/*")
@AllArgsConstructor

@Data
public class TradeController {
	
	private TradeService tservice;
	
	
	@RequestMapping("/trade")
	public void trade(Model model, @RequestParam("saler") String saler,@RequestParam("pno") int pno, @AuthenticationPrincipal Authentication auth ) {
		System.out.println("trade실행");
		System.out.println("trade 번호 : "+pno);
		String buyer = auth.getName();
		
		TradeVO tvo = new TradeVO();
		tvo	= tservice.tradestart(saler, pno, buyer);
		//tvo.setSaler(saler);
		System.out.println(tvo);
		if(tvo!= null){
			System.out.println("tvo가 null이아닙니다");
			model.addAttribute("info", tvo);
		}
		
		
		
	}
	@RequestMapping("/buyOK")
	@ResponseBody
	public int buyOK(int tno,String buyer,int pno,String saler) {
		
		System.out.println("구매확정 시작");
		System.out.println("거래번호 :" +tno);
		
		return tservice.buyOK(tno, buyer, pno,saler);
	}
	@RequestMapping("/saleOK")
	@ResponseBody
	public int saleOK(int tno,String saler,int pno,String buyer) {
		System.out.println("buyer");
		System.out.println("판매확정 시작");
		System.out.println("거래번호 :" +tno);
		
		return tservice.salerOK(tno, saler, pno, buyer);
		
	}
	@RequestMapping("/tradecancel")
	@ResponseBody
	public int tradecancel(TradeVO vo) {
		System.out.println("거래취소 시작");
		
		return tservice.tradecancel(vo);
	}
	

}
