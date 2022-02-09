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

<!-- <link href="/resources/css/" rel="stylesheet"> 여분-->
<!-- <link href="/resources/css/" rel="stylesheet"> 여분-->


<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/member.js"></script>
<script src="/resources/js/my.js"></script>



</head>

<!-- index header -->
<header>

	<div class="container"> <!-- header nav  -->
		<div class="row">
			<div class="col-md-12 col-sm-12 main_header_nav">
				<div class="pull-left">
				<span style="font-size:16px;"><a href="">로그인</a></span>
				</div>
				<div class="pull-right">





			<span style="font-size:16px;  padding-right:10px;">님 환영합니다.</span>

					<div class="dropdown">
 						<button class="dropbtn">알림<span class="caret"></span></button>
			  			<div class="dropdown-content" style="left:-135px; min-width:290px;">
			    			<a href="#">새로운 메세지가 도착했습니다.</a>
			    			
			 			</div>
					</div>
					<div class="dropdown">
 						<button class="dropbtn">MY PAGE<span class="caret"></span></button>
			  			<div class="dropdown-content content2">
			    			<a href="#">판매리스트</a>
			    			<a href="#">구매리스트</a>
			    			<a href="#">정보수정</a>
			 			</div>
					</div>


				</div>
			</div>
		</div>
	</div>

</header>
