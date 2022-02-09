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
<link href="/resources/css/common.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/sub.css" rel="stylesheet">
<link href="/resources/css/member.css" rel="stylesheet">
<link href="/resources/css/login.css" rel="stylesheet">
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
				<div class="pull-left">
				<span style="font-size:13px;  padding-right:10px;">님 환영합니다!</span>	
				</div>
				<div class="pull-right">
				
				<span style="font-size:13px; font-family: 'Noto Sans KR', sans-serif;"><a href="" style="color:rgb(103 103 103);">로그인</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="" style="color:rgb(103 103 103);">회원가입</a></span>

					
			
				</div>
			</div> <!-- 맨위 -->
		</div>
	</div>
</div> <!-- main_header_nav -->

		<div class="container">
			<div class="col-md-12 col-sm-12 ">
				<div class="pull-right">
					
					<div class="dropdown">
 						<button class="dropbtn" style=""><img alt="" src="/resources/images/notification.png"><span>알림</span><span class="caret"></span></button>
			  			<div class="dropdown-content" style="left:-135px; min-width:290px;">
			    			<a href="#">새로운 메세지가 도착했습니다.</a>
			    			
			 			</div>
					</div>
					<div class="dropdown">
 						<button class="dropbtn"><img alt="" src="/resources/images/user.png">MY PAGE<span class="caret"></span></button>
			  			<div class="dropdown-content content2">
			    			<a href="#">판매리스트</a>
			    			<a href="#">구매리스트</a>
			    			<a href="#">정보수정</a>
			 			</div>
					</div>
					
					<a href="" class="dropbtn"><img alt="" src="/resources/images/love.png">찜</a>
				</div>
			</div> <!-- container2번쨰 -->
		</div>
		
