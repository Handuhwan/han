<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../header.jsp"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.member.id" var="logid"/>
</sec:authorize>

<!-- Contents Start -->
<div class="container">
	<div class="row">
		<div class="col-md-12 topmybox">
			<!-- Box Start -->
			<div class="pull-left mybox_left">
				<img src="/resources/images/store.png" alt="" class="myboximg">
				<div id="prBox">
					<h2 id="prNickname">${memberInfo.nickname}</h2> <!-- 닉네임 출력 -->
				</div>
				<div class="Stars">
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 0}">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					</c:if>
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 0.5 and memberInfo.grade / memberInfo.gradecount > 0}">
						<img src="/resources/images/halfStar.png" width="15" height="14" alt="작은 별점 0.5점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					</c:if>
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 1 and memberInfo.grade / memberInfo.gradecount > 0.5}">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					</c:if>
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 1.5 and memberInfo.grade / memberInfo.gradecount > 1}">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/halfStar.png" width="15" height="14" alt="작은 별점 0.5점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					</c:if>
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 2 and memberInfo.grade / memberInfo.gradecount > 1.5}">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					</c:if>
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 2.5 and memberInfo.grade / memberInfo.gradecount > 2}">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/halfStar.png" width="15" height="14" alt="작은 별점 0.5점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					</c:if>
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 3 and memberInfo.grade / memberInfo.gradecount > 2.5}">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					</c:if>
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 3.5 and memberInfo.grade / memberInfo.gradecount > 3}">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/halfStar.png" width="15" height="14" alt="작은 별점 0.5점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					</c:if>
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 4 and memberInfo.grade / memberInfo.gradecount > 3.5}">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					</c:if>
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 4.5 and memberInfo.grade / memberInfo.gradecount > 4}">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/halfStar.png" width="16" height="16" alt="작은 별점 0.5점 이미지">
					</c:if>
					<c:if test="${memberInfo.grade / memberInfo.gradecount <= 5 and memberInfo.grade / memberInfo.gradecount > 4.5}">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
						<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 1점 이미지">
					</c:if>
				</div>

				<c:if test="${memberInfo.id == logid}">
					<a href="new" class="myStoreLink">내 상점 관리</a>
				</c:if>
				<c:if test="${memberInfo.id != logid}">
					<a href="/chat/chat?person=${memberInfo.id}&pno=0" class="myStoreLink2">우주톡</a>
				</c:if>
			</div>
			
			<div class="pull-right mybox_right" id="myboxRight">
				<div class="nicknameBox" id="nicknameBox">
					<div class="nickname" id="nickname">
						<span id="storeNickname">${memberInfo.nickname}</span> <!-- 닉네임 출력 -->
							<c:if test="${memberInfo.id == logid}">
								<button class="modify_nickname" id="modifyStorename" onclick="modifyNickname()">상점명 수정</button>
							</c:if>
					</div>
				</div>
				<div class="user_info">
					<div class="user_a pull-left"><img src="/resources/images/coins.png" width="14" height="13" alt="오픈일 아이콘">
						포인트&nbsp;:&nbsp;<span id="mymoeny">
						<input disabled="disabled" value="${memberInfo.point} 원" type="text" id="mypayplus" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></span>&nbsp;
						<c:if test="${memberInfo.id == logid}">
							<input type="hidden" id="mypayId" value="${memberInfo.id }">
							<span id="mypagepaybtn"><button id="mypayorder" style="font-size:1px;">+ 충전</button></span>
							<span id="realmypagepaybtn"><button id="check_module" style="font-size:1px;">+ 충전</button></span>
						</c:if>

					</div>
					<div class="user_a pull-left"><img src="/resources/images/store2.png" width="14" height="13" alt="오픈일 아이콘">
						상점오픈일&nbsp;:&nbsp;<span id="storeTimeValue"></span>
						<input type="hidden" id="openDay" value="${memberInfo.indate}">
					</div>
					<div class="user_a"><img src="/resources/images/visiter.png" width="14" height="13" alt="방문수 아이콘">
						상점방문수&nbsp;:&nbsp;${userCount}&nbsp;명
					</div>
				</div>
				<div class="introContainer" id="introContainer">
					<div class="introBox" id="introBox">
						<div class="intro_text" id="intro_text">
							<p id="originIntro">${memberInfo.intro}</p>
						</div>
						<c:if test="${memberInfo.id == logid}">
							<button class="intro_btn2" id="intro_btn2" onclick="modifyIntro()">소개글 수정</button>
						</c:if>
						<c:if test="${memberInfo.id != logid}">
							<div class="intro_btn" id="intro_btn">
								<div class="sc-gVLVqr exSGCd">
									<a class="sc-hBbWxd glWKMh">
										<img src="/resources/images/reportImg.png" width="14" height="14" alt="신고하기 아이콘">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary btn-sm2" data-toggle="modal" data-target="#myModal">
										  신고하기
										</button>
									</a>
								</div>
							</div>
						</c:if>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header" style="border-bottom:none;">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title" id="myModalLabel">신고하기</h4>
					      </div>
					      <div class="modal-body" style="border-bottom: 1px solid #e5e5e5;">
							<input type="text" id="reporter" name="id" placeholder="신고자" value=""> <!-- 이 부분은 jsp에서 값을 넘겨주지 않고 나중에 controller에서 로그인 한사람(=나) 정보를 받을 것. 나중에 지워주세요-->
							<div class="block_square">
								<input readonly type="text" id="reported" name="reported_id" placeholder="신고받는사람" value="${memberInfo.id}">
							</div>
						  </div>
						  <div class="modal-header">
					        <h4 class="modal-title" id="myModalLabel" style="margin-bottom: 15px;">신고 이유</h4>
					        <textarea style="resize:none" class="suspended" id="reporttext" name="report" placeholder="신고사유"></textarea>
					      </div>	
					      
					      <div class="modal-footer" style="text-align:center;">
					      	<p>대상 회원을 신고 하시겠습니까?</p>
					        <button type="button" class="btn_check" onclick="modalbye()">신고</button>
					        <button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
					      </div>
					    </div>
					  </div>
					</div>
				</div>
			</div>
			<!-- Box End -->
		</div>

		<!-- Tab Start -->
		<div class="col-md-12 botmybox">
			<div role="tabpanel">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs nav_bar" role="tablist">
					<li role="presentation" class="active nav_title"><a href="#product"
						aria-controls="product" role="tab" data-toggle="tab">상품</a></li>

					<li role="presentation" class="nav_title"><a href="#faq" 
						aria-controls="faq" role="tab" data-toggle="tab">상점문의</a></li>

					<li role="presentation" class="nav_title"><a href="#like" 
						aria-controls="like" role="tab" data-toggle="tab">찜</a></li>

					<li role="presentation" class="nav_title"><a href="#review"
						aria-controls="review" role="tab" data-toggle="tab">상점후기</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="product">
					<h3 class="info_title">상품&nbsp;<span class="info_count">${pCount}</span></h3>
						<div class="likeBox">
							<div class="likeBar">
								<div class="selectBtn">
									전체&nbsp;${pCount}&nbsp;개
								</div>
								<div class="aBtn" id="proBtn">
									<a class="rbBtn selected" href="javascript:productList(0)">최신순</a>
									<a class="rbBtn unselected" href="javascript:productList(1)">인기순</a>
									<a class="rbBtn unselected" href="javascript:productList(2)">저가순</a>
									<a class="rbBtn unselected" href="javascript:productList(3)">고가순</a>
								</div>
							</div>
							<div class="sc-iBmynh frwOfl">
								<div class="sc-fKGOjr dcoOvl" id="productList">
									
								</div>
							</div>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane" id="faq">
						<h3 class="info_title">상점문의&nbsp;<span class="info_count" id="faqCount">${faqCount}</span></h3>
							<div class="faqContentCheckBox">
								<span class="faqContentCheck">0자</span>
								<span class="faqContentCheckTotal">/100자</span>
							</div>
							<div class="faq_text">
								<textarea placeholder="상품문의 입력 (100자 이내)" class="faq_textarea pull-left" id="faqTextarea"></textarea>
									<button class="faq_insert" id="faqInsertBtn">
										<img src="/resources/images/faq_insert.png" width="15" height="16" alt="문의등록 아이콘">등록
									</button>
							</div>
							
							<div class="chat">
								
							</div>
							
							<div class="sc-cNnxps eRohwo">
								<button id="load" class="sc-bvTASY hXMCla" style="margin: 10px 0px 100px;">
									<div class="sc-koErNt hTdWoQ">상점문의 더보기</div>
								</button>
							</div>
							
					</div>

					<div role="tabpanel" class="tab-pane" id="like">
						<h3 class="info_title">찜&nbsp;<span class="info_count" id="likeCount">${likeCount}</span></h3>
							<div class="likeBox">
								<div class="likeBar">
									<div class="selectBtn">
									<c:if test="${memberInfo.id == logid}">
										<input type="checkbox" class="selectCheck" id="allCheck" style="bottom: 2px;">
										<button type="button" onclick="likeRemove()" class="scBtn">선택삭제</button>
									</c:if>
									</div>
									<div class="aBtn" id="likeBtn">
										<a class="rbBtn selected" href="javascript:likeList(0)">최신순</a>
										<a class="rbBtn unselected" href="javascript:likeList(1)">인기순</a>
										<a class="rbBtn unselected" href="javascript:likeList(2)">저가순</a>
										<a class="rbBtn unselected" href="javascript:likeList(3)">고가순</a>
									</div>
								</div>
								
								<div class="likeListBox" id="likeListBox">
									
								</div>
							</div>
					</div>
						
					<div role="tabpanel" class="tab-pane" id="review">
						<h3 class="info_title">상점후기&nbsp;<span class="info_count" id="rCount">${rCount}</span></h3>
						
							<div class="reviewList" id="reviewChat">
								
							</div>
							
							<div class="sc-cNnxps eRohwo">
								<button id="reviewLoad" class="sc-bvTASY hXMCla" style="margin: 10px 0px 100px;">
									<div class="sc-koErNt hTdWoQ">상점후기 더보기</div>
								</button>
							</div>
							
					</div>
				</div>

			</div>

		</div>
		<!-- Tab End -->
	</div>
</div>
<!-- Contents End -->

<script>

	var MEMID = '<c:out value="${memberInfo.id}"/>';
	

	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
			
	$(document).ajaxSend(function(e, xhr, options) {
	
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		
	})
	
</script>
<script>//------------------------------------------ 상품 스크립트 ---------------------------------------------
$(function() {
	
	var productid = '<c:out value="${memberInfo.id}"/>';
	var productUL = $('#productList');
	productList(0);
	
	console.log("상품리스트 출력실행");
	console.log("상품리스트 id : "+productid);
	
})
	function productList(list) {
	
		var productid = '<c:out value="${memberInfo.id}"/>';
		var state = "판매완료";
		var state2 = "진행중";
		var sttr = "";
		var cnt = list+1;
		
		$.ajax ({
			type : 'get',
			url : '/product/productList',
			data : {
				id:productid,
				no:list
			},
			dataType : "json",
			success : function(result){
				
				$("#proBtn a").css("color", "black");
				$("#proBtn a:nth-child("+cnt+")").css("color", "red");
				
				for(var i=0, len=result.length || 0; i < len; i++) {
					sttr +=	"<div class='col-md-3' style='margin: 15px 0;'>";
					sttr +=		"<a class='sc-cugefK fRjjJt' href='/product/productview?pno="+result[i].pno+"'>";
					sttr +=			"<div class='sc-fnwBNb bGOWdF'>";
					sttr +=				"<img src='/resources/images/table.jpg' width='100%' height='194' alt='상품 이미지'>"; // <------- 상품경로 넣어주세요!!
											if(result[i].status == state) {
					sttr +=					"<div class='sc-dREXXX fTyTGh'>";
					sttr +=						"<span class='soldout'>판 매 완 료</span>";
					sttr +=					"</div>";
											}else if(result[i].status == state2) {
					sttr +=					"<div class='sc-dREXXX fTyTGh'>";
					sttr +=						"<span class='soldout'>진 행 중</span>";
					sttr +=					"</div>";
											}
					sttr +=			"</div>";
					sttr +=			"<div class='sc-iNhVCk eoXTJU'>";
					sttr +=				"<div class='sc-eAKXzc jXLIfz'>"+result[i].title+"</div>";
					sttr +=				"<div class='sc-dRFtgE fpXkTz'>";
					sttr +=					"<div class='sc-bfYoXt hcGbNt'>"+result[i].price+"</div>";
					sttr +=					"<div class='sc-gkFcWv hCkfPo'>";
					sttr +=						"<span id='plistTime'>"+result[i].realrealdate+"</span>";
					sttr +=					"</div>";
					sttr +=				"</div>";
					sttr +=			"</div>";
					sttr +=			"<div class='sc-gbOuXE fQmeHZ'>";
					sttr +=				"<img src='/resources/images/location.png' width='15' height='17' alt='위치 아이콘'>";
					sttr +=				"<span class='locationName'>"+result[i].location+"</span>";
					sttr +=			"</div>";
					sttr +=		"</a>";
					sttr +=	"</div>";
			}
				$("#productList").html(sttr);
			},error:function(error){
				console.log(error)
			}
	})
}


</script>
<script>//------------------------------------------ 상품문의 스크립트 ---------------------------------------------
	
	var faqid = '<c:out value="${memberInfo.id}"/>'
	
		<sec:authorize access = "isAuthenticated()">
			'<sec:authentication property="principal.member.nickname" var="faqReplyer" />';
		</sec:authorize>

	var faqReplyer = "${faqReplyer}"
	var faqUL = $('.chat');
	showList(faqid);
	
	function showList(faqid) {
		
		replyService.getList( {id:faqid}, function(list) {
			
			var str = "";
			
			if(list == null || list.length == 0) {
				faqUL.html(str);
				return;
			}
			
			for(var i=0, len=list.length || 0; i<len; i++) {
				str +=  "<div class='replyDIV' style='display:none;'>";
				str +=  	"<div class='leftBox pull-left' style='margin: 10px 0;'>";
				str +=			"<img src='/resources/images/store.png' width='48' height='48' alt='프로필 이미지'>";
				str +=		"</div>";
				str +=		"<div class='rightBox'>";
				str +=			"<div class='chat_user'>";
				str +=				"<input type='hidden' id='faqQno' data-qno="+list[i].qno+">";
				str +=				"<div class='id' id="+list[i].qno+">"+list[i].replyer+"</div>";
				str +=					"<div class='faqTimeValue'>";
				str +=						"<span id='faqTimeValue'>"+list[i].realrealdate+"</span>";
				str +=					"</div>";
				str +=			"</div>";
				str +=			"<div class='chat_content'>"+list[i].reply+"</div>";
		        str +=			"<div class='chat_btn'>";
		        str +=				"<div class='comment_check'><img src='/resources/images/comment.png' width='17' height='14' alt='댓글달기 버튼 이미지'><button type='button' onclick='faqAnswer("+list[i].qno+")' >댓글달기</a></div>";
									if(list[i].replyer == faqReplyer) {
				str +=				"<div class='comment_check'><img src='/resources/images/faq_delete.png' width='17' height='14' alt='댓글삭제 버튼 이미지'><button type='button' onclick='faqDelete("+list[i].qno+")' class='faqDeleteBtn' class='comdel'>삭제하기</a></div>";
									}
		        str +=			"</div>";
				str +=	"</div>";
			}
			faqUL.html(str);
			
		})
	}
	
	
		
	$('#faqInsertBtn').on('click', function(e) {
		
		var reply = {
			id : faqid,
			reply : $('#faqTextarea').val(),
			replyer : faqReplyer
		};
		
		if(faqReplyer == null) {
			alert('로그인이 필요한 서비스입니다');
			location.href = "/member/login";
		}else{
			replyService.add(reply, function(result) {
				$('#faqTextarea').val("");
				count();
				showList(1);
			})
		}
		
	})
	
	function faqDelete(qno) {
		
		var listID = $("#"+qno).text();
		
		console.log(faqReplyer);
		console.log(listID);
		
		if(!faqReplyer){
			alert("로그인후 이용해주세요");
			location.href = "/member/login";
		}
		if(faqReplyer != listID){
			alert("자신이 작성한 댓글만 삭제가능");
			return;
		}
		replyService.remove(qno, function(result) {
			console.log(faqid);
			count(faqid);
			showList(1);
		})
	}
	
	function faqAnswer(bno) {
		
		var listID = $("#"+bno).text();
		
		$("#faqTextarea").val("@"+listID+" : ");
		
	}
	
	function count() {
		
		$.ajax ({
			type : "get",
			url : "/faq/faqcount",
			data : ({ id:faqid }),
			success : function(result) {
				$("#faqCount").html(result);
			},error : function(xhr, status, error) {
				console.log("FAQ Counting Error");
			}
		})
		
	console.log("counting......");
	}
		
</script>

<script>//------------------------------------------ 찜 스크립트 ---------------------------------------------

$(function() {

	var likeid = '<c:out value="${memberInfo.id}"/>';
	console.log("찜 아이디 : "+likeid);
	likeList(0);
    
	$("#allCheck").click(function() {
	    if($("#allCheck").is(":checked")){
	       $("input[name='lc']").prop("checked",true);
	    }else{
	       $("input[name='lc']").prop("checked",false);
	    }
	 });
	
})

	function chooseCheck() {
		
		var L = $(".productCheck").find("input").length;
		
	   if($("input[name='lc']:checked").length == L) {
	      $("#allCheck").prop("checked", true);
	   }else{
	      $("#allCheck").prop("checked", false);
	   }
	   
	}

	function likeList(no) {
		
		<sec:authorize access = "isAuthenticated()">
			'<sec:authentication property="principal.member.id" var="signID" />';
		</sec:authorize>
	
		var likeid = '<c:out value="${memberInfo.id}"/>';
		var signID = '${signID}';
		var status = "판매완료"; 
		var status2 = "진행중"; 
		var str = "";
		var nth = no+1;
		
		$.ajax ({
			type : 'get',
			url : '/liked/likeList',
			data : {
				id:likeid,
				no:no
			},
			dataType : "json",
			success : function(result){
				
				$("#likeBtn a").css("color", "black");
				$("#likeBtn a:nth-child("+nth+")").css("color", "red");
				
				for(var i=0, len=result.length || 0; i < len; i++) {
					str +=	"<div class='selectOne' id='selectOne'>";
					str +=		"<a class='oneLink' href='/product/productview?pno="+result[i].pno+"'>";  // <---------------------- 여기에 /product/productview경로 넣어주시면 됩니다 !!
									if(result[i].id == signID) {
					str +=			"<div class='productCheck'>";
					str +=				"<input type='checkbox' onclick='chooseCheck()' name='lc' class='linkCheck' value="+result[i].pno+">";
					str +=			"</div>";
									}
					str +=			"<div class='productImg'>";
					str +=				"<img src='https://media.bunjang.co.kr/product/178714686_1_1644559148_w268.jpg' alt='상품 이미지'>"; // <---- src에 사진경로 넣어주세요!!
					str +=				"<div class='sc-cqPOvA kWqxvV'></div>";
											if(result[i].status == status) {
					str +=						"<div class='sc-dREXXX fTyTGh'>";
					str +=							"<span class='soldout'>판 매 완 료</span>";
					str +=						"</div>";
											}else if(result[i].status == status2) {
					str +=						"<div class='sc-dREXXX fTyTGh'>";
					str +=							"<span class='soldout'>진 행 중</span>";
					str +=						"</div>";
											}
					str +=			"</div>";
					str +=			"<div class='productContent'>";
					str +=				"<input type='hidden' id='likeQno' value="+result[i].qno+">";
					str +=				"<div class='sc-RbTVP buvryO'>"+result[i].title+"</div>";
					str +=				"<div class='sc-drlKqa hELMZu'><div>"+result[i].price+"</div></div>";
					str +=				"<div class='sc-hMrMfs eXrOkK'>"+result[i].realrealdate+"</div>";
					str +=				"<div class='sc-bIqbHp jkraVY'><img src='/resources/images/location.png' width='15' height='17' alt='위치 아이콘'>"+result[i].location+"</div>";
					str +=			"</div>";
					str +=		"</a>";
					str +=	"</div>";
			}
				$('#likeListBox').html(str);
				
			},error : function(error){
				console.log(error);
			}
		})
		
		console.log("likeList Operating......");
	}
	
	function likeRemove() {
		
		var likeid = '<c:out value="${memberInfo.id}"/>';
		var pnoCnt = $('input:checkbox[name=lc]:checked').length;
		var thisID = likeid
		
		var arr = $('input:checkbox[name=lc]:checked');
		var values = [];
		
		for(var i=0; i < pnoCnt; i++) {
			values[i] = arr[i].value
		}
		
		var data = {
				id : thisID,
				pnoArr : values
		}
		
		if(pnoCnt == 0) {
			
			alert("삭제하실 상품을 선택해주세요");
			
		}else{
			
			var confirmChk = confirm("정말로 삭제하시겠습니까?");
			
			$.ajax ({
				type: 'get',
				url: '/liked/likeRemove',
				data: data,
				dataType: 'text',
				success : function(result) {
					likeCount(likeid);
					likeList(0);
				}
				
			})
			console.log("likedRemove Operating......");
			
		}
	}
	
	function likeCount(likeid) {
		
		$.ajax ({
			type : 'get',
			url : '/liked/likeCount',
			data : ({ id:likeid }),
			success : function(result) {
				$('#likeCount').html(result);
			},error : function(xhr, status, error) {
				console.log("likeCounting ERROR");
			}
		})
		console.log("likeCounting operating......");
	}
	
	
</script>
<script>//------------------------------------------ 상품후기 스크립트 ---------------------------------------------

$(function() {
	
	var reviewid = '<c:out value="${memberInfo.id}"/>';
	
	<sec:authorize access = "isAuthenticated()">
		'<sec:authentication property="principal.member.nickname" var="reviewReplyer" />';
	</sec:authorize>
	
	var reviewReplyer = "${reviewReplyer}";
	
	reviewList(reviewid);
	
})
	
	function reviewList(reviewid) {
		
		var reviewid = '<c:out value="${memberInfo.id}"/>';
		var reviewReplyer = "${reviewReplyer}";
		var str = "";
		
		$.ajax ({
			type : 'get',
			url : '/review/pages/'+reviewid,
			data : { id:reviewid },
			dataType : "json",
			success : function(result){
				
				for(var i=0, len=result.length || 0; i < len; i++) {
					str +=  "<div class='reviewDIV' style='display:none;'>";
					str += "<div class='comment_contain'>";
					str += 	"<div class='leftBox pull-left'>";
					str += 		"<img src='/resources/images/store.png' width='48' height='48' alt='프로필 이미지' style='margin-top: 13px;'>"; // <----- 프로필이미지 추가하면 여기에 넣어주세요!!
					str += 	"</div>";
					str += 	"<div class='rightBox'>";
					str +=		"<div class='chat_user'>";
					str +=			"<div class='id'>"+result[i].nickname+"</div>";
					str += 			"<div class='date'>"+result[i].realrealdate+"</div>";
					str +=	"</div>";
					str +=	"<div class='sc-gGCbJM eAYqVt'>"; // <----------- 별점은 이곳에서 처리해주세요 !!
								if(result[i].grade == 1){
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/noStar.png' width='15' height='14' alt='작은 별점 0점 이미지'>";
					str += 			"<img src='/resources/images/noStar.png' width='15' height='14' alt='작은 별점 0점 이미지'>";
					str += 			"<img src='/resources/images/noStar.png' width='15' height='14' alt='작은 별점 0점 이미지'>";
					str += 			"<img src='/resources/images/noStar.png' width='15' height='14' alt='작은 별점 0점 이미지'>";
								}else if(result[i].grade == 2){
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/noStar.png' width='15' height='14' alt='작은 별점 0점 이미지'>";
					str += 			"<img src='/resources/images/noStar.png' width='15' height='14' alt='작은 별점 0점 이미지'>";
					str += 			"<img src='/resources/images/noStar.png' width='15' height='14' alt='작은 별점 0점 이미지'>";
								}else if(result[i].grade == 3){
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/noStar.png' width='15' height='14' alt='작은 별점 0점 이미지'>";
					str += 			"<img src='/resources/images/noStar.png' width='15' height='14' alt='작은 별점 0점 이미지'>";
								}else if(result[i].grade == 4){
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/noStar.png' width='15' height='14' alt='작은 별점 0점 이미지'>";
								}else {
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
					str += 			"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 1점 이미지'>";
								}
					str += 		"<br>";
					str += 	"</div>";	
					str += 	"<div class='aTag'>";
					str += 		"<a class='sc-gFXMyG DlcMZ' href='/product/productview?pno="+result[i].pno+"'>";
					str += 			"<button class='sc-jWxkHr hHxDRR'>"+result[i].title+"&nbsp;";
					str += 				"<img src='/resources/images/rightarrow.png' width='6' height='10' alt='화살표 아이콘'></button>";
					str += 		"</a>";
					str += 	"</div>";
					str += 	"<div class='sc-MYvYT izkVcA'>";
					str += 		"<img style='border-radius: 5px;' src='/resources/images/hambuk.jpg' width='100' height='100' alt='상품이미지'>"; // <------------------상품이미지 경로 넣어주기 !!!
					str += 	"</div>";
					str += 	"<div class='chat_content'>"+result[i].content+"</div>";
					str += 	"<div class='chat_btn'>";
								if(result[i].nickname == reviewReplyer) {
					str += 		"<div class='comment_check'><img src='/resources/images/X.png' width='17' height='14' alt='댓글삭제 버튼 이미지'><a href='javascript:reviewRemove("+result[i].rno+")'>댓글삭제</a></div>";
								}
					str += 	"</div>";
					str += 	"</div>";
					str += "</div>";
					str += "</div>";
			}
			$('#reviewChat').html(str);
			},error : function(error){
				console.log(error);
			}
		})
		
		console.log("reviewList Operating......");
	}
	
	function reviewRemove(rno) {
		
		var reviewid = '<c:out value="${memberInfo.id}"/>';
		var data = { rno:rno };
		
		$.ajax ({
			type : 'get',
			url : '/review/reviewDelete',
			data : data,
			success : function(result) {
				reviewCount(reviewid);
				reviewList(1);
			}
			
		})
		console.log("Review Removing......");
		
	}
	
	function reviewCount(reviewid) {
		
		$.ajax ({
			type : "get",
			url : "/review/reviewCount",
			data : ({ id:reviewid }),
			dataType : 'text',
			success : function(result) {
				$('#rCount').html(result);
			},error : function(xhr, status, error) {
				console.log("Review Counting Error");
			}
		})
		
	console.log("review counting......");
	}
	
	
</script>

<script>
$("#check_module").click(function () {
	
	var pageid="${memberInfo.id}"

	var id="${logid}";


	if(id !='' || pageid==id){

		var amount = $("#mypayplus").val();
		var IMP = window.IMP; // 생략가능
		IMP.init('imp60625472'); 
		// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
		// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
		IMP.request_pay({
			pg: 'inicis',
			pay_method: 'card',
			merchant_uid: 'merchant_' + new Date().getTime(),
			/* 
			 *  merchant_uid에 경우 
			 *  https://docs.iamport.kr/implementation/payment
			 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
			 */
			name: 'Universe 포인트 충전',
			// 결제창에서 보여질 이름
			// name: '주문명 : ${auction.a_title}',
			// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
			amount: amount,
			// amount: ${bid.b_bid},
			// 가격 	
			buyer_name: '${memberInfo.name}',
			buyer_email:id,
			// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
			// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
			buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += ' 결제 금액 : ' + rsp.paid_amount +'원';
				// success.submit();
				// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
				// 자세한 설명은 구글링으로 보시는게 좋습니다.
				$.ajax({
					type:"get",
					data:({
						amount:amount,
						id:id
					}),
					dataType:"json",
					url:"/mypage/paypay",
					success:function(){
						
					}
					
				
				})//ajax end
				location.href='/mypage/mypage?id='+id
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			} //
			alert(msg);
		});
	} //if end
	else{
		alert("로그인후 이용 가능한 서비스입니다.")
	}
	
	
}); // fun end
</script>
<script>

window.onload = function() {
	
	$(".reviewDIV").slice(0, 2).show(); // 최초 2개 선택
	$(".replyDIV").slice(0, 2).show(); // 최초 2개 선택

}

	$("#load").click(function(e){ // Load More를 위한 클릭 이벤트e
		e.preventDefault();
		$(".replyDIV:hidden").slice(0, 2).show(); // 숨김 설정된 다음 4개를 선택하여 표시
		if($(".replyDIV:hidden").length == 0){ // 숨겨진 DIV가 있는지 체크
			alert("더 이상 항목이 없습니다"); // 더 이상 로드할 항목이 없는 경우 경고
		}
	});
	
	$("#reviewLoad").click(function(r){ // Load More를 위한 클릭 이벤트r
		r.preventDefault();
		$(".reviewDIV:hidden").slice(0, 2).show(); // 숨김 설정된 다음 4개를 선택하여 표시
		if($(".reviewDIV:hidden").length == 0){ // 숨겨진 DIV가 있는지 체크
			alert("더 이상 항목이 없습니다"); // 더 이상 로드할 항목이 없는 경우 경고
		}
	});

</script>

<%@ include file="../footer.jsp"%>



























