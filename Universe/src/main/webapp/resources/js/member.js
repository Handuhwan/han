function memeber_insert_form() {
	

	
	if($("#id").val() =="") {
		alert("이메일 필수입력");
		return false;
	
	}else if($("#pwd").val() == "") {
		alert("비밀번호 필수입력");
		return false;
		
	}else if($("#name").val() == "") {
		alert("이름 필수입력");
		return false;
		
	}else if($("#zip_num").val() == "") {
		alert("우편번호 필수입력");
		return false;
		
	}else if($("#address1").val() =="") {
		alert("주소 필수입력");
		return false;
		
	}else if($("#phone").val() == "") {
		alert("전화번호 필수입력");
		return false;
	}
		
	
}

//카카오톡 로그인
        window.Kakao.init('258fa9cb44b6868e86dfeb3d3b78c89c');

        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile, account_email, gender, age_range, birthday', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
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
        
//카카오톡 로그아웃        
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
//카카오톡 회원탈퇴
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

//네이버 로그인
function naverlogin() {



}
