package com.universe.controller;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.universe.criteria.Criteria;
import com.universe.domain.FaqVO;
import com.universe.service.FaqService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/faq")
@AllArgsConstructor
@Log4j
public class FaqController {
	
	@Setter (onMethod_ = @Autowired)
	private FaqService service;
	
	//URL 기준으로 동작할 수 있게 작성
	
		//작업 URL           http : 전송방식

		//등록  /mypage/new, post
		//조회  /mypage/:rno, get
		//삭제  /mypage/:rno, delete
		//수정  /mypage/:rno, put or patch
		//페이지 /mypages/pages/:rno/:page, get
	
	// consumes = 클라이언트가 보내는 content타입이 명시한 미디어 타입과 같아야한다. (ex : gson / json etc...), 입력방는 방식,형식
	// produces = 여기에 명시한 미디어 타입과 같을 때에 해당 type으로 리스폰스를 보내준다. , 넘어가는 형식
	// ResponseEntity = 정상적인 데이터인지 비정상적인 데이터인지 구분하며, 데이터와 함께 Http헤더의 '상태'메세지를 '같이' 전달한다.
	// requestBody = json 데이터를 원하는 타입으로 바인딩한다. 대부분 json데이터를 서버에 보내서 원하는 타입의 객체로 변환하는 용도.
	// 댓글이 추가된 숫자를 확인해서 브라우저에서 200K 혹은 500 Internal Server Error를 반환한다.
		
		
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/new",
			consumes = "application/json",
			produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> register(@RequestBody FaqVO vo){
		
		log.info("문의등록 내용 : "+vo);
		int insertCount = service.register(vo);
		
		log.info("insertCount : "+insertCount);
		return insertCount == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}//문의등록
	
	@GetMapping(value = "/pages/{id}/{page}", 
			produces = {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<FaqVO>> getList(@PathVariable("page") int page, @PathVariable("id") String id) {
		
		Criteria cri = new Criteria(page, 5);
		
		Date today = new Date();
	    double Dtime= today.getTime();
		
		List<FaqVO> list = service.getListWithPaging(cri, id);
		int size = list.size();
	    for(int i=0; size>i; i++) {
	      
		    double pdate = list.get(i).getReplydate().getTime();
		    int betweenTime = (int) Math.floor((Dtime - pdate) / 1000 / 60) ;
		    int betweenHour = betweenTime / 60;
		    int betweenDay = betweenTime / 60 / 24;
		    String indate = null;
		    
		    if(betweenTime < 1) {
		       list.get(i).setRealrealdate("방금 전");
		         
		    }else if(betweenTime < 60) {
		       indate = Integer.toString(betweenTime);
		       list.get(i).setRealrealdate(indate + " 분 전");
		   
		    }else if(betweenHour < 24) {
		       indate = Integer.toString(betweenHour);
		       list.get(i).setRealrealdate(indate+"시간 전");
		      
		    }else if(betweenDay < 365) {
		       list.get(i).setRealrealdate(betweenDay+"일 전");
		         
		    }else {
		       list.get(i).setRealrealdate((betweenDay / 365) + "년 전");
		   
		    }
	    }
		return new ResponseEntity<>(list, HttpStatus.OK);
	}//문의목록
	
	@DeleteMapping(value="/{qno}", 
		produces = { MediaType.TEXT_PLAIN_VALUE} )
	public ResponseEntity<String> remove(@PathVariable("qno") Long qno) {
		
		return service.delete(qno) == 1
			? new ResponseEntity<>("success", HttpStatus.OK) 
			: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}//문의삭제
	
	@ResponseBody
	@GetMapping(value = "/faqcount")
	public ResponseEntity<String> faqcount(String id) {
		
		log.info("카운트할 ID : "+id);
		
		String result = Integer.toString(service.counting(id));
		
		return new ResponseEntity<> (result, HttpStatus.OK);
	}	
}
	

































