
$(function(){
	$(".chatroom").on("click",function(){
	
	$(".chatroom").css("background","#e8e8e8");

	$(this).css("background","#bfc1e0");
	
	
	}) //on click end
	
	$(".chatinput").on("propertychange change keyup paste input",function(){
		var len=$(".chatinput").val().length;
		if(len>0){
			$(".chatpost").css("background","rgb(237 239 251)")
			$(".chatpost").attr("disabled", false)
		}else if(len==0){
			$(".chatpost").css("background","#e8e8e8")
			
			$(".chatpost").attr("disabled", true)
		}
		
	}) // 채팅 감지
	
	

})//function end


function chat(){

	alert("채팅방을 클릭해주세요");
	$(".chatinput").val("");
 
} //start;

function chatlist(me,person,pno){

	console.log(me);
	console.log(person);
	console.log(pno);
	$(".chatinput").val("");
	$("#chatinputbtn").attr("onclick","chatinput('"+me+"','"+person+"','"+pno+"')");
	

	
	
	var str = '';
	$.ajax({
		type:"get",
		url:"/chat/chatlog",
		data:({
			me:me,
			person:person,
			pno:pno
		
		}),
		dataType:"json",
		success:function(data){
			
			for(var i in data){
			
			if(data[i].person==person){
				str += "<div style='height:50px; margin-bottom:10px;'><p class='balloon_02'><span>"+data[i].chat+"</span></p></div>";
				
			}//if end
			else{
				str += "<p class='balloon_03'><span>"+data[i].chat+"</span></p>";
			}//else end
			}//for end
			$("#chatlogbox").html(str);
		
			 $('#chatlogbox').scrollTop($('#chatlogbox').prop('scrollHeight'));

		}//success end
	})//ajax end
} // list end


function chatinput(me,person,pno){
	
	var chat = $(".chatinput").val();
	
	$.ajax({
		type:"get",
		data:({
			me:me,
			person:person,
			pno:pno,
			chat:chat,
		}),
		dataType:"json",
		url:"/chat/chatinput",
		success:function(data){
			
			if(data==1){
				chatlist(me,person,pno)
				$(".chatinput").val("");
			}
		}
	})//ajax end
	

}//chatinput end


function chatroomdel(me,person,pno){
	//$("#"+pno).remove();
	console.log(me+person+pno);
	
	$.ajax({
		type:"get",
		url:"/chat/chatdel",
		data:({
			me:me,
			person:person,
			pno:pno
		}),
		success:function(data){
		
			
			$("#"+pno).remove();
		}
	
	})//ajax end
} //function end
$(function(){
	
	$("#tradechatbtn").addClass("chatactive")

})

function personbtn(){
	$(".chatroombox").css("display","none");
	$(".chatrpersonbox").css("display","block");
	$("#personbtn").addClass("chatactive")
	$("#tradechatbtn").removeClass("chatactive")
}
function tradechatbtn(){
	$(".chatroombox").css("display","block");
	$(".chatrpersonbox").css("display","none");
	$("#tradechatbtn").addClass("chatactive")
	$("#personbtn").removeClass("chatactive")
}

