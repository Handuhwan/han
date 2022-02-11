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
    
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/css/font-awesome.min.css" rel="stylesheet">
	<link href="/resources/css/common.css" rel="stylesheet">
	<link href="/resources/css/main.css" rel="stylesheet">
	<link href="/resources/css/sub.css" rel="stylesheet">
	<link href="/resources/css/member.css" rel="stylesheet">
	<link href="../resources/css/admin.css" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/member.js"></script>
	<script src="/resources/js/my.js"></script>
	
</head>
  
<body>
<div class="container">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-2">
				<div class="nav">
					<ul>
						<li>
							<img src="/resources/images/logo_03-1.png" class="admin_logo">
						</li>	
							
						<li class="">
							<div class="admin_date">
								<p>February xxth, 2022 xx:xxPM </p>
							</div>
						</li>

						<li class="admin_ctgry">
							<a href="/admin/admin_ya" class="admin_ctgry_detail" style="padding-left: 5px;">
								✔ 알림
							</a>
						</li>

						<li class="admin_ctgry">
							<a href="/admin/admin" class="admin_ctgry_detail" style="padding-left: 5px;">
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