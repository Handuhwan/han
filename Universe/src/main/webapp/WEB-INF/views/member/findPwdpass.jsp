<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../header.jsp"%>
<body>
<form action="/member/findPwdpass" method="POST" class="content">
	<div class="textbox">
		<input id="pwd" name="pwd" type="password"><label>새비밀번호</label>
		<div class="error">
 				Invalid password
		</div> 
	</div>
	<div class="textbox">
		<input id="pwd2" type="password" onchange="isSame();"><label>새비밀번호 확인</label>
		<div class="error">
				Invalid password
		</div>
	</div>
	<span id=same></span>
	<br><br>
	<input type="submit" id="check" value="비밀번호변경">
	<input type="hidden" name="email" value=email>
</form>
</body>
</html>
<div style=" margin-top: 100px;">
		<%@ include file = "../footer.jsp"%>
	</div>