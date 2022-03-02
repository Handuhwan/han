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
    
	$("#now").text(thistime);
		
		 
},1000);

//메뉴 ajax-------------------------------------------------------------------------


$(function(){

	$("input[name=menu]").on("click",function(){
	
	var menu = $(this).val();
	var output = '';
	
		$.ajax({
		
		type : "get", //토큰 붙여야함
		url : "/admin/admin_menu",
		data : ({
			"menu" : menu,
			}),
		dataType:"json", //빋는 타입
		//contentType:"application/json; charset=utf-8",//보낼때 타입
		success : function(result){
		
			for(var i in result){
					output += '<tr class="temp" >';
					output += '<td class="column-0">'+result[i].id+'</td>';
					output += '<td class="column-1">'+result[i].name+'</td>';
					output += '<td class="column-0">'+result[i].nickname+'</td>';
					output += '<td class="column-0">'+result[i].phone+'</td>';					
					output += '<td class="column-2">';
					output += '<div class ="row">';
					output += '<div class="col-md-6" style="text-align:right;">'+result[i].status+'</div>';
					output += '<div class="col-md-6">';
					output += '<button type="button" class="btn_blocked" data-toggle="modal" data-target="#${list.id}" >Manage</button>';
					output += '</div>';
					output += '</div>';
					output += '<form action ="/admin/admin_member_forced_eviction" method="post" onclick="blockcheck()">';
					output += '<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">';
					output += '<div class="modal fade" style="text-align:left;" id="${list.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">';
					output += '<div class="modal-dialog">';
					output += '<div class="modal-content">';
					output += '<div class="modal-header">';
					output += '<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
					output += '<label><input type="radio" name="block" value="활동 정지"> Block</label>';
					output += '<label><input type="radio" name="block" value="블락"> Ban</label>'	;		
					output += '<h4 class="modal-title" id="myModalLabel">활동 정지 회원</h4>'	;					
					output += '<div class="block_square"><input readonly name="reported_id" value="${list.id}"></div>';						
					output += '</div>';					
					output += '<div class="modal-header">';					
					output += '<h4 class="modal-title" id="myModalLabel">활동 정지 사유</h4>'	;					
					output += '<div class="form-check">';						
					output += '<input class="form-check-input" name="reason" type="radio" value="성인/도박 등 불법광고 및 스팸 활동" id="flexCheckDefault">'	;					
					output += '<label class="form-check-label" for="flexCheckDefault"> 성인/도박 등 불법광고 및 스팸 활동</label>';														
					output += '</div>';						
					output += '<div class="form-check">';						
					output += '<input class="form-check-input" name="reason" type="radio" value="바람직하지 않은 활동(광고,도배,욕설,비방 등)" id="flexCheckDefault">';						
					output += '<label class="form-check-label" for="flexCheckDefault">바람직하지 않은 활동(광고,도배,욕설,비방 등)</label>';										
					output += '</div>';												
					output += '<div class="form-check">';						
					output += '<input class="form-check-input" name="reason" type="radio" value="사이트 내 자체 운영 원칙에 위배되는 활동" id="flexCheckDefault">';						
					output += '<label class="form-check-label" for="flexCheckDefault">사이트 내 자체 운영 원칙에 위배되는 활동</label>';											
					output += '</div>';						
					output += '<div class="form-check">';											
					output += '<input class="form-check-input" name="reason" type="radio" value="" id="reason">';												
					output += '<label class="form-check-label" for="flexCheckDefault">기타</label>';						
					output += '<div class="textbox">';						
					output += '<textarea class="suspended" name="reasons"  id="suspended" placeholder="기타- 한글 25자 이내로 작성해 주세요"></textarea>';						
					output += '</div>';						
					output += '</div>';						
					output += '</div>';			
					output += '<div class="block_day">';		     		
					output += '<div class="modal-header">';						
					output += '<h4 class="modal-title" id="myModalLabel">활동 정지 기간</h4>';							
					output += '<div class="form-check">';							
					output += '<input class="form-check-input" name="block_date" type="radio" value="7" id="flexCheckDefault">';							
					output += '<label class="form-check-label" for="flexCheckDefault">7일</label>';							
					output += '</div>';							
					output += '<div class="form-check">';							
					output += '<input class="form-check-input" name="block_date" type="radio" value="30" id="flexCheckDefault">';							
					output += '<label class="form-check-label" for="flexCheckDefault">30일</label>';							
					output += '</div>';							
					output += '</div>';						
					output += '</div>';					
					output += '<div class="modal-footer">';				   
					output += '<p>대상 회원을 처리 하시겠습니까?</p>';				    	
					output += '<button type="submit" class="btn_check">확인</button>';				    	
					output += '<button type="button" class="btn_cancel" data-dismiss="modal">취소</button>';				    	
					output += '</div>';				    
					output += '</div>';				
					output += '</div>';			
					output += '</div>'; //.modal --> 		
					output += '</form>'; //.form end -->
					output += '</td>'; //.td end -->	
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









  


