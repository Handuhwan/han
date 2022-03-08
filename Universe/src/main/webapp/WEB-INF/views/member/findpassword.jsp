<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../header.jsp" %>

<div class="container">
    <div class="row" style="margin-bottom: 50px;">
	    <div class="col-md-1">
	    </div>
	    
    	<div class="col-md-9">
    	
    	<div>
		    <a><img  src="/resources/images/lock.png" style="width:90px;"></a>
		    	<p class="lockname">아이디/패스워드를 잊어버리셨나요?</p>
		    	<div>
		    			<p class="locksub">패스워드 입니다.</p>
		    		</div>
		</div>

      <div class="jumbotron" >	 
		  	
		  		<%-- <c:forEach items="${member}" var="member"> 
		  		  	 <h2 > 현재 비밀번호 : <a >${member.pwd} </a></h2><br/>  		
		  		</c:forEach> --%>
		  	
		  		
			<form class="form-horizontal" action="/member/updatepassword" method="post" onclick="return updatepassword()">	
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					  	<input type="hidden" name="id" value="${id}">
		  		    <div class="form-group">
					      <input type="password"  name="pwd" id="memberPw" class="form-control check id"  placeholder="새 비밀번호 입력"  ><br/>
					  </div>
					  
                <div class="form-group" >
                    <input type="password" name="pwdcheck" id="memberPw2" class="form-control form-control-inline " placeholder="변경 비밀번호 확인" style="margin-bottom: 14px;" />
                	<div class="alert alert-success" id="alert-success" style="border: 1px solid #eee; background-color: #eee; padding-top: 0px;">비밀번호가 일치합니다.</div>
					<div class="alert alert-danger" id="alert-danger" style="border: 1px solid #eee; background-color: #eee; padding-top: 0px;">비밀번호가 일치하지 않습니다.</div>
                </div>
                
                 <button type="submit" id="pwUpdate" name="pwUpdate" class="login_btn findpassword" >비밀번호 변경</button> 
                 <a href="/member/login" class="btn btn-default pw" style="padding: 6px 27px;">취소</a>
 					</form>
  		</div>
	  		<div>
	  		<div class="col-md-1" >
	  		</div>
	  			<div class="col-md-5">
		  		 	<button type="button" class="btn btn-default btn4 pwd" onclick="location.href='/member/findPwd'">비밀번호 찾기</button>
		  		 	</div>
		  		 <div class="col-md-5">
		  		 	<button type="button" class="btn btn-default btn4 pwd" onclick="location.href='/member/login'">로그인</button>
		  		 </div>
	  		</div>
  		</div>
  	</div>
 </div> 	
 
 <script>
 $(function() {

		$("#alert-success").hide();
		$("#alert-danger").hide();

		$("input").keyup(function() {
			var pwd1 = $("#memberPw").val();
			var pwd2 = $("#memberPw2").val();

			if (pwd1 != "" || pwd2 != "") {
				if (pwd1 != pwd2) {
					$("#alert-success").hide();
					$("#alert-danger").show();
					
					
				} else {
					$("#alert-success").show();
					$("#alert-danger").hide();
					return false;
				}

			}
		});//onkey

	});
</script>

<script>
function updatepassword(){
	
	var pwd1 = $("#memberPw").val();
	var pwd2 = $("#memberPw2").val();

	if (pwd1  != pwd2 ) {
		console.log("됨?/");
		return false;
	}//if
	
}

</script>
  
  
<%@include file="../footer.jsp" %>