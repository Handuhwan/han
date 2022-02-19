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
					      
					   		<button type="button" class="btn btn-default naverfont" onclick="" style="margin-left:0px;"><img src="/resources/images/naver.png" alt="" class="naverbutton" >네이버 로그인</button>
							<button type="button" class="btn btn-default kakaofont" onclick="" style="margin-left:0px;"><img src="/resources/images/kakao.png" alt="" class="naverbutton" >카카오 로그인</button>
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
 <body>
  <!-- 카카오톡 로그인 -->
   
    <script>
        window.Kakao.init('258fa9cb44b6868e86dfeb3d3b78c89c');

        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email ', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                	alert("로그인 완료");
                    console.log(response) // 로그인 성공하면 받아오는 데이터
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account;
                            console.log(kakao_account)
                       }
                    });
                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
    <!--카카오톡 로그아웃 -->
    <script>
    window.Kakao.init('258fa9cb44b6868e86dfeb3d3b78c89c');
	function kakaoLogout() {
    	if (!Kakao.Auth.getAccessToken()) {
		    console.log('Not logged in.');
		    return;
	    }
	    Kakao.Auth.logout(function(response) {
    		alert(response +' logout');
		    window.location.href='/'
	    });
};
    </script>
    <!--카카오톡 탈퇴 -->
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