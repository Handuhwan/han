package com.universe.criteria;

import lombok.Data;

@Data
public class PageVO {

	private int startPage;
	private int endPage;
	private boolean prev,next;
	
	private int total;
	private Criteria cri;
	
	public PageVO(Criteria cri , int total) {
		this.cri = cri;
		this.total = total;
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0)) * 10; //Math.ceil : 소수점을 올림해준다.
		this.startPage = this.endPage - 9; // 페이지 1~10까지 표시
		
		int realEnd = (int)(Math.ceil((total * 1.0) / cri.getAmount()));
		//50개의 레코드일때 10개씩 출력한다면 5페이지가 최고 페이지가 된다
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
			//10개 이하일때  페이지 넘버는 1개만 나오게끔 하는 20이면 2개만 1,2
		}
		this.prev = this.startPage >1;
		this.next = this.endPage < realEnd;
		
	}
	
}
