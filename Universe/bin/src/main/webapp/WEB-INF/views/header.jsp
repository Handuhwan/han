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
<script src="/resources/js/main.js"></script>
<script src="/resources/js/member.js"></script>
<script src="/resources/js/my.js"></script>




</head>

<script type="text/javascript"> 
	

</script>
<!-- 쿠키 저장 스크립트 -->


<!-- main header -->
<header>
	<span id="header"></span>
	

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
			<div class="header_recent"> <!-- 최근본 게시물 -->
				<p style="margin-bottom:-5px; padding-top:5px; padding-bottom:5px;">최근본 상품</p>
				<a href=""><img alt="" src="/resources/images/mark.png"></a>
				<a href=""><img alt="" src="/resources/images/mark.png"></a>
				<a href=""><img alt="" src="/resources/images/mark.png"></a>
			</div> <!-- 최근본 게시물 end -->
			
			
			
			<div style="margin-top:20px;" class="header_recent" >
				<a class="b_top" style="color:#586fff; font-weight:600" href="#header">　　　TOP　　　</a>
			</div> <!--  맨위로 가기 버튼 -->
			
			
		</div> <!-- pull right end -->
		
		<div class="container" style="height:0px;">
		
			<div class="col-md-12 col-sm-12" style="margin-top:20px;">
				<div class="pull-left">
					
					<div class="serch-box" > <!-- serch box -->
						<img alt="" src="/resources/images/mark.png" style="width:200px; height:100px; margin-right:80px;">
						<form style="display:inline" name="main-serch" method="post" action="">
					<!--  <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"> -->
						<input type="text" placeholder="#상품명 #지역명 #상점명">
						</form>
					</div>
					
				</div>
				<div class="pull-right" style="margin-top:35px;">
					
					<div class="dropdown">

					
 						<button class="dropbtn" style=""><img alt="" src="/resources/images/main-bell.png">&nbsp;&nbsp;<span>알림</span><span class="caret"></span></button>
			  			<div class="dropdown-content" style="left:35px; min-width:275px;">
			    			<a href="#">새로운 메세지가 도착했습니다.</a>
			    			<a href="#">새로운 메세지가 도착했습니다.</a>
			 			</div>
					</div>&nbsp;&nbsp;
					<div class="dropdown">
 						<button class="dropbtn" style="margin-left:0px;"><img alt="" src="/resources/images/main-user.png">&nbsp;&nbsp;MY PAGE<span class="caret"></span></button>
			  			<div class="dropdown-content content2">
			    			<a href="#">판매리스트</a>
			    			<a href="#">구매리스트</a>
			    			<a href="#">정보수정</a>
			 			</div>
					</div>&nbsp;&nbsp;
					
					<a href="" class="dropbtn"><img alt="" src="/resources/images/main-love.png">&nbsp;&nbsp;찜</a>
					
					
				</div> <!-- pull right end -->
				
				
			</div> <!-- col -md -12 end -->
			</div> <!-- container end -->
			</div> <!-- 컨테이너 상위 박스 -->
			
			
			
		
		
	
		