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
							<a class="kSJVTd" href="new">상품등록</a>
						</div>
						<div class="sc-kOCNXg gYlEW">
							<a class="sc-cZLAbK kSJVTd" style="color: red;" href="manage?id=<sec:authentication property="principal.member.id"/>">상품관리</a>
						</div>
						<div class="sc-kOCNXg gYlEW">
							<a class="sc-iVOTot jtVVsU" href="details?id=<sec:authentication property="principal.member.id"/>">구매 / 판매 내역</a>
						</div>
					</nav>
				</div>
			</div>
		</div>

		<!-- 검색하는 부분 -->
		<div class="col-md-12 search">
			<div class="search_box pull-left">
				<form name="search" method="get" action="/mypage/manage" class="search" id="searchForm">
					<input type="text" placeholder="Search" name="keyword" id="managekey">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<button type="button" class="eYKCSk"></button>
					<select name="type" id="selectStatus" class="select">
						<option value="">전체</option>
						<option value="판매중">판매중</option>
						<option value="진행중">진행중</option>
						<option value="핀매완료">판매완료</option>
					</select>
				</form>
			</div>
		</div>

		<div class="col-md-12 productList">
			<div class="pTableBox">
				<table class="pTable">
					<colgroup>
						<col width="*">
						<col width="10%">
						<col width="20%">
						<col width="10%">
						<col width="15%">
						<col width="15%">
						<col width="15%">
					</colgroup>
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
					<tbody id="listajax">
					<c:choose>
						<c:when test="${list ne null}">
							
							<c:forEach var="list" items="${list}">
								<tr id="${list.pno}">
									<td><img src="/resources/images/notica.jpg" alt="" width="55" style="border-radius: 5px;"></td>
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
									<td><a href="/product/productview?pno=${list.pno}">${list.title}</a></td>
									<td><fmt:formatNumber value="${list.price}" type="currency" /></td>
									<td>찜${list.likecount} / 조회수${list.viewcount}</td>
									<td><fmt:formatDate value="${list.indate}" pattern="yyyy-MM-dd" /></td>
									<td><a href="javascript:manageRemove(${list.pno})">삭제하기</a></td>
								</tr>
							
							</c:forEach>
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


<script>

$(function(){

 	$("#selectStatus").on("change",function(){
 	var types =  $("#selectStatus").val();
	var keywords =  $("#managekey").val();
	var id = "${headid}";
	var str = "";
	var status1 = "판매완료";
	var status2 = "진행중";
	
	
		
	$.ajax({
		type:"get",
		data:({
			
			types:types,
			keywords:keywords,
			id:id
		}),
		dataType:"json",
		url:"/mypage/serchmanage",
		success:function(result){
			
			for(var i in result){
			str += "<tr id="+result[i].pno+">";
			str += "<td><img src='/Pupload/"+result[i].img1+"' width='55' style='border-radius: 5px;'></td>";
				if(result[i].status==status1){
					str += "<td style='color:red;'>"+result[i].status+"</td>";
				}else if(result[i].status==status2){
					str +="<td style='color:#ff8f00;'>"+result[i].status+"</td>";
				}else{
					str +="<td>"+result[i].status+"</td>";
				}
			str += "<td><a href='/product/productview?pno="+result[i].pno+"'>"+result[i].title+"</a></td>";
			str += "<td>"+result[i].price+" 원</td>";
			str += "<td>찜"+result[i].likecount+" / 조회수"+result[i].viewcount+"</td>";
			str += "<td>"+result[i].realrealdate+"</td>";
			str += "<td><a href='javascript:manageRemove("+result[i].pno+")'>삭제하기</a></td>";
			}
			$("#listajax").html(str);
				
		}, //suc end
		error:function(){
			alert("에러입니다.")
		}//error end
	
		
	})//ajax end

	})//change end
	
	
	$("#managekey").on("propertychange change keyup paste input",function(){
	 	var types =  $("#selectStatus").val();
		var keywords =  $("#managekey").val();
		var id = "${headid}";
		var str = "";
		var status1 = "판매완료";
		var status2 = "진행중";
	
		$.ajax({
			type:"get",
			data:({
				
				types:types,
				keywords:keywords,
				id:id
			}),
			dataType:"json",
			url:"/mypage/serchmanage",
			success:function(result){
				
				for(var i in result){
				str += "<tr id="+result[i].pno+">";
				str += "<td><img src='/Pupload/"+result[i].img1+"' width='55' style='border-radius: 5px;'></td>";
					if(result[i].status==status1){
						str += "<td style='color:red;'>"+result[i].status+"</td>";
					}else if(result[i].status==status2){
						str +="<td style='color:#ff8f00;'>"+result[i].status+"</td>";
					}else{
						str +="<td>"+result[i].status+"</td>";
					}
				str += "<td><a href='/product/productview?pno="+result[i].pno+"'>"+result[i].title+"</a></td>";
				str += "<td>"+result[i].price+"</td>";
				str += "<td>찜"+result[i].likecount+" / 조회수"+result[i].viewcount+"</td>";
				str += "<td>"+result[i].indate+"</td>";
				str += "<td><a href='javascript:manageRemove("+result[i].pno+")'>삭제하기</a></td>";
				}
				$("#listajax").html(str);
					
			}, //suc end
			error:function(){
				alert("에러입니다.")
			}//error end
			
			
		})//ajax end
			
		})//change end
	
	
})//fun end




</script>


<%@ include file="../footer.jsp"%>

























