//Admin 시계 함수-----------------------------------------------------------------------

$(function(){
	var date = new Date();
	var mm= date.getMonth();
	var dd = date.getDate();
	var yy = date.getFullYear();
	var h = date.getHours();
	var min =date.getMinutes();
	
	//if(h>12){ h = h-12; } 만약 h를 14가 아닌 02시로 바꾸고 싶으면
	  

	if(min<10){
		min = "0"+min;
	}
   
   
	var m = new Array("January","February","March","April","May","June","July","August", "September","October","November","December");
	var ampm =h; 
   
   
	if(h<12){
		ampm="AM";
	}else{
		ampm="PM";
	}
   
   
   
	var thistime = m[mm]+" "+dd+"th "+yy+" "+h+":"+min+" "+ampm;
	// m 배열도 0번째방부터 시작, Date함수의 month도 0번째 방부터 시작
	
	if(dd==1){
		thistime = m[mm]+" "+dd+"st "+yy+" "+h+":"+min+" "+ampm;
	}
	if(dd==2){
		thistime = m[mm]+" "+dd+"nd "+yy+" "+h+":"+min+" "+ampm;
	}
	
	if(dd==3){
		thistime = m[mm]+" "+dd+"rd "+yy+" "+h+":"+min+" "+ampm;
	}
	
    
	$("#now").text(thistime);
		
})


		
setInterval(function(){

	var date = new Date();
	var mm= date.getMonth();
	var dd = date.getDate();
	var yy = date.getFullYear();
	var h = date.getHours();
	var min =date.getMinutes();
	  

	if(min<10){
		min = "0"+min;
	}
   
   
	var m = new Array("January","February","March","April","May","June","July","August", "September","October","November","December");
	var ampm =h; 
   
   
	if(h<12){
		ampm="AM";
	}else{
		ampm="PM";
	}
   
   
	var thistime = m[mm]+" "+dd+"th "+yy+" "+h+":"+min+" "+ampm;
	// m 배열도 0번째방부터 시작, Date함수의 month도 0번째 방부터 시작
	
	if(dd==1){
		thistime = m[mm]+" "+dd+"st "+yy+" "+h+":"+min+" "+ampm;
	}
	
	if(dd==2){
		thistime = m[mm]+" "+dd+"nd "+yy+" "+h+":"+min+" "+ampm;
	}
	
	if(dd==3){
		thistime = m[mm]+" "+dd+"rd "+yy+" "+h+":"+min+" "+ampm;
	}
    
	$("#now").text(thistime);
		
		 
},1000);

//메뉴 ajax-------------------------------------------------------------------------


$(function(){

	blockcheck();

	$("input[name=menu]").on("click",function(){
	
	var menu = $(this).val();
	var output = '';
	var h = "활동 정지"
	var j = "블락"
		$.ajax({
		
		type : "get", 
		url : "/admin/admin_menu",
		data : ({
			"menu" : menu,
			}),
		dataType:"json", //받는 타입
		//contentType:"application/json; charset=utf-8",//보낼때 타입
		success : function(result){
		
		
		
			for(var i in result){
					output += '<tr class="temp" >';
					output += '<td class="column-0">'+result[i].id+'</td>';
					output += '<td class="column-1">'+result[i].name+'</td>';
					output += '<td class="column-0">'+result[i].nickname+'</td>';
					output += '<td class="column-0">'+result[i].phone+'</td>';					
							if(result[i].status == h){
							output += '<td class="column-0" style="color:#989ec6;">'+result[i].status+'</td>';
							}
							else if (result[i].status == j){
							output += '<td class="column-0" style="color:#d58a8a;">'+result[i].status+'</td>';
							}else{
								output += '<td class="column-0">'+result[i].status+'</td>';
							}
					output += '</tr>';
					
				
			}
				$("#admintbody").html(output);
		
		},//success fin
		error: function(error){
			console.log(error);
		}
	
	})				
	
	
	
	
	}) // click function end

}); // function end





//modal radio박스 체크 함수-------------------------------------------------------------------------


function blockcheck(){
	$("input[name=block]").change(function(){ // name 블록의 변화를 감지 후 function한다

	var checked = $("input[name=block]:checked").val(); // checked된 value값을 가져온다 
	if(checked == "블락"){
		$(".block_day").css("display","none") //ban에도 display none을 해준 이유는, ban을 선택했다 다시  block을 클릭했을 때 block_day 클래스가 없어져야하기 때문.
	}else{
		$(".block_day").css("display","block")
	}
	
	
})



$("input[name=reason]").on("click",function(){
	
	
	var textin = $("textarea[name=reasons]")
	
	if($("input[id=reason]").is(":checked")){
		$(".textbox").css("display","block")
		

	}else{
		
		$(".textbox").css("display","none")
		
		
		textin.val("");
	}
	
})

	








}; //fin

//---------------------------------------------------------------






  


