<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../header.jsp"%>

<!-- Contents Start -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="sc-jTqLGJ lfQZRP">
				<div class="sc-wRHdD DcYnj">
					<nav class="sc-cClmTo bnFEIX">
						<div class="sc-kOCNXg cnmmrB">
							<a class="sc-cZLAbK kSJVTd" href="new">상품등록</a>
						</div>
						<div class="sc-kOCNXg gYlEW">
							<a class="sc-cZLAbK kSJVTd" style="color: red;"
								href="manage?id=<sec:authentication property="principal.member.id"/>">상품관리</a>
						</div>
						<div class="sc-kOCNXg gYlEW">
							<a class="sc-iVOTot jtVVsU"
								href="details?id=<sec:authentication property="principal.member.id"/>">구매
								/ 판매 내역</a>
						</div>
					</nav>
				</div>
			</div>
		</div>

		<!-- 검색하는 부분 -->
		<div class="col-md-12 search">
			<div class="search_box pull-left">
				<form name="search" method="get" action="/mypage/manage" class="search" id="searchForm">
					<input type="text" placeholder="Search" name="keyword">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<button type="submit" class="eYKCSk"></button>
					<select name="type" id="selectStatus" class="select">
						<option value="">전체</option>
						<option value="a">판매중</option>
						<option value="b">진행중</option>
						<option value="c">판매완료</option>
					</select>
				</form>
			</div>
		</div>

		<div class="col-md-12 productList">
			<div class="pTableBox">
				<table class="pTable">
					<thead>
						<tr>
							<th>상품사진</th>
							<th>판매상태</th>
							<th>상품명</th>
							<th>가격</th>
							<th>찜/조회수</th>
							<th>등록일</th>
							<th>취소</th>
						</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${list ne null}">
							<c:set var="num" value="${pageMaker.total - ((pageMaker.cri.pageNum - 1) * 10)}" />
							<c:forEach var="list" items="${list}">
								<tr id="${list.pno}">
									<td><img src="/resources/images/notica.jpg" alt="" width="55"></td>
									<c:choose>
										<c:when test="${list.status == '판매완료'}">
											<td style="color:red;">판매완료</td>
										</c:when>
										<c:when test="${list.status == '진행중'}">
											<td style="color:#ff8f00;">진행중</td>
										</c:when>
										<c:otherwise>
											<td>판매중</td>
										</c:otherwise>
									</c:choose>
									<td>${list.title}</td>
									<td><fmt:formatNumber value="${list.price}" type="currency" /></td>
									<td>찜${list.likecount} / 조회수${list.viewcount}</td>
									<td><fmt:formatDate value="${list.indate}" pattern="yyyy-MM-dd" /></td>
									<td><a href="javascript:manageRemove(${list.pno})">삭제하기</a></td>
								</tr>
							<c:set var="num" value="${num-1}" />
							</c:forEach>
								<!-- 페이지 처리 -->
								<div class="paging">
									<c:if test="${pageMaker.prev }">
										<a href="${pageMaker.startPage - 1}"><i
											class="fa fa-angle-double-left"></i></a>
									</c:if>
									<c:forEach var="num" begin="${pageMaker.startPage }"
										end="${pageMaker.endPage }">
										<a href="${num }"
											class="${pageMaker.cri.pageNum == num?'active':''}">${num }</a>
									</c:forEach>
									<c:if test="${pageMaker.next }">
										<a href="${pageMaker.endPage + 1}">
											<i class="fa fa-angle-double-right"></i>
										</a>
									</c:if>
									<form id="actionForm" action="/mypage/manage" method="get">
										<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
										<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
										<input type="hidden" name="type" value="${pageMaker.cri.type }">
										<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
									</form>
								</div>
								<!-- 페이지 처리 끝 -->
						</c:when>
						<c:otherwise>
							<td><div class="sc-bqjOQT jPSlgl">등록된 상품이 없습니다</div></td>
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
				
				
				
			</div>
		</div>
		<!-- 상품리스트 끝 -->
	</div>
</div>

<script>

	var actionForm = $("#actionForm");
	
	$(".paging > a").on("click", function(e) {
		e.preventDefault();
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
	}) // paging
	
	var searchForm = $("#searchForm");
	
	$("#searchForm button").on("click", function() {
		
		searchForm.find("input[name='pageNum']").val("1");
		e.preventDefault();
		searchForm.submit();
		
	})

</script>
<script>
	
	function manageRemove(pno){
		 
		 var confirmCheck = confirm("정말로 삭제하시겠습니까?");
		 
		 var manageID = "";
		 
			<sec:authorize access="isAuthenticated()">
				manageID = '<sec:authentication property="principal.member.id"/>';
			</sec:authorize>
		 
		 var data = { id:manageID, pno:pno };
		 console.log(data);
		  $.ajax ({
			
			 type : 'get',
			 url : '/mypage/manageRemove',
			 data : data,
			 dataType : 'text',
			 success : function(result){
				 $('#'+pno).remove();
			 }
			 
		 })
	 }
	
	
</script>










<%@ include file="../footer.jsp"%>



























