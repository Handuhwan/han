<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../header.jsp"%>

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
					<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
				</div>

				<sec:authorize access="isAuthenticated()">
					<c:set var="logID" value="<sec:authentication property='principal.member.id'/>"/>
					<c:choose>
						<c:when test="${memberInfo.id eq logID}">
							<a href="new" class="myStoreLink2">우주톡</a>
						</c:when>
						<c:otherwise>
							<a href="new" class="myStoreLink">내 상점 관리</a>
						</c:otherwise>
					</c:choose>
				</sec:authorize>

				<a href="new" class="myStoreLink">내 상점 관리</a>
			</div>
			
			<div class="pull-right mybox_right" id="myboxRight">
				<div class="nicknameBox" id="nicknameBox">
					<div class="nickname" id="nickname">
						<span id="storeNickname">${memberInfo.nickname}</span> <!-- 닉네임 출력 -->

						<sec:authorize access="isAuthenticated()">
							<c:set var="logID" value="<sec:authentication property='principal.member.id'/>"/>
							<c:choose>
								<c:when test="${memberInfo.id ne logID}">
									<button class="modify_nickname" id="modifyStorename" onclick="modifyNickname()">상점명 수정</button>
								</c:when>
								<c:otherwise>
									
								</c:otherwise>
							</c:choose>
						</sec:authorize>

						<button class="modify_nickname" id="modifyStorename" onclick="modifyNickname()">상점명 수정</button>
			
					</div>
				</div>
				<div class="user_info">
					<div class="user_a pull-left"><img src="/resources/images/coins.png" width="14" height="13" alt="오픈일 아이콘">
						포인트&nbsp;:&nbsp;<span id="mymoeny">
						<input disabled="disabled" value="${memberInfo.point} 원" type="text" id="mypayplus" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></span>&nbsp;
						
						
						<span id="mypagepaybtn"><button id="mypayorder" style="font-size:1px;">+ 충전</button></span>
						<span id="realmypagepaybtn"><button id="check_module" style="font-size:1px;">+ 충전</button></span>
					
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
						<sec:authorize access="isAuthenticated()">
							<c:set var="logID" value="<sec:authentication property='principal.member.id'/>"/>
							<c:choose>
								<c:when test="${memberInfo.id eq logID}">
									<button class="intro_btn2" id="intro_btn2" onclick="modifyIntro()">소개글 수정</button>
								</c:when>
								<c:otherwise>
									<div class="intro_btn" id="intro_btn">
										<div class="sc-gVLVqr exSGCd">
											<a class="sc-hBbWxd glWKMh">
												<img src="/resources/images/reportImg.png" width="14" height="14" alt="신고하기 아이콘">
												신고하기
											</a>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</sec:authorize>
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
							
							<div class="paging">
								<c:if test="${pageMaker.prev }">
									<a href="${pageMaker.startPage - 1}"><i
										class="fa fa-angle-double-left"></i></a>
								</c:if>
								<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
									<a href="${num }" class="${pageMaker.cri.pageNum == num?'active':''}">${num }</a>
								</c:forEach>
								<c:if test="${pageMaker.next }">
									<a href="${pageMaker.endPage + 1}"><i
										class="fa fa-angle-double-right"></i></a>
								</c:if>
								<div>
								
								</div>
								<form id="actionForm" action="my" method="get">
									<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
									<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
									<input type="hidden" name="type" value="${pageMaker.cri.type }">
									<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
								</form>
							</div>
							
					</div>

					<div role="tabpanel" class="tab-pane" id="like">
						<h3 class="info_title">찜&nbsp;<span class="info_count" id="likeCount">${likeCount}</span></h3>
							<div class="likeBox">
								<div class="likeBar">
									<div class="selectBtn">
										<input type="checkbox" class="selectCheck" id="allCheck" style="bottom: 2px;">
										<button type="button" onclick="likeRemove()" class="scBtn">선택삭제</button>
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
							
							<div class="paging">
								<c:if test="${pageMaker.prev }">
									<a href="${pageMaker.startPage - 1}"><i
										class="fa fa-angle-double-left"></i></a>
								</c:if>
								<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
									<a href="${num }" class="${pageMaker.cri.pageNum == num?'active':''}">${num }</a>
								</c:forEach>
								<c:if test="${pageMaker.next }">
									<a href="${pageMaker.endPage + 1}"><i
										class="fa fa-angle-double-right"></i></a>
								</c:if>
								<div>
								
								</div>
								<form id="actionForm" action="my" method="get">
									<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
									<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
									<input type="hidden" name="type" value="${pageMaker.cri.type }">
									<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
								</form>
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
	
	var id = '<c:out value="${memberInfo.id}"/>';
	var productUL = $('#productList');
	productList(0);
	
	console.log("상품리스트 출력실행");
	console.log(id);
	
})
	function productList(list) {
	
		var state = "판매완료"; 
		var sttr = "";
		var cnt = list+1;
		
		$.ajax ({
			type : 'get',
			url : '/product/productList',
			data : {
				id:id,
				no:list
			},
			dataType : "json",
			success : function(result){
				
				$("#proBtn a").css("color", "black");
				$("#proBtn a:nth-child("+cnt+")").css("color", "red");
				
				for(var i=0, len=result.length || 0; i < len; i++) {
					sttr +=	"<div class='col-md-3'>";
					sttr +=		"<a class='sc-cugefK fRjjJt' href='/product/productview?pno="+result[i].pno+"'>";
					sttr +=			"<div class='sc-fnwBNb bGOWdF'>";
					sttr +=				"<img src='/resources/images/table.jpg' width='100%' height='194' alt='상품 이미지'>"; // <------- 상품경로 넣어주세요!!
											if(result[i].status == state){
					sttr +=					"<div class='sc-dREXXX fTyTGh'>";
					sttr +=						"<span class='soldout'>판 매 완 료</span>";
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
	
	var id = '<c:out value="${memberInfo.id}"/>';
	var replyer =  '<c:out value="${memberInfo.nickname}"/>'
	
	console.log(replyer);
	console.log(id);

	var faqUL = $('.chat');
	showList(1);
	
	function showList(page) {
		
		replyService.getList( {id:id, page:page||1}, function(list) {
			
			var str = "";
			
			if(list == null || list.length == 0) {
				faqUL.html(str);
				return;
			}
			
			for(var i=0, len=list.length || 0; i<len; i++) {
				str +=  "<div class='leftBox pull-left' style='margin: 10px 0;'>";
				str +=		"<img src='/resources/images/store.png' width='48' height='48' alt='프로필 이미지'>";
				str +=	"</div>";
				str +=	"<div class='rightBox'>";
				str +=		"<div class='chat_user'>";
				str +=			"<input type='hidden' id='faqQno' data-qno="+list[i].qno+">";
				str +=			"<div class='id' id="+list[i].qno+">"+list[i].replyer+"</div>";
				str +=				"<div class='faqTimeValue'>";
				str +=					"<span id='faqTimeValue'>"+list[i].realrealdate+"</span>";
				str +=				"</div>";
				str +=		"</div>";
				str +=		"<div class='chat_content'>"+list[i].reply+"</div>";
		        str +=		"<div class='chat_btn'>";
		        str +=			"<div class='comment_check'><img src='/resources/images/comment.png' width='17' height='14' alt='댓글달기 버튼 이미지'><button type='button' onclick='faqAnswer("+list[i].qno+")' >댓글달기</a></div>";
		        str +=			"<div class='comment_check'><img src='/resources/images/faq_delete.png' width='17' height='14' alt='댓글삭제 버튼 이미지'><button type='button' onclick='faqDelete("+list[i].qno+")' class='faqDeleteBtn' class='comdel'>삭제하기</a></div>";
				str +=		"</div>";
				str +=	"</div>";
			}
			faqUL.html(str);
			
		})
	}
	
	
		
	$('#faqInsertBtn').on('click', function(e) {
		
		var reply = {
			id : id,
			reply : $('#faqTextarea').val(),
			replyer : replyer
		};
		
		if(replyer == null) {
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
		
		console.log(replyer);
		console.log(listID);
		
		if(!replyer){
			alert("로그인후 이용해주세요");
			location.href = "/member/login";
		}
		if(replyer != listID){
			alert("자신이 작성한 댓글만 삭제가능");
			return;
		}
		replyService.remove(qno, function(result) {
			console.log(id);
			count(id);
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
			data : ({ id:id }),
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

	var id = '<c:out value="${memberInfo.id}"/>';
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
	
		var status = "판매완료"; 
		var str = "";
		var nth = no+1;
		
		$.ajax ({
			type : 'get',
			url : '/liked/likeList',
			data : {
				id:id,
				no:no
			},
			dataType : "json",
			success : function(result){
				
				$("#likeBtn a").css("color", "black");
				$("#likeBtn a:nth-child("+nth+")").css("color", "red");
				
				for(var i=0, len=result.length || 0; i < len; i++) {
					str +=	"<div class='selectOne' id='selectOne'>";
					str +=		"<a class='oneLink' href='/product/productview?pno="+result[i].pno+"'>";  // <---------------------- 여기에 /product/productview경로 넣어주시면 됩니다 !!
					str +=			"<div class='productCheck'>";
					str +=				"<input type='checkbox' onclick='chooseCheck()' name='lc' class='linkCheck' value="+result[i].pno+">";
					str +=			"</div>";
					str +=			"<div class='productImg'>";
					str +=				"<img src='https://media.bunjang.co.kr/product/178714686_1_1644559148_w268.jpg' alt='상품 이미지'>"; // <---- src에 사진경로 넣어주세요!!
					str +=				"<div class='sc-cqPOvA kWqxvV'></div>";
											if(result[i].status == status) {
					str +=						"<div class='sc-dREXXX fTyTGh'>";
					str +=							"<span class='soldout'>판 매 완 료</span>";
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
		

		var pnoCnt = $('input:checkbox[name=lc]:checked').length;
		var thisID = id
		
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
					likeCount(id);
					likeList(0);
				}
				
			})
			console.log("likedRemove Operating......");
			
		}
	}
	
	function likeCount(id) {
		
		$.ajax ({
			type : 'get',
			url : '/liked/likeCount',
			data : ({ id:id }),
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
	
	var id = '<c:out value="${memberInfo.id}"/>';
	
	reviewList(1);
	
})
	
	function reviewList(page) {
		
		var str = "";
		
		$.ajax ({
			type : 'get',
			url : '/review/pages/'+id+'/'+page,
			data : { id:id, page:page },
			dataType : "json",
			success : function(result){
				
				for(var i=0, len=result.length || 0; i < len; i++) {
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
					str += 		"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 2점 이미지'>";
					str += 		"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 2점 이미지'>";
					str += 		"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 2점 이미지'>";
					str += 		"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 2점 이미지'>";
					str += 		"<img src='/resources/images/inStar.png' width='15' height='14' alt='작은 별점 2점 이미지'>";
					str += 		"<br>";
					str += 	"</div>";	
					str += 	"<div class='aTag'>";
					str += 		"<a class='sc-gFXMyG DlcMZ' href='/product/productview?pno="+result[i].pno+"'>";
					str += 			"<button class='sc-jWxkHr hHxDRR'>"+result[i].title+"&nbsp;";
					str += 				"<img src='/resources/images/rightarrow.png' width='6' height='10' alt='화살표 아이콘'></button>";
					str += 		"</a>";
					str += 	"</div>";
					str += 	"<div class='sc-MYvYT izkVcA'>";
					str += 		"<img src='/resources/images/hambuk.jpg' width='100' height='100' alt='상품이미지'>";
					str += 	"</div>";
					str += 	"<div class='chat_content'>"+result[i].content+"</div>";
					str += 	"<div class='chat_btn'>";
					str += 		"<div class='comment_check'><img src='/resources/images/X.png' width='17' height='14' alt='댓글삭제 버튼 이미지'><a href='javascript:reviewRemove("+result[i].rno+")'>댓글삭제</a></div>";
					str += 	"</div>";
					str += 	"</div>";
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
		
		var data = { rno:rno };
		
		$.ajax ({
			type : 'get',
			url : '/review/reviewDelete',
			data : data,
			success : function(result) {
				reviewCount(id);
				reviewList(1);
			}
			
		})
		console.log("Review Removing......");
		
	}
	
	function reviewCount(id) {
		
		$.ajax ({
			type : "get",
			url : "/review/reviewCount",
			data : ({ id:id }),
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

<%@ include file="../footer.jsp"%>



























