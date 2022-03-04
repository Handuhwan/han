<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../header.jsp"%> 

    <!-- contents -->
    <section class="product">
    	<div class="container">
    		<div class="row">

    		<div class="col-md-9" style=" border-bottom: 1px solid #dbdbdb; margin-top: 79px;">
						     <button class="accordion" type="button" data-toggle="dropdown" aria-expanded="false" style="font-weight: bold; font-size: 17px;"">
								    이용약관 동의 <span class="consent" style="font-weight: 100;">(필수)</span>
							</button>
							<ul class="dropdown-menu" role="menu">
							 <li>
							 	<a class="textline">
							 	<textarea class="intextline"> 
							 	■ 수집하는 개인정보 항목 및 수집방법
									가. 수집하는 개인정보의 항목
									o 회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
									- 회원가입시 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 휴대전화번호 , 이메일 , 
									14세미만 가입자의 경우 법정대리인의 정보
									- 서비스 신청시 : 주소, 결제 정보
									
									o 서비스 이용 과정이나 사업 처리 과정에서 서비스이용기록, 접속로그, 쿠키, 접속 IP, 결제 기록, 불량이용 기록이 생성되어 
									수집될 수 있습니다.
									
									나. 수집방법
									- 홈페이지, 서면양식, 게시판, 이메일, 이벤트 응모, 배송요청, 전화, 팩스, 생성 정보 수집 툴을 통한 수집
									 </textarea>
								</a>
							</li>
						  </ul>
					</div><!--col-md-6  -->
						  
					<div class="col-md-3" style=" border-bottom: 1px solid #dbdbdb; margin-top: 45px;">
						  
						    <div class="chkbox accordionbottom" style="margin-top: 53px;">
							    <input id="one" type="checkbox" name="agreeall" value="y" >
							    <span class="check"></span>
							    <label for="one">동의</label>
							  </div>
    				 </div><!-- col-md-3 -->
    				
    				
					
					<div class="col-md-9" style=" border-bottom: 1px solid #dbdbdb; margin-top: 45px;">
						     <button class="accordion" type="button" data-toggle="dropdown" aria-expanded="false" style="font-weight: bold; font-size: 17px;"">
								     이메일 수신 동의 <span class="consent" style="font-weight: 100;">(필수)</span>
							</button>
							<ul class="dropdown-menu" role="menu" >
							 <li>
							 	<a class="textline">
							 	 <textarea class="intextline"> 
							 	할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑 정보를 SMS나 이메일로 받아보실 수 있습니다. 
							 	단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.
								선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 
								회원가입 후 회원정보 수정 페이지에서 언제든지 수신여부를 변경하실 수 있습니다.
								 </textarea>
								</a>
							</li>
						  </ul>
					</div><!--col-md-6  -->
						  
						  <div class="col-md-3" style=" border-bottom: 1px solid #dbdbdb; margin-top: 19px;">
						  
						    <div class="chkbox accordionbottom" style="margin-top: 45px;">
							    <input id="two" type="checkbox" name="agreeall" value="y" >
							    <span class="check"></span>
							    <label for="two">동의</label>
							  </div>
    				     	</div><!-- col-md-3 -->
    				 
    				     
    				   	
    				   	<div class="col-md-9" style=" border-bottom: 1px solid #dbdbdb; margin-top: 45px;">

						     <button class="accordion" type="button" data-toggle="dropdown" aria-expanded="false" style="font-weight: bold; font-size: 17px;"">
								     마케팅 수신 동의 <span class="consent" style="font-weight: 100;">(선택)</span>
							</button>
							<ul class="dropdown-menu" role="menu" >
							 <li>
							 	<a class="textline">
							 	 <textarea class="intextline"> 
							 	마케팅 수신 모두 동의시, 즉시 사용가능한 쿠폰을 지급해 드립니다.
								 </textarea>
								</a>
							</li>
						  </ul>
					</div><!--col-md-6  -->
						  
						  <div class="col-md-3" style=" border-bottom: 1px solid #dbdbdb; margin-top: 34px;">
						  
						    <div class="chkbox accordionbottom" style="margin-top: 30px;">
							    <input id="three" type="checkbox" name="agreeall" value="y" >
							    <span class="check"></span>
							    <label for="three">동의</label>
							  </div>
    				    	</div><!-- col-md-3 -->
    				 
    				  <div class="col-md-12" style=" border-top: 2px solid #000; margin-top:50px;">
    				  </div>
    
    			<div class="col-md-9 newitem" >
    				<h2 class="join">회원가입</h2>
    				
    				<form class="form-horizontal" action="/member/memberinsert" name="join" method="post" onsubmit="return memeber_insert_form()">
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					  
					  <div class="">
					    <label for="id" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >이메일</label>
					    <div class="col-sm-10 joinbox" >
					      <input type="text" name="id" class="form-control " id="id" placeholder="이메일 형식" style="padding: 16px; width: 27%;">
					      <span id="idmsg"></span>
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="pwd" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >암호</label>
					    <div class="col-sm-10 joinbox">
					      <input type="password" name="pwd" class="form-control" id="pwd" placeholder="암호입력" style="padding: 16px; width: 27%;">
					     <span id="pwmsg"></span>
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="pwdcheck" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >암호확인</label>
					    <div class="col-sm-10 joinbox">
					      <input type="password" name="pwdcheck" class="form-control" id="pwdcheck" placeholder="암호확인" style="padding: 16px; width: 27%;">
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="name" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >이름</label>
					    <div class="col-sm-10 joinbox">
					      <input type="text" name="name" class="form-control" id="name" placeholder="이름입력" style="padding: 16px; width: 27%;">
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="nikname" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >별명</label>
					    <div class="col-sm-10 joinbox">
					      <input type="text" name="nickname" class="form-control" id="nickname" placeholder="별명입력" style="padding: 16px; width: 27%;">
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="member_post" class="col-sm-2 control-label joinbuttton1" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >주소</label>
					    <div class="col-sm-10 joinbox">
					      <input type="text" name="zip_num"  id="member_post" placeholder="우편번호" style="padding: 10px; text-align: left; width: 27%; border: 1px solid #ccc;">
					      <input type="button" value="우편번호 찾기" onclick="findAddr()" class="address" style="margin-left: 3px;"><br><br>
					      <input type="text" name="address1" class="form-control"  placeholder="지번" id="member_addr" style="margin-bottom: 5px; padding: 16px; width: 27%;">
					      <input type="text" name="address2" class="form-control"  placeholder="나머지 주소" style="padding: 16px; width: 27%;">
					    </div>
					  </div>
					  
					 <div >
						  	 <label for="member_post" class="col-sm-2 control-label joinbuttton1" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >전화번호</label>
						  	 <div class="col-sm-10 joinbox">
						  		<input class="form-control" type="text" id="phone" placeholder="전호번호입력" style="padding: 17px; width: 28%; display: inline-block; " name="to"/>
							 <input type="button" class="address" id="phoneChk" value="전송" style="margin-left: 3px;   width: 96px;"/><br>
						   </div>	
					   </div>
					   
					   <div>
						<label for="member_post" class="col-sm-2 control-label joinbuttton1" style="text-align: left; font-weight: 900; padding-top: 17px; padding-bottom: 18px; border-bottom: 1px solid #e5e5e5; " >인증번호 작성</label>
							<div class="col-sm-10 joinbox">
							<input class="form-control" type="text"  placeholder="인증번호입력" id="userNum" style="padding: 17px; width: 28%; display: inline-block; "> 
								<input type="button" class="address" id="enterBtn" value="확인" style="margin-left: 3px;   width: 96px;">
							  <input type="hidden" name="text" id="text">
							</div>
						</div>	
					  
					  <div class="">
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="btn btn-default  signup1" >회원가입 등록</button>
					      
					    </div>
					  </div>
					  
					</form>
    			</div><!-- 9 end -->
    		</div>
    	</div>
    </section>
    <!-- contents end -->
	<script>
    $("#agreeall").click(function(){
    	if($("#agreeall").is(":checked")){
    		$(".agree").prop("checked",true); //prop이건 비동기식
    	}else{
    		$(".agree").prop("checked",false);
    	}
    });
    
    $(".agree").click(function(){
    	if($("input[name='agree']:checked").length == 3){
    		$("#agreeall").prop("checked",true);
    		}else{
    			$("#agreeall").prop("checked",false);
    		}
    
    	
    })
    function checkIDnext(){
    	 if ($("#agreeall").is(":checked") == true){
 		    location.href = "member2.do";
 		    
 	 }else{
 		    alert ("약관에 동의하셔야 가입이 가능합니다.")
 		    return false;
 		  
  }
    }
  </script> 
  <script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
</script>

<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
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

<%@ include file = "../footer.jsp"%>