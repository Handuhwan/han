package com.universe.criteria;

import lombok.Data;

@Data
public class Criteria {

	private int pageNum; // 몇페이지 
	private int amount; // 레코드수
	
	private String type; //제목에서 내용에서 검색
	private String keyword; // 검색 단어
	
	public Criteria() {
		this(1,10); //기본 생성자 
		// this 같은클래쓰 매개변수가있는 생성자 호출;
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		
	}
	
	public String[] getTypeArr() {
		return type == null ?  new String[] {} : type.split(""); // 분할 
	}
}
