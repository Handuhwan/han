<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../header.jsp"%>



<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.member.id" var="meid"/>
</sec:authorize>


	<div class="container">
		<div class="col-md-12" style="margin-bottom: 290px;">
		<div class="tradebuy" >
			<p class="text-center tradeheader" >거래상태</p>
			<div style="display: flex;  border: 1px solid #d5d5d5;">
			
				<div>
				<sec:authentication property="principal.member.userimg" var="userimg" />
				<c:if test="${userimg == null }">
					<img alt="" class="tradephoto" src="/resources/images/store.png">
				</c:if>
				<c:if test="${userimg != null }">
					<img alt="" class="tradephoto" src="/Pupload/${userimg} ">
				</c:if>
					<button class="tradeheymama">본인 : <sec:authentication property="principal.member.name"/></button>
				</div>	<!-- 상대창 -->
					 
					<div id="tradebtnbox" style="display:block;width: 24%; ; margin-left: 74px;"> <!-- 크기 조절박스 -->
						<div class="tradebordertop"></div>
						<c:if test="${info.salestatus==0 || info.buystatus==0 }">
						<c:if test="${info.salestatus == 0}">
							<button onclick="saleOK(${info.tno})" id="salerbtn" class="tradetuworking">판매확정</button>
						</c:if>
						<c:if test="${info.salestatus == 1}">
							<button id="salerbtn1" class="tradetuworking tradetuworking1">판매확정</button>
						</c:if>
						
						<c:if test="${info.buystatus == 0}">
							<button onclick="buyOK(${info.tno})" id="buyerbtn" class="tradetuworking">구매확정</button>
						</c:if>
						<c:if test="${info.buystatus == 1}">
							<button id="buyerbtn1" class="tradetuworking tradetuworking1">구매확정</button>
						</c:if> <!--  -->
						<c:if test="${info.salestatus==0 && info.buystatus==0 }">
							<button id="cancelbtn" onclick="canceltrade(${info.tno})" class="tradetuworking">취소</button>
						</c:if >
						</c:if>	<!-- 거래가 끝나지 않았을 시 -->
						<c:if test="${info.salestatus==1 && info.buystatus==1 }">
							<button style="width:200px; margin-bottom:64px; margin-top:50px; margin-left:70px;" class="tradetuworking1">거래가 성사되었습니다.</button>
						</c:if>
						
						<div class="tradeborderbottom"></div> <!-- 크기 조절박스 -->
					</div>
				
					<div style="margin-left: 25px;">
					<c:if test="${info != null }">
					<c:choose>
					<c:when test="${info.userimg != null}">
					<img alt="" class="tradephoto" src="/Pupload/${info.userimg }">
					</c:when>
					<c:when test="${info.userimg == null}">
					<img alt="" class="tradephoto" src="/resources/images/store.png">
					</c:when>
					
					</c:choose>
					<button class="tradeheymama">상대방 : ${info.name }</button> <!-- 이름표시 -->		
					</c:if>
					</div>
					<!-- 상대창 -->
					
					
			</div>
			
		<div class="tradeback">
			<div class="tradesan">
				<h2 class="text-center" style="margin-bottom:20px;">상품명 : ${info.title }</h2>
				<div style="display: flex;">
					<div>
						<c:if test="${info != null }">
						<img style="width:200px; height:250px;"class="tradephoto1" src="/Pupload/${info.img1 }"> <!--상품이미지 -->
						</c:if>
						<c:if test="${info == null }">
						<img style="width:200px; height:250px;"class="tradephoto1" src="/resources/images/store.png"> <!--상품이미지 -->
						</c:if>
					</div>
					
				<div class="user_info">
					<div class=" pull-left" style="margin-left:40px; font-size:15px;"><img src="/resources/images/coins.png" width="14" height="13" alt="오픈일 아이콘">
						가격&nbsp;:&nbsp;<span id="" style="border-right:1px solid; padding-right:20px;">
						
						<input disabled="disabled" value='<fmt:formatNumber value="${info.amount }"/>' type="text" id="mypayplus" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></span>&nbsp;
						
							<span id="mypagepaybtn"class="tradepay" style="padding-right:20px;border-right:1px solid"><img src="/resources/images/sandhour.png">
							거래일시 : <fmt:formatDate value="${info.tradedate }" pattern="yyyy-MM-dd [E] a hh:mm:ss"/></span>
							<c:if test="${info.saler == meid }">
							<button style="padding-left:20px" onclick="/chat/chat?person=${info.buyer}&&pno=${info.pno}"><img src="/resources/images/chat.png">채팅하기</button>
							</c:if>
							<c:if test="${info.saler != meid }">
							<button style="padding-left:20px" onclick="/chat/chat?person=${info.saler}&&pno=${info.pno}"><img style="margin-right:5px;" src="/resources/images/chat.png">채팅하기</button>
							</c:if>
					</div>
					<div>
					<ul>
						<li style="margin-top: 69px;">
							<a class="textline">
								<textarea style="resize: none; word-break: break-word;" readonly class="tradetextline"> ${info.content }</textarea>
							</a>
						</li>
					</ul>
					</div>
				</div>
			</div>
		</div>
	
		</div>

		</div>
	</div> <!-- 12 -->
	</div><!-- con end -->


<script>
function buyOK(tno){
	
	var buyer="${info.buyer}";
	var pno = "${info.pno}";
	var me ="${meid}"; 
	var saler = "${info.saler}";
	console.log(me);
	console.log(buyer);
	if(me==buyer){
	
	console.log(tno);
	$.ajax({
		type:"get",
		data:({
			tno : tno,
			buyer: me,
			pno: pno,
			saler:saler
		}),
		url:"/trade/buyOK",
		dataType:"json",
		success:function(result){
			console.log("리저트값"+result)
			if(result==0){
				alert("구매확정되었습니다. 판매자가 확인중입니다.");
				$("#buyerbtn").addClass("tradetuworking1")
				$("#cancelbtn").remove();
			}else{
				alert("거래가 종료되었습니다.")
				$("#salerbtn").remove();
				$("#buyerbtn").remove();
				$("#salerbtn1").remove();
				$("#buyerbtn1").remove();
				$("#cancelbtn").remove();
				$(".tradebordertop").after("<button style='width:200px; margin-bottom:64px; margin-top:50px; margin-left:70px;' class='tradetuworking1'>거래가 성사되었습니다.</button>")
			}
		},error:function(){
			alert("에러");
			}
	}) //ajax end
	} //if end
	else{
		alert("당신은 구매자가 아닙니다");
	}//else end
	} //fun end
	
function saleOK(tno){ 
		var saler="${info.saler}"; 
		var pno = "${info.pno}";
		var me ="${meid}"; 
		var buyer="${info.buyer}";
		console.log(buyer)
		console.log(saler)
		
		console.log(tno);
		if(me==saler){
		
		$.ajax({
		type:"get",
		data:({
			tno : tno,
			saler: me,
			pno : pno,
			buyer:buyer,
		}),
		url:"/trade/saleOK",
		dataType:"json",
		success:function(result){
			console.log("리저트값"+result)
			if(result==0){
				alert("판매확정되었습니다. 구매자가 확인중입니다.");
				$("#salerbtn").addClass("tradetuworking1")
				$("#cancelbtn").remove();
			}else{
				alert("거래가 종료되었습니다.")
				$("#salerbtn").remove();
				$("#salerbtn1").remove();
				$("#buyerbtn").remove();
				$("#buyerbtn1").remove();
				$("#cancelbtn").remove();
				$(".tradebordertop").after("<button style='width:200px; margin-bottom:64px; margin-top:50px; margin-left:70px;' class='tradetuworking1'>거래가 성사되었습니다.</button>")
			}
		},error:function(){
			alert("에러")
		}

	}) //ajax end
	}// if end
	else{
		alert("당신은 구매자가 아닙니다.");
	}
	}
	
function canceltrade(tno){
		console.log(tno);
		var saler="${info.saler}"; 
		var pno = "${info.pno}";
		var buyer="${info.buyer}";
		
		$.ajax({
		type:"get",
		data:({
			tno : tno,
			pno : pno,
			buyer : buyer,
			saler : saler
		}),
		url:"/trade/tradecancel",
		dataType:"json",
		success:function(result){
			if(result == 1){
				alert("취소가 불가능합니다.");
			}else{
				alert("해당거래가 취소되었습니다.");
				location.href="/"
			}
		},error:function(){
			alert("에러")
		}
		
	}) //ajax end
	}

</script>



<%@ include file="../footer.jsp"%>