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
		    			<p class="locksub">아이디 입니다.</p>
		    		</div>
			
		</div>

      <div class="jumbotron" >	 
		  	
		  		<c:forEach items="${member}" var="member">
		  		  	
		  		  	 <h2 > 아이디는 : <a >${member.id} </a></h2><br/>
		  		
		  		</c:forEach>
 
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
  
  		
  		
  		

<%@include file="../footer.jsp" %>