package com.universe.controller;

import java.io.File;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.universe.domain.ProductVO;
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
	
	private String getFolder() { //파일 이름 넣기 매소드이므로  항상 맨밑으로 보내서 밑에서 유지한다
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator); // 날짜분리
	}
	
	@RequestMapping(value="/productview")
	public void productview() {
		
	}
}
