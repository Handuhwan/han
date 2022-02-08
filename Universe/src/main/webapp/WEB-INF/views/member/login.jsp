<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../header.jsp"%>

    <!-- contents -->
    <section class="product">
    	<div class="container">
    		<div class="row">
    		
    		<div class="col-md-6 newitem">
    		<!--  사진 -->
    		</div>
    	
    			<div class="col-md-6 newitem">
    				<h2>LOGIN</h2>
    				
    				<form class="form-horizontal" name="frm" method="post" action="/login">
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					  
					  <div class="form-group">
					    <label for="userid" class="col-sm-2 control-label">Email</label>
					    <div class="col-sm-10">
					      <input type="text" name="username" class="form-control" id="userid" placeholder="Email">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="userpwd" class="col-sm-2 control-label">password</label>
					    <div class="col-sm-10">
					      <input type="password" name="password" class="form-control" id="userpwd" placeholder="password">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					      <input type="submit" class="btn btn-default" value="SIGN IN">&nbsp;&nbsp;&nbsp;
					      <button type="button" class="btn btn-default" onclick="location.href='/member/join.do'">회원가입</button>
					      <button type="button" class="btn btn-default" onclick="location.href='/member/findIdPwd.do'">아이디/비밀번호 찾기</button>
					      
					      <button type="button" class="btn btn-default" onclick="javascript:kakaoLogin();"><img src="" alt=""></button>
					      
					     <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
					     <button type="button" class="btn btn-default" onclick="googleout();"><img src="" alt="">구글회원탈퇴</button>
					    </div>
					    
					  </div>
					  
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