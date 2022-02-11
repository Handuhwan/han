<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Universe</title>


<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/summernote.min.css" rel="stylesheet">
<link href="/resources/css/common.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/sub.css" rel="stylesheet">
<link href="/resources/css/member.css" rel="stylesheet">
<link href="/resources/css/login.css" rel="stylesheet">
<link href="/resources/css/mypage.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">

<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<!-- font-family: 'Noto Sans KR', sans-serif; < css에 적용할 폰트 복붙 -->
<!-- /구글 폰트 -->

<!-- <link href="/resources/css/" rel="stylesheet"> 여분-->
<!-- <link href="/resources/css/" rel="stylesheet"> 여분-->


<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/summernote.min.js"></script>
<script src="/resources/js/member.js"></script>
<script src="/resources/js/my.js"></script>




</head>

<!-- index header -->
<header>

	

</header>
<div class="main_header_nav">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="pull-left"  style="margin-left:50px;">
				<span style="font-size:13px;  padding-right:10px;">님 환영합니다!</span>	
				</div>
				<div class="pull-right" style="margin-right:15px;">
				
				<span style="font-size:13px; font-family: 'Noto Sans KR', sans-serif;"><a href="" style="color:rgb(103 103 103);">로그인</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="" style="color:rgb(103 103 103);">회원가입</a></span>

					
			
				</div>
			</div> <!-- 맨위 -->
		</div>
	</div>
</div> <!-- main_header_nav -->
	<div style="position:sticky;top:0px;z-index: 999;bottom:50px;background:#fff; border-bottom:1px solid #e8e8e8; height:120px;">
		<div class="pull-right">
			<div class="header_recent">
				<p style="margin-bottom:-5px; padding-top:5px; padding-bottom:5px; border-bottom:1px solid #000;">최근본 상품</p>
				<a><img style="width:100px; height:80px; border-bottom:1px solid" alt="" src="/resources/images/mark.png"></a>
				<a><img style="width:100px; height:80px;  border-bottom:1px solid" alt="" src="/resources/images/mark.png"></a>
				<a><img style="width:100px; height:80px;  border-bottom:1px solid" alt="" src="/resources/images/mark.png"></a>
			</div>
		</div>
		
		<div class="container" >
		
			<div class="col-md-12 col-sm-12" style="margin-top:20px;">
				<div class="pull-left">
					
					<div class="serch-box"> <!-- serch box -->
						<img alt="" src="/resources/images/mark.png" style="width:200px; height:100px; margin-right:80px;">
						<form style="display:inline" name="main-serch" method="post" action="">
					<!--  <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"> -->
						<input type="text" placeholder="#상품명 #지역명 #상점명">
						</form>
					</div>
					
				</div>
				<div class="pull-right" style="margin-top:35px;">
					
					<div class="dropdown">
 						<button class="dropbtn" style=""><img alt="" src="/resources/images/notification.png">&nbsp;&nbsp;<span>알림</span><span class="caret"></span></button>
			  			<div class="dropdown-content" style="left:-135px; min-width:290px;">
			    			<a href="#">새로운 메세지가 도착했습니다.</a>
			    			
			 			</div>
					</div>&nbsp;&nbsp;
					<div class="dropdown">
 						<button class="dropbtn"><img alt="" src="/resources/images/user.png">&nbsp;&nbsp;MY PAGE<span class="caret"></span></button>
			  			<div class="dropdown-content content2">
			    			<a href="#">판매리스트</a>
			    			<a href="#">구매리스트</a>
			    			<a href="#">정보수정</a>
			 			</div>
					</div>&nbsp;&nbsp;
					
					<a href="" class="dropbtn"><img alt="" src="/resources/images/love.png">&nbsp;&nbsp;찜</a>
					
					
				</div> <!-- pull right end -->
				
				
			</div> <!-- col -md -12 end -->
			</div> <!-- container end -->
			</div> <!-- 컨테이너 상위 박스 -->
			
			<div class="container">
			<div class="col-md-12">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		  </ol>

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
		
		
	
		
