<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../header.jsp"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.member.point" var="meprice"/>
	<sec:authentication property="principal.member.id" var="meid"/>
</sec:authorize>
	<div class="container">
		<h3 style="margin-bottom:30px; font-weight:600">현재 인기 상품입니다.</h3>
		<c:forEach items="${best }" var="best">
		<div class="col-md-3">
		<a href="/product/productview?pno=${best.pno }" style="text-decoration:none;">
			<img style="width:150px; height:150px;" src="/Pupload/${best.img1 }">
			<h4><fmt:formatNumber value="${best.price }"/>원</h4>
		</a>	
		</div>
		</c:forEach>
		
	</div> <!-- container end -->

	<div class="container" style="margin-top:20px; padding-top:40px; border-top:1px solid; padding-bottom:40px; border-bottom:1px solid; margin-bottom:20px;">
	
		<div class="col-md-5">
		
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Wrapper for slides -->
		  <div class="carousel-inner pcarousel" role="listbox">
		  <c:if test="${view.img1 != null }">
		    <div class="item">
		      	<img style="width:445px;height:445px"  src="/Pupload/${view.img1 }" alt="...">
		    </div>
		  </c:if>
		  <c:if test="${view.img2 != null }">
		    <div class="item">
		      	<img style="width:445px;height:445px"  src="/Pupload/${view.img2 }" alt="...">
		    </div>
		  </c:if>
		  <c:if test="${view.img3 != null }">
		    <div class="item">
		      	<img style="width:445px;height:445px"  src="/Pupload/${view.img3 }" alt="...">
		    </div>
		  </c:if>
		  <!-- Controls -->
		  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			<img class="pleftarrow" src="/resources/images/go-back.png">
		   
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		  	<img class="prightarrow" src="/resources/images/next.png">
		  </a>
		</div>
	</div>
		</div> <!-- col md 5 end -->

	
		<div class="col-md-7">
		
			<div class="ptitle">
			<h4 class="pfont">${view.title }</h4>
			<h1><fmt:formatNumber value="${view.price }"/>원</h1>
			</div>
			<div class="pinfo">
				<span><img src="/resources/images/plove1.png"><span id="productlikecount" style="border-right:none; padding-right:0px;" id="">${view.likecount }</span></span>
				<span><img src="/resources/images/eye.png">${view.viewcount }</span>
				<span><img src="/resources/images/clock.png">${view.realrealdate }</span>
				<button style="font-weight:700; background:none; border:none; font-size:16px; color:#cfd4f4" type="button" class="pull-right btn btn-primary btn-sm btsbts" data-toggle="modal" data-target="#myModal">
				<img style="padding-bottom:6px; margin-right:6px;" src="/resources/images/alert.png">신고하기</button>
				<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header" style="border-bottom:none;">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel"><img style="margin-top: -8px;" src="/resources/images/alert.png">신고하기</h4>
	      </div>
	      <div class="modal-body" style="border-bottom: px solid #e5e5e5;">
			<div class="block_square">
			<span style="border:none;">신고 대상</span><input type="text" id="reported" value="${view.id }" name="reported_id" readonly placeholder="신고받는사람"></div> <!-- mypage주인 id : readonly로 출력되게 ${view.id} 였던가 -->
		  </div>
		  <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel" style="margin-bottom: 15px;">신고 이유</h4>
	        <textarea style="resize: none;" class="suspended" id="reporttext" name="report" placeholder="신고사유"></textarea>
	      </div>	
	      
	      <div class="modal-footer" style="text-align:center;">
	      	<p>대상 회원을 신고 하시겠습니까?</p>
	        <button type="button" class="btn_check" onclick="modalbye()">신고</button>
	        <button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- modal end -->
	
	
			</div> <!-- pinfo end -->
			<div class="pstatus">
			
			<div><h3 class=" pline">상품상태</h3><h3>${view.condition }</h3></div>
			<div><h3 class=" pline">교환여부</h3><h3>${view.exchange }</h3></div>
			<div><h3 class=" pline">배송비</h3><h3 style="color:#0000ff;">배송비 별도(직거래OK)</h3></div>
			<div><h3 class=" pline">거래지역</h3><h3>${view.location }</h3></div>	
			</div>
			<div class="pbutton">
				<c:if test="${jjimcheck == 0 or jjimcheck == null}">
				<button id="pjjimbutton" type="button" onclick="productviewjjim(${view.pno})"><img src="/resources/images/pjjim0.png">찜</button>
				</c:if>
				<c:if test="${jjimcheck == 1}">
				<button id="pjjimbutton" type="button" onclick="productviewjjimdown(${view.pno})"><img src="/resources/images/pjjim1.png">찜</button>
				</c:if>
				<button id="gotradebtn" type="button" onclick="gotradebtn('${view.id}','${view.pno }')"><img src="/resources/images/buy.png">구매하기</button>
				<button id="pchatbutton" type="button" onclick="location.href='/chat/chat?person=${view.id}&pno=${view.pno}'" ><img src="/resources/images/chat.png">채팅하기</button>
				
				
			</div>
		</div><!-- col md 7 end -->
	
	</div> <!-- con end -->
	
		<div class="container" style="margin-bottom:20px;">
		
		<div class="col-md-8" style="border-right:3px solid #cfd4f4;height:400px;">
			<h2 class="prealinfo">상품 정보</h2>
			<span style="padding-left:15px;">${view.content }</span>
		</div> <!-- col 8 end -->
		<div class="col-md-4">
			<h2 class="prealinfo">판매자</h2>
			<div class="psaler" >
				<c:if test="${saler[0].img2 == null}" ><!-- as로가져온값 -->
				<img style="width:70px;height:70px; border:1px solid #fff; border-radius:50%" 
					src="/resources/images/store.png">
				</c:if>
				<c:if test="${saler[0].img2 != null}" >
				<img style="width:70px;height:70px; border:1px solid #fff; border-radius:50%" 
					src="/Puload/${saler[0].img2}">
				</c:if>
				<span style="font-size:17px; padding-left:20px;">
				${saler[0].title } 님 <!-- as로가져온값 -->
				</span>
			</div>
			<div class="psalerdiv" style="text-align:center;">
				<c:forEach items="${saler}" var="sal">
				<a class="psalermore" onclick="itemcookie('${sal.img1}','${sal.pno }')" style="margin-right:20px;" href="/product/productview?pno=${sal.pno }">
					<span><fmt:formatNumber value="${sal.price }"/> 원</span>
					<img style="width:130px;height:130px;" src="/Pupload/${sal.img1 }">
					
				</a>
				</c:forEach>
		
			</div>
			<div style="text-align:center; margin-top:27px; padding-bottom:13px;">
				<a href="/mypage/mypage?id=${view.id }" style="font-size:18px;">${saler[0].title }님 판매 물품 더보기 ></a>
			</div>
			
			<div>
				
			</div>
		</div> <!-- col md 4 end -->
		
		
		</div><!-- con end -->
<script>





function gotradebtn(saler,pno){
	var p ="${view.price}"
	var mp ="${meprice}"
	var id ="${view.id}"
	var meid="${meid}"	
	
	if(meid==id){
		location.href="/trade/trade?saler="+saler+"&&pno="+pno
	}else{			
		if(mp>=p){
		location.href="/trade/trade?saler="+saler+"&&pno="+pno
		}else{
		alert("금액이 부족합니다.")
		}
	}

}
</script>



<%@ include file="../footer.jsp"%>