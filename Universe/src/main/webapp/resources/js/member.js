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





