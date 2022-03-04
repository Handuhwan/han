function setCookie(name, value, exp) {


	var date = new Date();
	date.setTime(date.getTime() + exp*24*60*60*1000);
	
	document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
	
	
};



function itemcookie(img,pno){ //최근본상품

	setCookie(pno,img,1);

}


$(function(){ // 쿠키 실행
	
	var sss = document.cookie.length // 쿠기 존재 여부를 묻는다 
	
	if(sss>0){
	
	var cc = "";
	
	var str = "";
	
	  var cookie = document.cookie.split(';');
	  
    cookie.some(function (item) {
        // 공백을 제거
        item = item.replace(' ', '');
 		console.log("거름1:"+item);

        var dic = item.split('=');
 		console.log("거름:"+dic);
 		
 		str = "<a href='/product/productview?pno="+dic[0]+"'><img src='/Pupload/"+dic[1]+"'></a>"
    	$("#header_recent").append(str)
	})
	}//if end
	
	
	

})//function end

$(window).scroll(function(){ //top버튼 
    
    if($(this).scrollTop() > 100 ){
      $("#top_btn").addClass("on");
    }
    else{
      $("#top_btn").removeClass("on");
    }
    
  });
  
$(function(){ // top버튼

	$("#top_btn").click(function(){
 	 window.scrollTo({top : 0, behavior: 'smooth'}); 
	});

})

function header_logoutss(){ //헤더 로그아웃 버튼
	
	var form= $("#frm")
	frm.action="/admin/adminLogout"

	if(kakaoLogout()){
		frm.submit();
		
	} if(naverLogout()){
		frm.submit();	
	} if(signOut()){

	}
	frm.submit();
	
	
}





