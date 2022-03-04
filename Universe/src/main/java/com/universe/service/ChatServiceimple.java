package com.universe.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.universe.domain.ChatVO;
import com.universe.mapper.ChatMapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
@Data
public class ChatServiceimple implements ChatService {
		
	private ChatMapper cmapper;
	
	@Override
		public List<ChatVO> chatroomCheck(String id, String person, int pno) {
			System.out.println("채팅서비스 시작");
			System.out.println("서비스 내아이디 : "+id);
			System.out.println("서비스 판매자 아이디 : "+person);
			System.out.println("판매번호 : " +pno);
			List<ChatVO> clist = new ArrayList<ChatVO>(); 
			
		if(id.equals(person)) { // 본인 채팅방 끌고올떄
			System.out.println("1번 조건 실행");
			clist = cmapper.mychatroom(id);
			
		}else if(!id.equals(person)) { // 채팅방 생성 유무;
			System.out.println("2번 조건 실행");
			clist = cmapper.chatroomCheck(id, pno);
			int size = clist.size();
			if(size==0 && pno!=0 ) {
				System.out.println("2-1번 조건 실행");
				cmapper.chatroominsert1(id, person, pno);
				cmapper.chatroominsert2(id, person, pno);
				System.out.println("2-1번 조건 끝");
			}
			clist = cmapper.mychatroom(id);
		}
					
			return clist;	
		}
	
		@Override
		public List<ChatVO> chatroompersonCheck(String id, String person, int pno) {
			System.out.println("개인채팅서비스 시작1");
			System.out.println("개인서비스 내아이디1 : "+id);
			System.out.println("개인서비스 판매자 아이디 1: "+person);
			System.out.println("개인판매번호 : " +pno);
			
			List<ChatVO> clist = new ArrayList<ChatVO>();
			
			
				clist = cmapper.mypersonchatroom(id);
				
				int size = clist.size();
				if(size==0 && pno == 0 ) { // 채팅방 생성 유무;
					System.out.println("개인 1-1번 조건 실행");
					cmapper.chatroominsert1(id, person, pno);
					cmapper.chatroominsert2(id, person, pno);
					System.out.println("개인 1-1번 조건 끝");
					
				}
				clist = cmapper.mypersonchatroom(id);
			
			return clist;
		}
	
		
		
		
		
		@Override
		public List<ChatVO> chatlog(String me, String person, int pno) {
			System.out.println("채팅로그 불러오기");
			
			List<ChatVO> list = cmapper.chatlog(person, me, pno);
		
			return list;
		}
		@Override
		public void chatinput(String me, String person, int pno,String chat) {
			System.out.println("채팅 시작");
			cmapper.chatinput(person, me, pno, chat);
			System.out.println("채팅 인서트 끝");
		}
		
		@Override
		public void chatdel(String me, String person, int pno) {
			System.out.println("채팅 삭제");
			cmapper.chatdel(person, me, pno);
			cmapper.chatlogdel(person, me, pno);
			System.out.println("채팅 삭제완료");
			
		}
}
