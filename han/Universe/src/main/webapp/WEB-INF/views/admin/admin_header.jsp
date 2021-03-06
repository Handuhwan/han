<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- jstl의 core사용하기 위해 -->
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- jstl의 형식 지정(형식화) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <!-- jstl의 함수 사용하기위해 -->
   
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Administrator</title>
    
    <link rel="icon" type="image/png" href="../resources/images/favicon.ico"/>
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="../resources/css/font-awesome.min.css" rel="stylesheet">
	<link href="../resources/css/common.css" rel="stylesheet">
	<link href="../resources/css/main.css" rel="stylesheet">
	<link href="../resources/css/sub.css" rel="stylesheet">
	<link href="../resources/css/member.css" rel="stylesheet">
	<link href="../resources/css/admin.css" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    
    <script src="../resources/js/jquery-3.3.1.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/main.js"></script>
	<script src="../resources/js/summernote.min.js"></script>
	<script src="../resources/js/admin.js"></script>
	
	
	
</head>
  
<body>
<div class="container">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-2">
				<div class="nav">
					<ul>
						<li>
							<a href="/"><img src="/resources/images/temp_logo/wjmarket.png" class="admin_logo"></a>
						</li>	
							
						<li class="admin_ctgry" id="now" style="font-family: Poppins-Italic; font-size: 18px;">
						</li>
						
						<li class="admin_ctgry" style="font-family: Poppins-Italic; font-size: 12px; font-style: italic;">
							관리자님 환영합니다!
						</li>
						
						<li class="admin_ctgry">
							<a href="/admin/admin" class="admin_ctgry_detail" style="padding-left: 5px;">
								✔ 회원목록
							</a>
						</li>

						<li class="admin_ctgry">
							<a href="/admin/admin_alert" class="admin_ctgry_detail" style="padding-left: 5px;">
								✔ 회원관리
							</a>
						</li>

						<li class="admin_ctgry">
							<form name="logout" method="post" action="/admin/adminLogout" class="admin_ctgry_detail">
				        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				        		<button type="submit" class="admin_ctgry_detail" style="background-color:white; border:none;">✔ 로그아웃</button>
				        	</form>
						</li>
					</ul>
				</div>
			</div>
			<!-- 왜 안되노 -->
			