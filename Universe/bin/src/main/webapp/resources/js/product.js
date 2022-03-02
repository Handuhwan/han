
 var pricewon = $("#pprice").val();
 
 function price12(jum){
 var pri = jum.value
 var len = jum.value.length
 if(len>8){
 	alert("비싼 물건입니다.")
 	pri = "";
 }
 
 var real = pri.toString()
  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");

	$("#pprice").val(real);
 } // 가격 콤마 찍기
 
 function productinsertcheck(){ //유효성 검사
 	var img = $("#preview img").length
 	
 	
 	if(img < 1) {
 		
		alert("사진 필수!");
		return false;
	
	}else if($("#ptitle").val() == "") {
		alert("제목을 입력해주세요");
		return false;
		
	}else if($("#pkind").val() == "") {
		alert("카테고리를 선택해주세요");
		return false;
		
	}else if($("#location").val() == "") {
		alert("내 동네 검색을 눌러주세요");
		return false;
		
	}else if($("input[name=condition]").val() =="") {
		alert("상품상태를 선택해주세요");
		return false;
		
	}else if($("input[name=exchange]").val() == "") {
		alert("교환 가능여부를 선택해주세요");
		return false;
	}else if($("#pprice").val() == "") {
		alert("가격을 입력해주세요");
		return false;	
 	}else if($("#pcontent").val() == "") {
		alert("설명을 입력해주세요");
		return false;
	}else if($("#pquantity").val() == "") {
		alert("수량을 입력해주세요");
		return false;	
 	}
 	
 	var real = $("#pprice").val();
 	$("#pprice").val(real.replace(/,/g, "")); // 콤마제거;
 	
 
 	
 }
 
