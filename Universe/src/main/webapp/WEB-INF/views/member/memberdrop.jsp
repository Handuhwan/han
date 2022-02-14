<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../header.jsp"%>

<body>
<div class="container">
    <div class="row" >
    
    	<div class="col-md-12">	  	    	 
				<a><img  src="/resources/images/removeuser.png" style="width:90px;"></a>
		    		<p class="lockname">영구적으로 회원탈퇴를 합니다.</p>
		    			<div>
		    				<p class="locksub">로그인 후 이용가능합니다.</p>
		    				<p class="locksub">신청 후 관리자에 의해 삭제가 됩니다.</p>
		    			</div>
					<h2 class="idpwdcenter" >회원 탈퇴</h2>
		</div>			
				
												<!-- Single button -->
						
					<div class="col-md-9" style=" border-bottom: 1px solid #dbdbdb; margin-top: 45px;">
						     <button class="accordion" type="button" data-toggle="dropdown" aria-expanded="false" style="font-weight: bold; font-size: 17px;"">
								    회원탈퇴 동의 <span class="consent" style="font-weight: 100;">(필수)</span>
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
    				 
    				<div class="form-group">
					    <label for="content" class="col-sm-12 control-label memberlabel">탈퇴사유 (마이페이지에서 버튼으로 누르기)</label>
   				 </div> <!-- col-md-12 end -->
    	
   				

    </div>
</div>

</body>
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
   $(function(){
      $('#summernote').summernote({
         height: 230,
         fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
         fontNamesIgnoreCheck : [ '맑은고딕' ],
         focus: true,
         
         callbacks: {
            onImageUpload: function(files, editor, welEditable) {
                  for (var i = files.length - 1; i >= 0; i--) {
                     sendFile(files[i], this);
                  }
              }
         }
         
      });

   })
   
   function sendFile(file,  el) {
      var form_data = new FormData();
      var csrfHeaderName = "${_csrf.headerName}";
      var csrfTokenValue = "${_csrf.token}";
      //스프링 시큐리티 이용하면 CSRF 토큰을 같이 전송해야한다
      $(document).ajaxSend(function(e, xhr, options) {
            xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
         });
         form_data.append('file', file);
         $.ajax({
           data: form_data,
           type: "POST",
           url: '/portfolio/profileImage.do',
           contentType: false,
           enctype: 'multipart/form-data',
           processData: false,
           success: function(img_name) {
              console.log(img_name);
                $(el).summernote('editor.insertImage', img_name.url);
           }
         });
    }

</script>
</html>