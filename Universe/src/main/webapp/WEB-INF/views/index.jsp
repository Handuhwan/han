<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp"%>
	

	<div class="container">
			<div class="col-md-12">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img style="height:250px; width:100%;" src="/resources/images/mainbanner1.jpg" alt="..."> <!--  임시 사진 -->
		    </div> <!-- item end  -->
		    <div class="item">
		      <img style="height:250px;  width:100%;" src="/resources/images/mainbanner3.jpg" alt="...">
		    </div>  <!-- item end  -->
		     <div class="item">
		      <img style="height:250px;  width:100%;" src="/resources/images/mainbanner4.jpg" alt="...">
		    </div>  <!-- item end  -->
		   
		  </div> <!-- item inner box -->
		
	
		</div><!-- 슬라이드 box end  -->
		
			</div> <!-- col md 12 end -->
			
			</div> <!-- container box end -->
			
			
			
		<div class="container" style="margin-top:40px; margin-bottom:90px;">
			<div class="col-md-12">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img style="height:250px; width:100%;" src="/resources/images/mainbanner2.jpg" alt="..."> <!--  임시 사진 -->
		    </div> <!-- item end  -->
		 
		  </div> <!-- item inner box -->
		
	
		</div><!-- 슬라이드 box end  -->
		
			</div> <!-- col md 12 end -->
			
			</div> <!-- container box end -->
		
		<div class="container">
			<div class="col-md-12">
				<h1 style="margin-bottom:70px;">Universe 상품 추천</h1>
				<div class="row">
				<c:forEach items="${homelist}" var="list">
  					<div class="col-sm-6 main_items">
    					<div class="thumbnail">
       						<a onclick="itemcookie('${list.img1}','${list.pno }')" href="/product/productview?pno=${list.pno }">
      						<input type="hidden" name="main" value="${list.img1 }">
      							<img src="/Pupload/${list.img1 }" alt="..." onclick="">
      						</a>
      						<div class="caption">
        					<p style="font-size:20px;">${list.title }</p>   					
        					<span style="font-size:16px; font-weight:600"><fmt:formatNumber value="${list.price }"/>원</span>
        					<span class="items_day" >${list.realrealdate}</span>
      						</div> <!-- 썸네일 내용 -->
    					</div> <!--  썸네일 end -->
    					
  					</div> <!-- col-md-3 box end -->
  				</c:forEach>	  	
  				
				</div> <!-- row end -->
				
				
			</div> <!-- 12 end 상품 박스 -->
			
			<div class="paging" style="text-align:center">
		<c:if test="${pageMaker.prev }">
			<a href="${pageMaker.startPage-1 }"><i class="fa  fa-angle-double-left"></i></a>
		</c:if>
		<div id="pagenums">
		<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
			<a href="${num }"  class="index_pagination ${pageMaker.cri.pageNum == num?'index_pagination_active':''}">${num }</a>
			
		</c:forEach>
		</div>
		<c:if test="${pageMaker.next }">
			<a href="${pageMaker.endPage+1 }"><i class="fa  fa-angle-double-right"></i></a>
		</c:if>
		
			
		<form id="actionForm" action ="/" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="type" value="${pageMaker.cri.type }">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		</form>
		</div>
		</div> <!-- containner box end -->

	
<script> 
//이 스크립트는 해당페이지에만 작성한다. js파일에 작성시 오류가 생길 수있음.
var actionForm = $("#actionForm");

$("#pagenums>a").on("click",function(e){
	e.preventDefault();
	actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	actionForm.submit();
})

	function searchEvt(){
		
		 var serchForm = $("#searchForm");
			serchForm.find("input[name=pageNum]").val("1");
			e.preventDefault();
			serchForm.submit();
		
		}
</script>

<!-- 네이버 로그아웃 -->


<%@ include file="footer.jsp"%>