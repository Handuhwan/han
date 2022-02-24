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
		      <img style="height:250px; width:100%;" src="/resources/images/table.jpg" alt="..."> <!--  임시 사진 -->
		    </div> <!-- item end  -->
		    <div class="item">
		      <img style="height:250px;  width:100%;" src="/resources/images/hambuk.jpg" alt="...">
		    </div>  <!-- item end  -->
		   
		  </div> <!-- item inner box -->
		
	
		</div><!-- 슬라이드 box end  -->
		
			</div> <!-- col md 12 end -->
			
			</div> <!-- container box end -->
			
			
			
		<div class="container" style="margin-top:90px; margin-bottom:90px;">
			<div class="col-md-12">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img style="height:250px; width:100%;" src="/resources/images/table.jpg" alt="..."> <!--  임시 사진 -->
		    </div> <!-- item end  -->
		    <div class="item">
		      <img style="height:250px;  width:100%;" src="/resources/images/hambuk.jpg" alt="...">
		    </div>  <!-- item end  -->
		   
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
      						<a onclick="itemcookie(1)" href="#">
      						<img src="/resources/images/table.jpg" alt="...">
      						</a>
      						<div class="caption">
        					<p style="font-size:20px;">${list.title }</p>
        					<span style="font-size:16px; font-weight:600">10,000,000 원</span>
        			
        					<span class="items_day">1시간 전</span>
      						</div> <!-- 썸네일 내용 -->
    					</div> <!--  썸네일 end -->
    					
  					</div> <!-- col-md-3 box end -->
  				</c:forEach>	  	
  				
				</div> <!-- row end -->
				
				
			</div> <!-- 12 end 상품 박스 -->
		</div> <!-- containner box end -->

	





<%@ include file="footer.jsp"%>