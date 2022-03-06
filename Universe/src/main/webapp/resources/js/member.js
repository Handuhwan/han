function memeber_insert_form() {
	
	if (!$("input:checked[id='one']").is(":checked")){ 
		alert("필수 동의하세요"); 
		return false;	
	}
	
	else if (!$("input:checked[id='two']").is(":checked")){ 
		alert("필수 동의하세요"); 
		return false;	
		
	}else if($("#id").val() == "") {
		alert("아이디 필수입력");
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
		
	}else if($("#userNum").val() == "") {
		alert("전화번호 필수입력");
		return false;
	}
		
	
};

function findPwd() {

		if($("#name").val() == "") {
			alert("이름 필수입력");
			return false;	
						
		}else if($("#phone").val() == "") {
			alert("전화번호 필수입력");
			return false;
		}else if($("#userNum").val() == "") {
			alert("인증번호 필수입력");
			return false;
		}
		
};

function findPwdpassword() {

	if($("#id").val() == "") {
			alert("이메일 필수입력");
			return false;	
						
		}else if($("#Name").val() == "") {
			alert("이름 필수입력");
			return false;
			
		}else if($("#phone").val() == "") {
			alert("전화번호 필수입력");
			return false;
		
		
		}else if($("#userNum").val() == "") {
			alert("인증번호 필수입력");
			return false;
		}
	

};




