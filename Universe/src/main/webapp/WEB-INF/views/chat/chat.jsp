<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../header.jsp"%>


<div class="container" style="margin-top:100px; margin-bottom:100px;">

	<div class="col-md-12" style="height:800px; border:10px solid #cfd4f4; padding-top:20px;">
		<div>
			<button onclick="personbtn()" id="personbtn" class="chatselbtn">개인채팅</button>
			<button onclick="tradechatbtn()" id="tradechatbtn" class="chatselbtn">거래채팅</button>
		</div>
		<div class="col-md-4 chatrooms" style="padding:0px;border:5px solid #a2a7ff; height:600px; margin-right:15px; width:340px;">
			<c:forEach items="${crlist }" var="list">
			<div class="chatroombox" id="${list.pno }">
			<button class="chatroom" onclick="chatlist('${list.me}','${list.person}',${list.pno})">
				<img class="pull-left" src="/Pupload/${list.img1 }">
				<span class="chatsaler">거래 상대 : ${list.nickname } 님</span><br><br>
				<span>상품 명  : ${list.title }</span>
			</button>
			<button onclick="chatroomdel('${list.me}','${list.person}',${list.pno})"><img src="/resources/images/door.png"></button>
			</div>
			
		
			</c:forEach>
			<c:forEach items="${personlist }" var="lists">
				<div class="chatrpersonbox" id="${list.pno }" >
				<button class="chatroom" onclick="chatlist('${lists.me}','${lists.person}',${lists.pno})">
				<c:if test="${lists.userimg != null }">
				<img class="pull-left" src="/Pupload/${lists.userimg }">
				</c:if>
				<c:if test="${lists.userimg == null }">
				<img class="pull-left" src="/resources/images/store.png">
				</c:if>
				<span class="chatsaler">거래 상대 : ${lists.nickname } 님</span><br><br>
				<span>1:1 채팅방입니다.</span>
				</button>
				<button onclick="chatroomdel('${lists.me}','${lists.person}',${lists.pno})"><img src="/resources/images/door.png"></button>
			</div>
			
			</c:forEach>
		</div> <!-- col md 4 end --> 
		
		<div class="col-md-8" id="chatlogbox" style="background:#e8e8e8;border:5px solid #777df4; height:600px; overflow:auto;">
				
		</div><!-- col md 8 end -->
		
		<!-- 하단 -->
		<div class="col-md-4" id="chatselect" style="padding:0px;border:5px solid #a2a7ff; height:90px; margin-right:15px; width:340px;">
				<button onclick="location.href='/'" class="chathome" >Home</button>
				<button onclick="location.href='/mypage/mypage?id=<sec:authentication property="principal.member.id"/>'" class="chatmypage">My Page</button>
				<button onclick="history.back()" class="chatgoback">Go Back</button>
			
		</div><!-- col md 4 end -->
		<div class="col-md-8"  style="height:90px;border:5px solid #777df4;padding:0px;">
			<input class="chatinput" type="text">
			<button type="button" id="chatinputbtn" disabled="disabled" onclick="chat()" class="chatpost">전송</button>
		</div>
	
	
	</div> <!-- col md 12 end -->

</div> <!-- con end -->


<%@ include file="../footer.jsp"%>