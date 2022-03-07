<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="google-signin-client_id" content="954610008697-7i20sge4p4mhm6jh1sksaqkstrlkn7q2.apps.googleusercontent.com">

<%@ include file = "../header.jsp"%>

    <!-- contents -->
    <section class="product">
    	<div class="container">
    		<div class="row" style=" border: 3px solid #cfd4f4; margin-top:30px; margin-bottom:30px; margin-right:20px;">
    		
    		<div class="col-md-1">
    		</div>
    		
    		<div class="col-md-5 newitem" >
    			<div class="form-group"style="border-right:3px solid #cfd4f4;">
    				<h2 class="loginheader" style="margin-left: 71px; font-weight: bold;">SNS LOGIN</h2>
    				
					   		<button type="button"  class="naverfont" id="naverIdLogin_loginButton" onclick="naverlogin()" style="padding-top: 4px; border-radius: 6px;"><img src="/resources/images/naver.png" alt="" class="naverbutton" >네이버 로그인
					   			</button>
					 
				
							<button type="button" class=" kakaofont" id="custom-login-btn" onclick="loginWithKakao()"id="kakao-login-btn" style="display:block; "><img src="/resources/images/ico-kakao.png" alt="" class="naverbutton" ><p style="padding-top: 5px; border: 1px solid transparent; border-radius: 6px;">카카오 로그인</p></button>
					
						   <!--  <button class="api-btn" onclick="kakaoLogout()">로그아웃</button> -->
						
							<button type="button"   class="googlefont g-signin2" onclick="onSignIn()"  style="width:300px; color:#fff; ">구글 로그인</button>
    					
    			</div>
    		</div><!-- 6컬럼end -->
    		
    		<div class="col-md-1">
    		</div>
    		
    			<div class="col-md-5 newitem">
    				<h2 class="loginheader" style="margin-left: 115px; font-weight: bold;">LOGIN</h2>
    				
    				<form class="form-horizontal"  method="post" action="/login">
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					  
					  <div class="form-group" style="margin-right:113px;">
					    <label for="userid" class="col-sm-2 control-label"></label>


					    <div class="loginemail">
					      <input type="text" name="username" class="form-control" id="id" value="${id}" style="height: 50px; " readonly>
					    </div>
					  </div>
					  
					  <div class="form-group" style="margin-right:113px;">
					    <label for="userpwd" class="col-sm-2 control-label"></label>
					    <div class="loginemail">
					      <input type="password" name="password" class="form-control" id="id" value="${id}"  style="height: 50px; "readonly>
					    </div>
					  </div>
					  
					 <div class="form-group">
					    <div >
					      <input type="submit" class="btn2 btn-default moonju  signup" value="Signed in" style="	margin-left:0px;">
					       </div>
					       <div style="margin-left: 42px;">
					       
					       <button type="button" class="btn btn-default btn4" onclick="location.href='/member/findPwd'" style="color: #8b8b8b;">아이디/비밀번호 찾기</button>
					     	 	 <a   class="btn-default btn4"  style="color: #8b8b8b;">|</a>
					       <button type="button" class="btn btn-default btn4" onclick="location.href='/member/join'" style="margin-left:0px; color: #8b8b8b;">회원가입</button>
					     
					      </div>
					      
						</div>
						
								  
					</form>
    			</div><!-- 6 end -->
    		</div>
    	</div>
    </section>
    <!-- contents end -->
    <!-- 네이버 -->
  


    
<%@ include file = "../footer.jsp"%>