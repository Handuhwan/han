package com.universe.controller;

import java.security.Principal;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.taglibs.standard.tag.common.fmt.FormatDateSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.universe.criteria.Criteria;
import com.universe.criteria.PageVO;
import com.universe.domain.FaqVO;
import com.universe.domain.ProductVO;
import com.universe.domain.ReviewVO;
import com.universe.domain.UserVO;
import com.universe.service.MypageService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/mypage/*")
@AllArgsConstructor
@Log4j
public class MypageController {
	
	@Setter (onMethod_ = @Autowired)
	private MypageService service;
	
	@GetMapping("/mypage/{id}")
	public void mypage(@RequestParam("id") String id, Model model) {
		
		
		UserVO uvo = service.infomationAboutUser(id);
		
		id = uvo.getId();
		System.out.println("스토어 ID : "+id);
		
		service.storePlusCount(id);
		int userCount = service.selectUserCount(id);
		int pCount = service.selectProductCount(id);
		int faqCount = service.faqCount(id);
		int likeCount = service.likeCount(id);
		int reviewCount = service.reviewCount(id);
		System.out.println(faqCount);


		model.addAttribute("memberInfo", uvo);
		model.addAttribute("userCount", userCount);
		model.addAttribute("pCount", pCount);
		model.addAttribute("faqCount", faqCount);
		model.addAttribute("likeCount", likeCount);
		model.addAttribute("rCount", reviewCount);

	}
	
	@GetMapping("/new")
	public void newInsert() {
		
	}
	
	@GetMapping("/manage")
	public void manage(@RequestParam("id") String id, Model model, Criteria cri) {
		
		int total = service.manageTotalCount(cri);
		
		model.addAttribute("id", id);
		model.addAttribute("list", service.manageList(cri));
		model.addAttribute("pageMaker", new PageVO(cri, total));
		
	}
	
	@ResponseBody
	@GetMapping(value = "/manageRemove",
			produces = { MediaType.TEXT_PLAIN_VALUE })
	public String manageRemove(String id, int pno) {
		
		String result = Integer.toString(service.manageDelete(id, pno));
		return result;
	}
	
	@RequestMapping(value = "/details",
			method = {RequestMethod.POST, RequestMethod.GET})
	public void details(@RequestParam("id") String id, Model model) {
		
		model.addAttribute("id", id);
		
	}
	
	@ResponseBody
	@GetMapping("/details/sellList")
	public List<ProductVO> detailsSellList(String id, int no) { 
		
		List<ProductVO> sellList = service.detailsSellList(id, no);
		
		int size;
		size = sellList.size();
		
		for(int i=0; i<size; i++) {
			
			SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
			String indate = date.format(sellList.get(i).getIndate());
			
			sellList.get(i).setRealrealdate(indate);
			
		}
		return sellList;
	}
	
	@ResponseBody
	@GetMapping("/details/BuyList")
	public List<ProductVO> detailsBuyList(String id, int no) { 
		
		System.out.println("Details BuyList ID : "+id);
		
		List<ProductVO> buyList = service.detailsBuyList(id, no);
		
		int size;
		size = buyList.size();
		
		for(int i=0; i<size; i++) {
			
			SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
			String indate = date.format(buyList.get(i).getIndate());
			
			buyList.get(i).setRealrealdate(indate);
		}
		return buyList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/details/insertRV",
			method = RequestMethod.GET)
	public int insertReview(ReviewVO vo) {

		System.out.println("리뷰 작성 데이터 : "+vo);
		int result = service.ReviewInsert(vo);
		if(result == 1) {
			service.buyListUpdateRV(vo.getPno());
			service.updateMemberGrade(vo.getId(), vo.getGrade());
			System.out.println("구매내역 업데이트완료");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH },
			value = "/newNickname",
			consumes = "application/json; charset=utf-8",
			produces = { "application/text; charset=utf-8", org.springframework.http.MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> updateNickname(@RequestBody HashMap<String, String> newNickname, Principal principal) {
		
		String nickname = newNickname.get("newNickname");
		String id = principal.getName();
		
		return service.updateNickname(nickname, id)
				? new ResponseEntity<> (nickname, HttpStatus.OK)
				: new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}	
	
	@ResponseBody
	@RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH },
			value = "/newIntro",
			consumes = "application/json; charset=utf-8",
			produces = { "application/text; charset=utf-8", org.springframework.http.MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> updateIntro(@RequestBody HashMap<String, String> newIntro, Principal principal) {
		
		String intro = newIntro.get("text");
		String id = principal.getName();
		
		return service.updateIntro(intro, id)
				? new ResponseEntity<> (intro, HttpStatus.OK)
				: new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	

	@RequestMapping(value = "/paypay")
	public void paypay(String id,int amount) {
		System.out.println("paypay id : "+id);
		System.out.println("payamount : " +amount);
		int result = service.paypay(id, amount);
		System.out.println(result);
	}
	
	@RequestMapping(value = "/serchmanage")
	@ResponseBody
	public List<ProductVO> serchingmanage(String types,String keywords,String id) {

		List<ProductVO> list = new ArrayList<ProductVO>();
		
		list = service.serchingmanage(types, keywords, id);
		int size;
		size = list.size();
		DecimalFormat angkimotti = new DecimalFormat("###,###");
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		for(int i=0; i<size; i++) {
			
		
			String indate = date.format(list.get(i).getIndate());
			
			list.get(i).setRealrealdate(indate);
			
			int angang=Integer.parseInt(list.get(i).getPrice());
			System.out.println("가격 체인지 앙앙:"+angang);
			String ang = angkimotti.format(angang);
			System.out.println("가격 체인지 앙:"+ang);
			list.get(i).setPrice(ang);
		}
		
		
		
		
		
		return list;
	}
	
	
}
	

































