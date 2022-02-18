function setCookie(name, value, exp) {
	var date = new Date();
	date.setTime(date.getTime() + exp*24*60*60*1000);
	
	document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
	
	
};



function itemcookie(itemnum){ //최근본상품

	
	setCookie(itemnum,itemnum,1);
	
	
}


$(function(){
	
	console.log(document.cookie);
	
})

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

function header_logout(){ //헤더 로그아웃 버튼
	
	header_logout.submit();
}
