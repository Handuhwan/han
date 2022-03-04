package com.universe.controller;

import java.io.File;
import java.security.Principal;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.universe.domain.ProductVO;
import com.universe.domain.ReportVO;
import com.universe.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@AllArgsConstructor
@Log4j
@Data
public class ProductController {
	
	private ProductService pservice;
	
	
	@RequestMapping(value = "/productinsert")
	public String ProductInsert(ProductVO pvo,@RequestParam("imgs") MultipartFile[] upload,Principal prin) {
		
		
		pvo.setId(prin.getName());
		System.out.println("파일저장실행");

		String uploadFolder = "c:\\Pupload";
		String[] sqlimg = new String[3];
		int cnt =0;
		for(MultipartFile multi : upload) {
			
			if(multi.getSize() != 0) {
			log.info("C파일이름 확인 : " +multi.getOriginalFilename());
			log.info("C파일 사이즈 확인 : " +multi.getSize());
			String uploadFileName = multi.getOriginalFilename(); // 오리지날 파일이름
			//uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("//")+1);
			
			UUID uuid = UUID.randomUUID();
			uploadFileName= uuid.toString()+"_"+uploadFileName; //파일이름 조합해서 만들기
			
			//File uploadPath = new File(uploadFolder,getFolder());
			//log.info("C업로드 경로"+uploadPath);
			
			//if(uploadPath.exists() == false) {
				//uploadPath.mkdirs();
			//}
			
			File savefile = new File(uploadFolder,uploadFileName);
			log.info("저장되는 파일: "+savefile);
			
			String saveURL = savefile.toString().substring(11);
			log.info("save 저장소 : "+saveURL);
			
			try {
				System.out.println("저장을실행합니다");
				sqlimg[cnt] = saveURL;
				multi.transferTo(savefile);
				System.out.println("img:"+cnt+"방의 이미지"+sqlimg[cnt]);
				cnt++;
			}catch(Exception e) {
				e.printStackTrace();
			}
		} // if end
		} // for end
		String ex="";
		pvo.setImg2(ex);
		pvo.setImg3(ex);
		pvo.setImg1(sqlimg[0]);
		if(sqlimg[1]!=null) {
			pvo.setImg2(sqlimg[1]);
		}
		if(sqlimg[2]!=null) {
			pvo.setImg3(sqlimg[2]);
		}
		
	
		System.out.println("여기까지실행");
		System.out.println(pvo);
		pservice.ProductInsert(pvo);
		System.out.println("여기까지실행2");
		
		return "redirect:/mypage/manage";
	}
	

	
	@RequestMapping(value="/productview")
	public void productview(@RequestParam("pno") int pno,Model model,@AuthenticationPrincipal Authentication auth) {
		System.out.println(pno +"값");
		ProductVO pvo = new ProductVO();
		int jjimcheck = 0;
		
		
		
		if(auth!=null) {
			
			String id = auth.getName();
			jjimcheck = pservice.productjjimcheck(pno, id);
			model.addAttribute("jjimcheck", jjimcheck);
		}
		
		
		pvo = pservice.Productview(pno);
		List<ProductVO>productsaler = new ArrayList<ProductVO>();
		
		productsaler = pservice.productsalernew(pvo.getId());
		
		
		Date today = new Date();
		double Dtime= today.getTime();
		
		double pdate = pvo.getIndate().getTime();
		int betweenTime = (int) Math.floor((Dtime-pdate) / 1000 / 60) ;
		int betweenHour = betweenTime / 60;
		int betweenDay = betweenTime / 60 / 24;
		String indate = null;
		if(betweenTime<1) {
			pvo.setRealrealdate("방금전");
			
		}else if(betweenTime < 60) {
			indate = Integer.toString(betweenTime);
			pvo.setRealrealdate(indate + " 분 전");
	
		}else if(betweenHour <24) {
			indate = Integer.toString(betweenHour);
			pvo.setRealrealdate(indate+"시간 전");
		
		}else if(betweenDay< 365) {
			pvo.setRealrealdate(betweenDay+"일 전");
			
		}else {
			pvo.setRealrealdate((betweenDay / 365) + "년");
	
		}
		
		model.addAttribute("saler",productsaler);
		model.addAttribute("best",pservice.bestproduct()); //best상품
		model.addAttribute("view",pvo );
		
		System.out.println("con productview end");
	}

	@RequestMapping(value = "/productList")
	public @ResponseBody List<ProductVO> recentList(String id, int no) {
		
		List<ProductVO> plist = new ArrayList<ProductVO>();
		System.out.println("상품리스트 ID : "+id);
		plist = pservice.productList(id, no);
		
		
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


	@RequestMapping(value = "/productjjim")
	@ResponseBody
	public int productjjim(int pno,@AuthenticationPrincipal Authentication prin) { // jjim in
		System.out.println("ajax돌아감 찜");
		String id = prin.getName();
		
		
		int count = pservice.productjjim(pno, id);
		System.out.println("ajax돌아감 찜 끝남");
		return count;
	}
	@RequestMapping(value = "/productjjimdown")
	@ResponseBody
	public int productjjimdown(int pno,@AuthenticationPrincipal Authentication prin) {
		System.out.println("ajax 찜 다운 실행");
		String id = prin.getName();
		
		int count = pservice.productjjimdel(pno, id);
		System.out.println("ajax 찜 삭제 끝남");
		return count;
	}
	
	@GetMapping("/complain")
	public String complain(ReportVO report,Principal prin) {
		System.out.println("신고하기 시작");
		report.setReported_id(prin.getName());
		System.out.println("ajax서비스 시작");
		pservice.complain(report);
		return "redirect:/";
	}
}

