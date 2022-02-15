<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../header.jsp"%>

<body>
<div class="container">
    <div class="row" >
	    <div class="col-md-2">
	    </div>
	    
    	<div class="col-md-8">
		    	<div>
		    	<a><img  src="/resources/images/lock.png" style="width:90px;"></a>
		    		<p class="lockname">아이디/패스워드를 잊어버리셨나요?</p>
		    			<div>
		    				<p class="locksub">하단의 방법을 통해 아이디를 찾을 수 있습니다</p>
		    			</div>
					<h2 class="idpwdcenter">ID / PW 찾기</h2>
					
					<div class="col-md-12 tab">
					  <button class="col-md-6 tablinks " onclick="openCity(event, 'London')" ><p >아이디</p></button>
					  <button class="col-md-6 tablinks " onclick="openCity(event, 'Paris')" ><p>비밀번호</p></button>
					</div>
				
					
					
					
					<div id="London" class="tabcontent" style="padding-bottom: 90px;">
					    <div class="loginemail">
					    	<p class="findphone">이름</p>
					      <input type="text" name="name" class="form-control" id="name" placeholder="Name"  style="height: 50px; ">
					    </div>
					  
					  <div class="loginemail">
					     <p class="findphone">전화번호입력</p>
					      <input type="text" name="phone" class="form-control" id="phone" placeholder="전화번호 입력" style="padding: 10px; height: 50px;">					     
					   </div>		
					    <div class="loginemail">
					    	<p class="findphone">본인 확인 이메일</p>
					      <input type="text" name="name" class="form-control" id="name" placeholder="Email"  style="height: 50px; ">
					    </div>
					    
					    <div class="form-group">
					    	<div>
					      		 <input type="submit" class="btn2 btn btn-default account" value="확인" >
					       </div>
					      </div>
					     
					</div>
					
					<div id="Paris" class="tabcontent" style="padding-bottom: 90px;">
					<div class="form-group">
					   <div class="loginemail">
					    	<p class="findphone">이메일</p>
					      <input type="text" name="name" class="form-control" id="name" placeholder="name"  style="height: 50px; ">
					    </div>
					  
					  <div class="loginemail">
					     <p class="findphone">전화번호입력</p>
					      <input type="text" name="phone" class="form-control" id="phone" placeholder="전화번호 입력" style="padding: 10px; height: 50px;">					     
					   </div>	
					   	  
					   	  <div class="form-group">
					    	<div>
					      		 <input type="submit" class="btn2 btn btn-default account" value="확인" >
					       </div>
					      </div>
					</div>
					</div>
				</div>
			</div>
		<div class="col-md-6" style="margin:100px;">
		</div>
	</div>
</div>

</body>
</html>
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
   


