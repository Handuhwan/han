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
    				
    				<form class="form-horizontal" name="frm" method="post" action="/login">
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
					      
					   		<button type="button" class="btn btn-default naverfont" id="naver_id_login" onclick="naverlogin()" style="margin-left:0px;"><img src="/resources/images/naver.png" alt="" class="naverbutton" >네이버 로그인</button>
					   			<div id="naver_id_login" style="text-align: center"> 
					   				<a href="${naver_url}">
					   			</a></div>

							<button type="button" class="btn btn-default kakaofont" onclick=" location.href='http://localhost:208/member/login' " style="margin-left:0px;"><img src="/resources/images/kakao.png" alt="" class="naverbutton" >카카오 로그인</button>
							   <a href="https://kauth.kakao.com/oauth/authorize
									    ?client_id=258fa9cb44b6868e86dfeb3d3b78c89c
									    &redirect_uri=http://http://localhost:208/member/login
									    &response_type=code">로그인</a>
							  <a id="kakao-login-btn"></a>
   								 <a href="http://developers.kakao.com/logout">Logout</a>
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
    <script type='text/javascript'>
        //<![CDATA[
        // 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('Your KEY');
        // 카카오 로그인 버튼을 생성합니다.
        Kakao.Auth.createLoginButton({
            container: '#kakao-login-btn',
            success: function (authObj) {
                alert(JSON.stringify(authObj));
            },
            fail: function (err) {
                alert(JSON.stringify(err));
            }
        });
      //]]>
    </script>

    <script>
    function secession() {
    	Kakao.API.request({
        	url: '/v1/user/unlink',
        	success: function(response) {
        		console.log(response);
        		//callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
        		window.location.href='/'
        	},
        	fail: function(error) {
        		console.log('탈퇴 미완료')
        		console.log(error);
        	},
    	});
    };
    </script>
    <!--  구글 로그인 -->
   
    <script>
      function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
       	alert("로그인 완료");
      }
      
      function googleout() {
    	  gapi.auth2.getAuthInstance().disconnect();
      }
    </script>
 
    
</body>
    
          
   

<%@ include file = "../footer.jsp"%>