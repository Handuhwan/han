package com.universe.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.universe.domain.ChatVO;
import com.universe.service.ChatService;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/chat/*")
@AllArgsConstructor
@Data
@Log4j
public class ChatController {
	
	private ChatService cservice;
	
	@RequestMapping(value = "/chat")
	public void chatroom(Model model,@RequestParam("person") String person,@RequestParam("pno") int pno,@AuthenticationPrincipal Authentication prin) {
		System.out.println("채팅실행");
		System.out.println("판매자아이디 : "+person);
		System.out.println("판매번호 : "+pno);
		String id = prin.getName();
		System.out.println("로그인한 아이디: "+id);		
		model.addAttribute("crlist", cservice.chatroomCheck(id, person, pno));
		
	}
	@RequestMapping(value = "/chatlog")
	@ResponseBody
	public List<ChatVO> chatlog(String me,String person,int pno) {
		
		
		return cservice.chatlog(me, person, pno);
	}
	@RequestMapping(value = "/chatinput")
	@ResponseBody
	public int chatinput(String me,String person,int pno,String chat) {
		int result = 1;
		
		cservice.chatinput(me, person, pno, chat);
		
		return result;
	}
	@RequestMapping(value = "/chatdel")
	@ResponseBody
	public int chatdel(String me,String person,int pno) {
		int result = 1;
		
		cservice.chatdel(me, person, pno);
		System.out.println("채팅삭제 완료");
		return result;
	}
	
}
