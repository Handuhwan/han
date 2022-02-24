<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    				<p style="color:red">${error }</p>
    				<form class="form-horizontal"  method="post" action="/login">
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					  
					  <div class="form-group">
					    <label for="userid" class="col-sm-2 control-label"></label>


					    <div class="loginemail">
					      <input type="text" name="username" class="form-control" id="id" placeholder="Email"  style="height: 50px; ">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="userpwd" class="col-sm-2 control-label"></label>
					    <div class="loginemail">
					      <input type="password" name="password" class="form-control" id="pwd" placeholder="password" style="height: 50px; ">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <div >
					      <input type="submit" class="btn2 btn btn-default  signup" value="SIGN UP" style="	margin-left:0px;">
					       </div>
					       <div>
					     	 <button type="button" class="btn btn-default btn4" onclick="location.href='/member/join'" style="margin-left:0px;">회원가입</button>
					     	 <button type="button" class="btn btn-default btn4" onclick="location.href='/member/findPwd">아이디/비밀번호 찾기</button>
					     	 <button type="button" class="btn btn-default btn4" onclick="location.href='/member/memberdrop'">회원 탈퇴</button>
					      </div>
					      
					   		<button type="button"  class="btn btn-default naverfont" id="naver_id_login" onclick="naverlogin()" style="margin-left:0px;"><img src="/resources/images/naver.png" alt="" class="naverbutton" >네이버 로그인</button>
					   			

							<button type="button" class="btn btn-default kakaofont" onclick="kakaoLogin()"id="kakao-login-btn" style="margin-left:0px;"><img src="/resources/images/kakao.png" alt="" class="naverbutton" >카카오 로그인</button>
							<a href="javascript:kakaoLogin();"><p>그만</p></a>
							
							
							<button type="button" class="btn btn-default googlefont" onclick="" style="margin-left:0px;"><img src="/resources/images/google.png" alt="" class="naverbutton">구글 로그인</button>
						</div>		
					   
					   <!-- <button type="button" class="btn btn-default" onclick="javascript:kakaoLogin();"><img src="" alt=""></button>
					      
					     <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark">
					    	 <button type="button" class="btn btn-default" onclick="googleout();"><img src="" alt="">구글회원탈퇴</button>
					   	</div> -->
					  
					
					 
					  
					</form>
    			</div><!-- 6 end -->
    		</div>
    	</div>
    </section>
    <!-- contents end -->
    
 

   <script type="text/javascript"> //초기화 시키기. 
   $(document).ready(function(){ 
	   Kakao.init('258fa9cb44b6868e86dfeb3d3b78c89c'); 
	   Kakao.isInitialized(); }); 
   </script>
   
   <script type="text/javascript"> 
   function loginWithKakao() {
	   Kakao.Auth.authorize({ 
		   redirectUri: 'http://localhost:208/member/login' }); 
	   } 
   </script>
   
   <script type="text/javascript"> 
   var kakao_message = new Object(); 
   $(document).ready(function(){ 
	   var ACCESS_TOKEN= $("TRcSkxgJNnnKJkW21ZekRGPSD7CaPf6gSxP83_BCxNpdT0EePGWdJopQ9KPdVekZRhTI9worDSAAAAF_B7eVwA").val(); 
	   //할당받은 토근을 세팅
	   Kakao.Auth.setAccessToken(ACCESS_TOKEN); 
	   console.log(Kakao.Auth.getAccessToken()); 
	   Kakao.API.request({ url: '/v2/user/me', 
		   success: function(response) { 
			   console.log(response); 
			   kakao_message['id']=response['id'];
			   kakao_message['email']=response['kakao_account']['email']; 
			   kakao_message['nickname']=response['kakao_account']['profile']['nickname']; 
			   console.log(kakao_message);
			   var m_uid = 'KAKAO_'+kakao_message['id']; 
			   console.log(""+window.location.hostname+""); 
			   var data = JSON.stringify({ uid : m_uid , uname : kakao_message['nickname'] , uemail : kakao_message['email'] , join_pass : 'KAKAO' }); 
			   // 로그인시 서버에서 넘어왔음.. 
			   //로그인정보가 있다면 로그인 시도하기.. 
			   var url = '/user/userid_duplicate_check'; 
			   getPostData(url,data,callback_userid_duplicate_check, false); 
			   if(!is_userid) //sns가입된 id가 있다면 로그인 시도. 
			   { 
				   url = '/user/naver_kakao_sns_login'; 
				   getPostData(url,data,callback_join_ok, false); 
				   } else if(is_userid) 
					   //sns로 가입된 id가 없다면 가입시도.. 
					   { 
					   $("#i_id").val(m_uid); 
					   $("#i_name").val(kakao_message['nickname']); 
					   $("#i_email").val(kakao_message['email']); 
					   } 
			   }, fail: function(error) { 
				   console.log(error); 
				   } 
			   }); 
	   }); 
   </script>




<%@ include file = "../footer.jsp"%>