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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 $(function(){ //view페이지 active 
 
 	var i =$(".pcarousel").children("div").first();
 	
 	i.addClass("active")
 	
 	$(".psalerdiv a:nth-child(2) span").css("left","191px");
 
 	
 
 
 }) //function end
 
 
function productviewjjim(pno){ //찜insert 찜 up

 	
	$.ajax({
		type:"get",
		url:"/product/productjjim",
		data:({
			pno : pno,
		}),
		dataType:"json",
		success:function(result){
			console.log(result);
			$("#pjjimbutton").removeAttr("onclick");
			$("#pjjimbutton").attr("onclick","productviewjjimdown("+pno+")")
			$("#pjjimbutton img").removeAttr("src");
			$("#pjjimbutton img").attr("src","/resources/images/pjjim1.png")
			$("#productlikecount").html(result);
		},
		error:function(xhr,error,errrr){
			alert("로그인후 이용가능합니다");
		}
	}) // ajax end	
} //function end

function productviewjjimdown(pno){ //찜 삭제


	$.ajax({
		type:"get",
		url:"/product/productjjimdown",
		data:({
			pno:pno,
		}),
		dataType:"json",
		success:function(result){
			console.log(result);
			$("#pjjimbutton").removeAttr("onclick");
			$("#pjjimbutton").attr("onclick","productviewjjim("+pno+")")
			$("#pjjimbutton img").removeAttr("src");
			$("#pjjimbutton img").attr("src","/resources/images/pjjim0.png")
			$("#productlikecount").html(result);
		}
	}) //ajax end
} // function end
