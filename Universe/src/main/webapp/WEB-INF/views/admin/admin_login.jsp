
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<h1>Administrator Login</h1>
		<form class="" name="admin" method="post" action="/login">
		
		<div class=""> <!-- id -->
		    <div class=""> <!-- 네모칸 -->
		      <input type="text" name="username" class="form-control" id="id" placeholder="관리자 아이디 입력">
		    </div>
		</div>
		<div class=""> <!-- pw -->
		    <div class=""> <!-- 네모칸 -->
		      <input type="password" name="password" class="form-control" id="pw" placeholder="관리자 패스워드 입력">
		    </div>
		    <p>가입하지 않은 아이디이거나, 잘못된 비밀번호 입니다.</p> <!-- pw가 틀렸을 시 이 영역에 저 멘트가 뜨게 -->
		</div>
		<div>
		<input type="submit" value="Login">
		</div>
		</form>
	</div>
</body>


