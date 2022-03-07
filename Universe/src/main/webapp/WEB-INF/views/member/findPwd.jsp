<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>

    <!-- contents -->
    <section class="product">
    	<div class="container">
    		<div class="row" style="margin-top:30px; margin-bottom:30px; margin-right:20px;">
   			
    		<div class="col-md-6 newitem" style="padding-right: 0;padding-left: 0;"> <!-- id/pw find button -->
    			<div class="form-group"style="border-right:3px solid #cfd4f4; height: 632px;">
    				<a><img src="/resources/images/lock.png" style="width:90px; margin-left: 237px;"></a>
    				<p class="lockname">아이디/패스워드를 잊어버리셨나요?</p>
    				<p class="locksub">하단의 방법을 통해 아이디를 찾을 수 있습니다</p>
    					<div class="idpwfindbtn" style="text-align: center;">
					   		<button type="button"  class="moonju" onclick="openCity(event, 'London')" style="padding-top: 4px; border-radius: 5px;">ID찾기</button>
					 		<button type="button"  class="moonju" onclick="openCity(event, 'Paris')" style="padding-top: 4px; border-radius: 5px;">PW찾기</button>
    					</div>
    					
    				<div style="padding-top: 126px;">
    					<img src="/resources/images/ad.png" style="width:450px; height:270px; margin-left:64px;">
    				</div>	
    			</div>
    		</div><!-- 6컬럼end -->
    		
    			<div class="col-md-6 newitem"> <!-- 입력 구간  -->
    				<div id="London" class="tabcontent" style="padding-bottom: 200px;"> <!-- id 찾기 -->
					  	<form action="/member/findPwdView" method="post" onsubmit="return findPwd()">
					  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					    
					    <div class="loginemail">
					    	<p class="findphone">이름</p>
					      <input type="text" name="name" class="form-control" id="name" placeholder="Name">
					    </div>
					  
					 	<div class="loginemail">
						  	<p class="findphone">전화번호</p>
						  	<input class="form-control" type="text" id="phone" placeholder="phone" name="to">
							<input type="button" id="phoneChk" value="전송" class="address"><br>
					    </div>	
					   
					   <div class="loginemail">
							<p class="findphone">인증번호</p>
							<input class="form-control" type="text" placeholder="인증번호" id="userNum"> 
							<input type="button" id="enterBtn" value="확인" class="address">
							<input type="hidden" name="text" id="text" >
						</div>	
						
					    
					    <div class="form-group">
						   	<div>
						    	<input type="submit"  class="btn2 btn btn-default account" value="확인" style="margin-right: 95px;">
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
					</div> <!-- /.id찾기  -->
					
					<div id="Paris" class="tabcontent" style="padding-bottom: 190px; "> <!-- pw찾기 -->
				 		<form class="" action="/member/findPwd" method="post" onsubmit="return findPwdview()"> 
						    <div class="loginemail">
						   		<p class="findphone">이메일</p>
						    	<input type="text" name="id" class="form-control" id="id" placeholder="이메일" required="/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)?$/i" type="email" />
						   		<!--  <div class="error">유효하지 않은 이메일주소 입니다  </div>-->
						    </div>
					 
					    <div class="loginemail" style="padding-top: 20px;">
					    	<p class="findphone"  style="padding-top:0;">이름</p>
					        <input type="text" name="name" class="form-control" id="name" placeholder="Name" >
					    </div>
					    
					    <div class="loginemail">
						  	<p class="findphone">전화번호</p>
						  	<input class="form-control" type="text" id="phone" placeholder="전화번호" name="to">
							<input type="button" id="phoneChk" value="전송" class="address"><br>
					    </div>	
					   
					    <div class="loginemail">
							<p class="findphone">인증번호 작성</p>
							<input class="form-control" type="text"  placeholder="인증번호" id="userNum"> 
							<input type="button" id="enterBtn" value="확인" class="address">
							<input type="hidden" name="text" id="text">
						</div>	
					   	
					   	<div class="form-group">
					    	<div>
					      		<input type="submit" class="btn2 btn btn-default account" value="확인" class="address" style="margin-right: 95px;">
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
					</div> <!-- /.pw찾기 -->
    			</div><!-- /.입력구간-->
    		</div> <!-- /.row -->
    	</div> <!-- /.container -->
    </section>
    <!-- contents end -->
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







	
