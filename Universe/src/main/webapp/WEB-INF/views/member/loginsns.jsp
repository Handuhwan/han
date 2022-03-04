<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="google-signin-client_id" content="954610008697-7i20sge4p4mhm6jh1sksaqkstrlkn7q2.apps.googleusercontent.com">

<%@ include file = "../header.jsp"%>

    <!-- contents -->
    <section class="product">
    	<div class="container">
    		<div class="row">
    		
    		<div class="col-md-6 newitem">
    			<img src="/resources/images/ingg.webp" alt="" class="" style="width: 500px; height: 500px;  margin-top: 36px;">
    		</div>
    	
    			<div class="col-md-6 newitem">
    				<h2 class="loginheader">LOGIN</h2>
    				
    				<form class="form-horizontal"  method="post" action="/login">
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					  
					  <div class="form-group">
					    <label for="userid" class="col-sm-2 control-label"></label>


					    <div class="loginemail">
					      <input type="text" name="username" class="form-control" id="id" value="${id}" style="height: 50px; " readonly>
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="userpwd" class="col-sm-2 control-label"></label>
					    <div class="loginemail">
					      <input type="password" name="password" class="form-control" id="id" value="${id}"  style="height: 50px; "readonly>
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <div >
					      <input type="submit" class="btn2 btn btn-default  signup" value="SIGN UP" style="	margin-left:0px;">
					       </div>
					       <div>
					     	 <button type="button" class="btn btn-default btn4" onclick="location.href='/member/join'" style="margin-left:0px;">회원가입</button>
					     	 <button type="button" class="btn btn-default btn4" onclick="location.href='/member/findPwd'">아이디/비밀번호 찾기</button>
					     	 <button type="button" class="btn btn-default btn4" onclick="location.href='/member/memberdrop'">회원 탈퇴</button>
					      </div>
					      
					    
					   		<button type="button"  class="naverfont" id="naverIdLogin_loginButton" onclick="naverlogin()" style="padding-top: 4px;"><img src="/resources/images/naver.png" alt="" class="naverbutton" >네이버 로그인
					   			</button>
					   			
							<button type="button" class=" kakaofont" id="custom-login-btn" onclick="loginWithKakao()"id="kakao-login-btn" style="display:block; "><img src="/resources/images/kakao.png" alt="" class="naverbutton" ><p style="padding-top: 5px; border: 1px solid transparent;">카카오 로그인</p></button>
						
						   <!--  <button class="api-btn" onclick="kakaoLogout()">로그아웃</button> -->

							<button type="button"  class="googlefont g-signin2" data-onsuccess="onSignIn"  style="width:300px; color:#fff; ">구글 로그인</button>
								
						</div>
						
								  
					</form>
    			</div><!-- 6 end -->
    		</div>
    	</div>
    </section>
    <!-- contents end -->
    <!-- 네이버 -->
  


    
<%@ include file = "../footer.jsp"%>