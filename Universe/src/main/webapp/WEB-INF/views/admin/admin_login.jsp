<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- jstl의 core사용하기 위해 -->
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- jstl의 형식 지정(형식화) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <!-- jstl의 함수 사용하기위해 -->    
    
<!DOCTYPE html>


<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Administrator</title>
	
	<link rel="icon" type="image/png" href="../resources/images/favicon.ico"/>
	<link href="../resources/css/admin.css" rel="stylesheet">
	
	<script src="../resources/js/admin.js"></script>
	
</head>
<body>
	
	<div id="adminlog" class="login_square">
		<form class="admin_content" action="/login" method="post" name="login">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	
	    <div class="admin_container">
	    	<h1>Administrator Login</h1>
			<p class="login_p">Please fill in this form to login your account.</p>	
		<hr>
		    <p>Username</p>
		    <input type="text"  placeholder="Enter Username" name="username" id="username" required>
		
		    <p style="margin-top:8px;">Password</p>
		    <input type="password" placeholder="Enter Password" name="password" id="password" required>
		        
		    <label class="login_wrong">
		    	${msg } <!-- pw가 틀렸을 시 이 영역에 저 멘트가 뜨게 -->
		    </label>
	    </div>
	
	    <div class="admin_container">
	    	<button type="submit" class="login_btn" onclick="admin_loginCheck()">Login</button>
	    	<!--  <button type="submit" onclick="" class="cancel_btn" >Back</button>--> <!-- 얘가 좀 이상함 -->
	    </div>
	    
		</form>
	</div>
	
</body>




