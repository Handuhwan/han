<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>
<div class="container">
    <div class="row" >
	    <div class="col-md-1">
	    </div>
	    
    	<div class="col-md-9">
		    	<div>
		    	<a><img  src="/resources/images/lock.png" style="width:90px;"></a>
		    		<p class="lockname">아이디/패스워드를 잊어버리셨나요?</p>
		    			<div>
		    				<p class="locksub">하단의 방법을 통해 아이디를 찾을 수 있습니다</p>
		    			</div>
					<h2 class="idpwdcenter">ID / PW 찾기</h2>
					
					
					
					<div class="col-md-12 tab">
					  <button class="col-md-6 tablinks " onclick="openCity(event, 'London')" ><p>아이디</p></button>
					  <button class="col-md-6 tablinks " onclick="openCity(event, 'Paris')" ><p>비밀번호</p></button>
					</div>
					
					<div id="London" class="tabcontent" style="padding-bottom: 200px;">
					  	<form action="/member/findPwdView" method="post" onsubmit="return findPwd()">
					  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					    
					    <div class="loginemail">
					    	<p class="findphone">이름</p>
					      <input type="text" name="name" class="form-control" id="name" placeholder="Name"  style="height: 50px; ">
					    </div>
					  
					  
					 <div class="loginemail">
					  	<p class="findphone">전화번호</p>
					  	<input class="form-control" type="text" id="phone" placeholder="phone" name="to" style="height: 50px;"/>
						 <input type="button" id="phoneChk" value="전송"/><br>
					   </div>	
					   
					   <div class="loginemail">
						<p class="findphone">인증번호 작성</p>
						<input class="form-control" type="text" placeholder="인증번호" id="userNum" style="height: 50px;"> 
						<input type="button" id="enterBtn" value="확인">
						  <input type="hidden" name="text" id="text">

						</div>	
						
					    
					    <div class="form-group">
					    	<div>
					      		  <input type="submit"   class="btn2 btn btn-default account" value="확인" >
					       </div>
					      </div>
					      
					       <div class="form-group">
	                      		 <div class="col-md-12 control">
	                              <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%; margin-top:30px;" >
	                                      	          사용자 확인이 되어야 아이디 찾기 가능합니다.
	                                </div>
	                            </div>
                     		</div>    
					     </form> 
					</div>
					
					<div id="Paris" class="tabcontent" style="padding-bottom: 190px; ">
				 <form class="" action="/member/findPwd" method="post" onsubmit="return findPwdview()"> 
					<div class="form-group" style="padding: 6px 12px;">
					   <div class="loginemail">
					    	<p class="findphone">이메일</p>
					      <input type="text" name="id" class="form-control" id="id" placeholder="이메일" style="height: 50px; "required="/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)?$/i" type="email" />
					   	<div class="error">유효하지 않은 이메일주소 입니다  </div>
					    </div><br><br>
					 </div> 
					 
					    <div class="loginemail">
					    	<p class="findphone">이름</p>
					      <input type="text" name="name" class="form-control" id="name" placeholder="Name"  style="height: 50px; ">
					    </div>
					    
					  <div class="loginemail">
					  	<p class="findphone">전화번호</p>
					  	<input class="form-control" type="text" id="phone" placeholder="전화번호" name="to" style="height: 50px;"/>
						 <input type="button" id="phoneChk" value="전송"/><br>
					   </div>	
					   
					   <div class="loginemail">
						<p class="findphone">인증번호 작성</p>
						<input class="form-control" type="text"  placeholder="인증번호" id="userNum" style="height: 50px;"> 
						<input type="button" id="enterBtn" value="확인">
						  <input type="hidden" name="text" id="text">

						</div>	
					   	
					   	  <div class="form-group">
					    	<div>
					      		 <input type="submit"   class="btn2 btn btn-default account" value="확인" >
					       </div>
					      </div>
					       </form> 
					       
					       <!-- 인증번호 확인 -->
					       
					     <div class="form-group">
                           <div class="col-md-12 control">
                               <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%; margin-top: 20px;" >
                                                가입하신 이메일로 비밀번호를 전송해드리겠습니다.
                                </div>
                            </div>
                     </div>    
					</div>
					
					 

				
					</div>
				</div>
			</div>
		<div class="col-md-2">
	    </div>
	</div>
	
</body>
</html>
	<div style=" margin-top: 100px;">
		<%@ include file = "../footer.jsp"%>
	</div>
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
   
  <script>
//휴대폰 번호 인증
var code2 = ""; 


$("#phoneChk").click(function(){ 
	alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오."); 
	var phone = $("#phone").val(); 
	alert(phone);
	$.ajax({ 
		type:"GET", 
		url:"/member/findphonecheck?phone="+phone,
	
		cache : false, 
		success:function(data){ 
			if(data == "error"){ 
			alert("휴대폰 번호가 올바르지 않습니다.") 
			$(".successPhoneChk").text("유효한 번호를 입력해주세요."); 
			$(".successPhoneChk").css("color","red"); 
			$("#phone").attr("autofocus",true); 
						
			}else{ 
			$("#phone2").attr("disabled",false); 
			$("#phoneChk2").css("display","inline-block"); 
			$(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
			$(".successPhoneChk").css("color","green"); 
			$("#phone").attr("readonly",true); 
			code2 = data;
				} 
			} 
	}); 
	});

//휴대폰 인증번호 대조 

$("#phoneChk2").click(function(){ 
	if($("#phone2").val() == code2){ 
		$(".successPhoneChk").text("인증번호가 일치합니다."); 
		$(".successPhoneChk").css("color","green"); 
		$("#phoneDoubleChk").val("true"); 
		$("#phone2").attr("disabled",true); 
		}else{ 
			$(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
			$(".successPhoneChk").css("color","red"); 
			$("#phoneDoubleChk").val("false"); 
			$(this).attr("autofocus",true); 
			} 
	});

  </script> 







	

