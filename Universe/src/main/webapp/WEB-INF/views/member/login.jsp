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
    		<div class="col-md-1 ">
    		</div>
    			<div class="col-md-5 newitem">
    				<h2 class="loginheader" style="margin-left: 106px; font-weight: bold;">LOGIN</h2>
    				<p style="color:red">${error }</p>
    				<form class="form-horizontal"  method="post" action="/login" style="margin-right: 131px;">
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
					      <input type="submit" class="btn2 btn-default moonju  signup" value="Signed in" style="margin-left:0px; border-radius: 5px;">
					       </div>
					       <div>
					     	 <button type="button" class="btn btn-default btn4" onclick="location.href='/member/join'" style="margin-left:0px;">회원가입</button>
					     	 <button type="button" class="btn btn-default btn4" onclick="location.href='/member/findPwd'">아이디/비밀번호 찾기</button>
					     	 <button type="button" class="btn btn-default btn4" onclick="location.href='/member/memberdrop'">회원 탈퇴</button>
					      </div>
					      
						</div>
						
					</form>
    			</div><!-- 6 end -->
    			
    		</div>
    	</div>
    </section>
    <!-- contents end -->
    <!-- 네이버 -->
<script>

var naverLogin = new naver.LoginWithNaverId({
			clientId: "baMwiMBqHorI4Lhtxxif", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:1976/member/login",
			isPopup: false,
			callbackHandle: true
		});	

naverLogin.init();
	$('#naverIdLogin_loginButton').on("click",function(){
		
	
	//window.addEventListener('#naverIdLogin_loginButton', function () {
		naverLogin.getLoginStatus(function (status) {
			console.log(status)
			if (status) {
				var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
				var id = naverLogin.user.email;
	        	var name = naverLogin.user.getName();
	       		console.log(id);
	        	sessionStorage.setItem("user_info",email); 
	        	sessionStorage.setItem("naver_email", naverLogin.user.getEmail()); 
	        	sessionStorage.setItem("naver_name", naverLogin.user.getName());
	            
	          
	            
	            checkid(id,name);
	            
	            if( email == undefined || email == null) {
					alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
					naverLogin.reprompt(); 
					return;
				}
	        
			} else {
				console.log("callback 처리에 실패하였습니다.");
			}
		});

	//});
	})






//window.location.href='http://localhost:1976/member/joinsns';
	
</script>

     
     <!-- 카카오톡 로그인 -->
<script type="text/javascript">
        // 2. 카카오 초기화
        Kakao.init('258fa9cb44b6868e86dfeb3d3b78c89c');
        console.log( Kakao.isInitialized() ); // 초기화 판단여부

        // 3. 데모버전으로 들어가서 카카오로그인 코드를 확인.
        function loginWithKakao() {
            Kakao.Auth.login({
                success: function (authObj) {
                    console.log(authObj); // access토큰 값
                    Kakao.Auth.setAccessToken(authObj.access_token); // access토큰값 저장

                    getInfo();
                },
                fail: function (err) {
                    console.log(err);
                }
            });
        }

        // 4. 엑세스 토큰을 발급받고, 아래 함수를 호출시켜서 사용자 정보를 받아옴.
        function getInfo() {
            Kakao.API.request({
                url: '/v2/user/me',
                success: function (res) {
                    console.log(res);
                    // 이메일, 성별, 닉네임, 프로필이미지
                    var id = res.kakao_account.email;
                    var gender = res.kakao_account.gender;
                    var name = res.kakao_account.profile.nickname;
                    var profile_image = res.kakao_account.profile.thumbnail_image_url;

                    console.log(id, gender, name, profile_image);
                    checkid(id,name);
                },
                fail: function (error) {
                    alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
                }
            });
           
           
        }
        //window.location.href='http://localhost:1976/member/joinsns';
        // 5. 로그아웃 기능 - 카카오 서버에 접속하는 엑세스 토큰을 만료, 사용자 어플리케이션의 로그아웃은 따로 진행.
        function kakaoLogout() {
            if (!Kakao.Auth.getAccessToken()) {
                alert('Not logged in.');
                return;
            }
            Kakao.Auth.logout(function() {
                alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken());
            });
        }
        
        
    </script>
    <!--  구글 로그인 -->
<script>

function onSignIn() {
		var auth2 = gapi.auth2.getAuthInstance();
		  var profile = auth2.currentUser.get().getBasicProfile();
		  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		  console.log('name: ' + profile.getName());
		  console.log('Image URL: ' + profile.getImageUrl());
		  console.log('id: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
		
		  var id = profile.getEmail();
		var name = 	profile.getName();
		  
		  checkid(id,name);

		} // 구글
		
	
	 function signOut() {
		    var auth2 = gapi.auth2.getAuthInstance();
		    auth2.signOut().then(function () {
		      console.log('구글 로그아웃 성공');
		    });
		  }//구글 로그아웃 
	 
</script>

<script>
function checkid(id,name) {
	
	console.log("여기까지는 실행하고있습니다.");
	
	$.ajax({
		//contentType:"application/json; charset=utf-8"
		type:'get',
		data: {
			"id" : id,
			
			
			} ,// JSON.(뭐있음)modify() 보내는 타입
		dataType:"json", 
		//contentType:"application/json; charset=utf-8", 보내는타입ㄴ
		url:"/member/checkUserid.do",
		success:function(data){
			if(data==1){
				console.log(id+"id");
				location.href = "/member/loginsns?id="+id; 
			
				
			}else {// if end
				console.log(name+"name");
				console.log(id+"id");
		location.href = "/member/joinsns?id="+id+"&name="+name; 
			
			}//else end
			
		} //success end
	}) //ajax end
	
    
} //checkid end

</script>



    
<%@ include file = "../footer.jsp"%>