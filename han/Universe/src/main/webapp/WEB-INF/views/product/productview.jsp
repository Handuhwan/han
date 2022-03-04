<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../header.jsp"%>

	<div class="container">
		<h3 style="margin-bottom:30px; font-weight:600">현재 인기 상품입니다.</h3>
		<c:forEach items="${best }" var="best">
		<div class="col-md-3">
		<a href="/product/prodcutview?pno=${best.pno }" style="text-decoration:none;">
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
				<span class="pull-right"><img src="/resources/images/alert.png">신고하기</span>
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



</script>



<%@ include file="../footer.jsp"%>