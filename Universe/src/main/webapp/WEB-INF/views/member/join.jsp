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
    				
    				<form class="form-horizontal" name="aaa" method="post">
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					  
					  <div class="">
					    <label for="id" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >이메일</label>
					    <div class="col-sm-10 joinbox" >
					      <input type="text" name="id" class="form-control " id="id" placeholder="이메일 형식" style="padding: 16px; width: 27%;">
					      <span id="msg"></span>
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="pwd" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >암호</label>
					    <div class="col-sm-10 joinbox">
					      <input type="password" name="pwd" class="form-control" id="pwd" placeholder="암호입력" style="padding: 16px; width: 27%;">
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
					    <label for="member_post" class="col-sm-2 control-label joinbuttton1" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" >주소</label>
					    <div class="col-sm-10 joinbox">
					      <input type="text" name="zip_num"  id="member_post" placeholder="우편번호" style="padding: 10px; text-align: left; width: 27%; border: 1px solid #ccc;">
					      <input type="button" value="우편번호 찾기" onclick="findAddr()" class="address"><br><br>
					      <input type="text" name="address1" class="form-control"  placeholder="지번" id="member_addr" style="margin-bottom: 5px; padding: 16px; width: 27%;">
					      <input type="text" name="address2" class="form-control"  placeholder="나머지 주소" style="padding: 16px; width: 27%;">
					    </div>
					  </div>
					  
					  <div class="">
					    <label for="phone" class="col-sm-2 control-label joinbuttton" style="text-align: left; font-weight: 900; padding-top: 16px; padding-bottom: 14px" > 전화번호</label>
					    <div class="col-sm-10 joinbox">
					      <input type="text" name="phone" class="form-control" id="phone" placeholder="전화번호 입력" style="padding: 16px; width: 27%; display:inline-block;">
					      <a href="#" class="mobilePopup" onclick="mobilePopup('ubsstore4377' , 'dream' ); return false;"><img  src="/resources/images/mobile.png" style="width:23px;">휴대폰인증</a>
					    </div>
					  </div>
					  
					  <div class="">
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="button" class=" btn btn-default  signup1" onclick="goJoin()">회원가입 등록</button>
					      
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

<%@ include file = "../footer.jsp"%>