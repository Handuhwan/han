<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<form class="admin_content" action="adminok.do" method="post">
	
	    <div class="admin_container">
	    	<h1>Administrator Login</h1>
			<p class="login_p">Please fill in this form to login your account.</p>	
		<hr>
		    <p>Username</p>
		    <input type="text"  placeholder="Enter Username" name="id" id="id" id="id" required>
		
		    <p style="margin-top:8px;">Password</p>
		    <input type="password" placeholder="Enter Password" name="pw" id="pw" required>
		        
		    <label class="login_wrong">
		    	가입하지 않은 아이디이거나, 잘못된 비밀번호 입니다. <!-- pw가 틀렸을 시 이 영역에 저 멘트가 뜨게 -->
		    </label>
	    </div>
	
	    <div class="admin_container">
	    	<button type="submit" onclick="admin_logincheck();" class="login_btn">Login</button>
	    	<!--  <button type="submit" onclick="" class="cancel_btn" >Back</button>--> <!-- 얘가 좀 이상함 -->
	    </div>
	    
		</form>
	</div>
	
</body>


