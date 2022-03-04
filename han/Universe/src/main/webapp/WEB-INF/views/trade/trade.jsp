<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../header.jsp"%>

	<div class="container">
		<div class="col-md-12" style="margin-bottom: 290px;">
		<div class="tradebuy" >
			<p class="text-center tradeheader" >거래품목</p>
			<div style="display: flex;  border: 1px solid #d5d5d5;">
				<div>
				<img alt="" class="tradephoto" src="/resources/images/shotpadding.jpg">
					<button class="tradeheymama">이름</button>
				</div>	
					
					<div style="display:block;width: 24%; ; margin-left: 74px;">
						<div class="tradebordertop"></div>
							<button class="tradetuworking1">판매확정</button>
							<button class="tradetuworking">구매확정</button>
							<button class="tradetuworking">취소</button>
						<div class="tradeborderbottom"></div>
					</div>
					
					<div style="margin-left: 25px;">
				<img alt="" class="tradephoto" src="/resources/images/shotpadding.jpg">
					<button class="tradeheymama">이름</button>
				</div>	
			</div>
			
		<div class="tradeback">
			<div class="tradesan">
				<h2 class="text-center" style="margin-bottom:20px;">거래품목</h2>
				<div style="display: flex;">
					<div>
						<img alt="" class="tradephoto1" src="/resources/images/shotpadding.jpg">
					</div>
					
				<div class="user_info">
					<div class=" pull-left" style="margin-left:40px; font-size:15px;"><img src="/resources/images/coins.png" width="14" height="13" alt="오픈일 아이콘">
						가격&nbsp;:&nbsp;<span id="mymoeny">
						<input disabled="disabled" value="${memberInfo.point} 원" type="text" id="mypayplus" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></span>&nbsp;
						<c:if test="${memberInfo.id == logid}">
							<input type="hidden" id="mypayId" value="${memberInfo.id }">
							<span id="mypagepaybtn"class="tradepay">상품명</span>
							
						</c:if>

					</div>
					
					
					<div>
					<ul >
								 <li style="margin-top: 69px;">
								 	<a class="textline">
								 	 <textarea class="tradetextline"> 
								 	할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑 정보를 SMS나 이메일로 받아보실 수 있습니다. 
								 	단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.
									선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 
									회원가입 후 회원정보 수정 페이지에서 언제든지 수신여부를 변경하실 수 있습니다.
									 </textarea>
									</a>
								</li>
							  </ul>
					 </div>
				</div>
			</div>
		</div>
	
		</div>

		</div><!-- 12 -->
	</div> <!-- con end -->





<%@ include file="../footer.jsp"%>