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
		
	
};

//카카오톡 로그인
function kakaoLogin() {
	Kakao.Auth.login({
		success: function (response) {
		Kakao.API.request({
			url: '/v2/user/me',
			success: function (response) {
				kakaoLoginPro(response)
			},
			fail: function (error) {
				console.log(error)
			},
		})
	},
		fail: function (error) {
			console.log(error)
		},
	})
}
  
  function kakaoLoginPro(response){
	var data = {id:response.id,email:response.kakao_account.email}
	$.ajax({
		type : 'POST',
		url : '/user/kakaoLoginPro.do',
		data : data,
		dataType : 'json',
		success : function(data){
			console.log(data)
			if(data.JavaData == "YES"){
				alert("로그인되었습니다.");
				location.href = '/user/usermain.do'
			}else if(data.JavaData == "register"){
				$("#kakaoEmail").val(response.kakao_account.email);
				$("#kakaoId").val(response.id);
				$("#kakaoForm").submit();
			}else{
				alert("로그인에 실패했습니다");
			}
			
		},
		error: function(xhr, status, error){
			alert("로그인에 실패했습니다."+error);
		}
	});
	
}

//네이버 로그인
function naverlogin(){
var naver_id_login = new naver_id_login("HRTer5_3T9N0FYbCcCkz", "http://localhost:208");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:208/member/login");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
}
