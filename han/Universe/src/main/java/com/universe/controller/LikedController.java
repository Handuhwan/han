package com.universe.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.universe.domain.ProductVO;
import com.universe.service.LikedService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/liked/*")
@AllArgsConstructor
@Log4j
public class LikedController {
	
	@Setter (onMethod_ = @Autowired)
	private LikedService service;
	
	@RequestMapping(value = "/likeList")
	public @ResponseBody List<ProductVO> likeList(String id, int no) {
		
		List<ProductVO> plist = new ArrayList<ProductVO>();
		plist = service.likeList(id, no);
		
		Date today = new Date();
	    double Dtime= today.getTime();
		
		int size = plist.size();
	    for(int i=0; size>i; i++) {
	      
		    double pdate = plist.get(i).getIndate().getTime();
		    int betweenTime = (int) Math.floor((Dtime - pdate) / 1000 / 60) ;
		    int betweenHour = betweenTime / 60;
		    int betweenDay = betweenTime / 60 / 24;
		    
		    String indate = null;
		    
		    if(betweenTime < 1) {
		       plist.get(i).setRealrealdate("방금 전");
		         
		    }else if(betweenTime < 60) {
		       indate = Integer.toString(betweenTime);
		       plist.get(i).setRealrealdate(indate + " 분 전");
		   
		    }else if(betweenHour < 24) {
		       indate = Integer.toString(betweenHour);
		       plist.get(i).setRealrealdate(indate+"시간 전");
		      
		    }else if(betweenDay < 365) {
		       plist.get(i).setRealrealdate(betweenDay+"일 전");
		         
		    }else {
		       plist.get(i).setRealrealdate((betweenDay / 365) + "년 전");
		   
		    }
	    }
	    return plist;
	}
	
	
	@RequestMapping(value = "/likeRemove",
			method = RequestMethod.GET)
		public @ResponseBody String remove(@RequestParam("id") String id, @RequestParam(value = "pnoArr[]") String[] pnoArr) {
		
			String result = "ss";
			int size = pnoArr.length;
			
			for(int i=0; i<size; i++ ) {
				int aa = Integer.parseInt(pnoArr[i]);
				service.delete(id, aa);
				
			}
			return result;
				
		}// 찜 삭제
		
	@ResponseBody
	@GetMapping(value = "/likeCount")
	public ResponseEntity<String> faqcount(String id) {
		
		String result = Integer.toString(service.count(id));
		
		return new ResponseEntity<> (result, HttpStatus.OK);
	}// 찜 개수
	

}
