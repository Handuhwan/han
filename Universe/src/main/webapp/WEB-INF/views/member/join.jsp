<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../header.jsp"%> 

    <!-- contents -->
    <section class="product">
    	<div class="container">
    		<div class="row">
    	<form class="form-horizontal" action="/member/memberinsert" name="join" id="registerForm" method="post" onsubmit="return memeber_insert_form()">
    		<div class="col-md-9" style=" border-bottom: 1px solid #dbdbdb; margin-top: 79px;">
						     <button class="accordion" type="button" data-toggle="dropdown" aria-expanded="false" style="font-weight: bold; font-size: 17px;">
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
							    <input id="one" name="one" type="checkbox"  value="y" >
							    <span class="check" ></span>
							    <label for="one"  >동의</label>
							  </div>
    				 </div><!-- col-md-3 -->
    				
    				
					
					<div class="col-md-9" style=" border-bottom: 1px solid #dbdbdb; margin-top: 45px;">
						     <button class="accordion" type="button" data-toggle="dropdown" aria-expanded="false" style="font-weight: bold; font-size: 17px;">
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
							    <input id="two"  name="two" type="checkbox"  value="y" >
							    <span class="check" ></span>
							    <label for="two" >동의</label>
							  </div>
    				     	</div><!-- col-md-3 -->
    				 
    				     
    				   	
    				   	<div class="col-md-9" style=" border-bottom: 1px solid #dbdbdb; margin-top: 45px;">

						     <button class="accordion" type="button" data-toggle="dropdown" aria-expanded="false" style="font-weight: bold; font-size: 17px;">
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
					</div><!--col-md-9  -->
						  
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
    				
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					  	
					  <div class="">
					    <label for="id" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >아이디</label>
					    <div class="col-sm-10 joinbox" style="display: flex; " >
					      <input type="text" name="id" class="form-control check id" id="id" placeholder="아이디 입력" style="padding: 16px; width: 27%; display: inline;"  value="" ><br/>
					   		<span class="id_input_re_1" style="padding: 9px;">사용 가능한 아이디입니다.</span>
							<span class="id_input_re_2" style="padding: 9px;">아이디가 이미 존재합니다.</span>
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="pwd" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >암호</label>
					    <div class="col-sm-10 joinbox">
					      <input type="password" name="pwd" class="form-control" id="pwd" placeholder="암호입력" style="padding: 16px; width: 27%; display: inline;"><br/>
					     <span id="pwmsg"></span>
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="pwdcheck" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >암호확인</label>
					    <div class="col-sm-10 joinbox">
					      <input type="password" name="pwdcheck" class="form-control" id="pwdcheck" placeholder="암호확인" style="padding: 16px; width: 27%; display: inline;"><br/>
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="name" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >이름</label>
					    <div class="col-sm-10 joinbox">
					      <input type="text" name="name" class="form-control" id="name" placeholder="이름입력" style="padding: 16px; width: 27%; display: inline;"><br/>
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="nikname" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >별명</label>
					    <div class="col-sm-10 joinbox">
					      <input type="text" name="nickname" class="form-control" id="nickname" placeholder="별명입력" style="padding: 16px; width: 27%; display: inline;"><br/>
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="member_post" class="col-sm-2 control-label joinbuttton1" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >주소</label>
					    <div class="col-sm-10 joinbox">
					      <input type="text" name="zip_num"  id="member_post" placeholder="우편번호" style="padding: 10px; text-align: left; width: 27%; border: 1px solid #ccc;" readonly>
					      <input type="button" value="우편번호 찾기" onclick="findAddr()" class="address" style="margin-left: 3px;"><br><br>
					      <input type="text" name="address1" class="form-control"  placeholder="지번" id="member_addr" style="margin-bottom: 5px; padding: 16px; width: 27%;">
					      <input type="text" name="address2" class="form-control"  placeholder="나머지 주소" style="padding: 16px; width: 27%;">
					    </div>
					  </div>
					  
						<div >
						 <label for="member_post" class="col-sm-2 control-label joinbuttton1" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >전화번호</label>
						  	 <div class="col-sm-10 joinbox">
								<input class="form-control" id="phone" type="text" name="phone" placeholder="전화번호입력"  style="padding: 17px; width: 28%; display: inline-block; " required/> 
								<input type="button" id="phoneChk" class="address doubleChk" value="전송" style="margin-left: 3px;   width: 96px; display: inline;"><br/> 
							</div>
						</div>
						
						<div>
						<label for="member_post" class="col-sm-2 control-label joinbuttton1" style="text-align: left; font-weight: 900; padding-top: 17px; padding-bottom: 18px; border-bottom: 1px solid #e5e5e5; " >인증번호 작성</label>
							<div class="col-sm-10 joinbox">
								<input class="form-control" id="phone2" type="text" name="phone2"placeholder="인증번호입력" style="padding: 17px; width: 28%; display: inline-block;"  disabled required/> 
								<span id="phoneChk2" class="doubleChk address"  style="margin-left: 3px; width: 96px; text-align: center;">확인</span> 
								<span class="point successPhoneChk">휴대폰 번호 입력후 인증번호 보내기를 해주십시오.</span> 
								<input type="hidden" id="phoneDoubleChk"/>
						 	</div>
						 </div>
						

					  
					  <div class="">
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" id="tmpBtn" class=" btn-default  signup1" >회원가입 등록</button>
					      
					    </div>
					  </div>
					  </div>
					</form>
    			</div><!-- row -->
    		</div>
    
    </section>
    <!-- contents end -->
	
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
		alert("인증완료") 
		
	    $(document).ready(function(){
		$("#tmpBtn").trigger('click');
		
	    });
		}else{ 
			$(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
			$(".successPhoneChk").css("color","red"); 
			$("#phoneDoubleChk").val("false"); 
			$(this).attr("autofocus",true); 
			} 
	});

  </script> 
  
<script >

$("#id").blur(function(){

	var id = $('#id').val();

	console.log(id);
	
	$.ajax ({
	    url: '/member/checkjoinid.do',
	    type: 'get',
	    data : {id:id},
	    dataType : 'json',//서버로부터 내가 받는 데이터의 타입
	    success: function(result){
	    	console.log("result : "+result);
	    	if(result == 0){
				$('.id_input_re_1').css("display","inline-block");
				$('.id_input_re_2').css("display", "none");				
			} else {
				$('.id_input_re_2').css("display","inline-block");
				$('.id_input_re_1').css("display", "none");				
			}
	    }
	  
	  });
    
});// function 종료

</script>
  
  
  <!-- 에러메세지 -->
 <script type="text/javascript">
                   
      $(document).ready(function () {          
        //기본형태
        //$('#registerForm').validate(); //유효성 검사를 적용
       
        // validate signup form on keyup and submit
        //확장옵션
        $('#registerForm').validate({
            rules: {
               /* 	id:{required:true, minlength:3, remote:"Validate"}, */
               	pwd: "required",
               	pwdcheck: {required:true, equalTo:'#pwd'},               
                name: {required:true,minlength:3},
                nickname: {required:true},
                phone: {required:true, minlength:11, maxlength:11} , // 1~100범위
                
            },
            messages: {
                id: {
                     required:"아이디를 입력하시오.",
                     minlength: jQuery.format("아이디는 {0}자 이상 입력해주세요!"),
                     remote : jQuery.format("입력하신 {0}는 이미존재하는 아이디입니다. ")
                },
                pwd:"암호를 입력하시오.",
                pwdcheck: {
                    required: "암호확인를 입력하시오.",
                    equalTo:"암호가 틀립니다." },
               	name: {required:"이름을 입력하시오.",
              	 	minlength: jQuery.format("3자 이상 입력해주세요!")
               	},
                nickname: {required:"별명을 입력하시오."},
              	phone: {required: "11자리 입력",
              		minlength: jQuery.format("휴대폰번호는 {0}자 이상 입력해주세요!"),
              		maxlength: jQuery.format("휴대폰번호는 11자로 입력해주세요!")
              			},
             
            }
//여기부터
,
            submitHandler: function (frm){
                frm.submit();   //유효성 검사를 통과시 전송
            },
            success: function(e){
                //
            }
//여기까지는 생략 가능           
        });
      }); //end ready()
 
    </script>
  

<%@ include file = "../footer.jsp"%>