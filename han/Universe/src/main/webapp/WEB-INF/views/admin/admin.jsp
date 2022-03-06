<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="admin_header.jsp" %>



<div class="col-md-10">
	<div class="col-md-12" style="margin-bottom:30px; margin-top: 85px;">
		<div class="row">
			<!-- status별 출력 -->
			
		  	<div class="dropdown" style="float:right; width: 133px; margin-top: 8px; font-family: 'Poppins-Regular'; color: #686868;" >
				  <label class="sibalmenu"><input type="radio" name="menu" value="">전체</label>
				  <label class="sibalmenu"><input type="radio" name="menu" value="활동 정지">정지</label>
				  <label class="sibalmenu"><input type="radio" name="menu" value="블락">블락</label>
			</div>
			
			
			<!-- search form -->
			<form name="myform" method="get" action="/admin/admin" id ="searchForm">	
			
				<select name="type" class="btn btn-default dropdown-toggle" style="text-align:center; min-width: 82px; margin-left: 237px; font-family: Poppins-Regular;">
					<option value="" style="font-family: Poppins-Regular; text-align:left;">   선택</option> <!-- 공백 일부러 띄어쓰기 했음 -->
					<option value="I" style="font-family: Poppins-Regular; text-align:left;">   아이디</option>
					<option value="N" style="font-family: Poppins-Regular; text-align:left;">   이름</option>
					<option value="B" style="font-family: Poppins-Regular; text-align:left;">   닉네임</option> <!-- 별명의 B -->
				</select>
				
			  	<div class="col-lg-6" style="float:right;">
                	<div class="input-group">
                    	<input type="text" class="form-control" name="keyword" placeholder="검색어를 입력하세요">
                   		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
                   		<span class="input-group-btn">
				        	<button class="btn btn-default" type="submit">Submit</button>
				      	</span>
                   </div><!-- /input-group -->
				</div><!-- /.col-lg-6 -->
				
			</form> 
		</div><!-- /.row -->
	</div> <!-- 12 column end -->
	
	
	<div class="col-md-12">
		<div class="wrap_admin_menu"> 
			<table class="admin_menu"> 
				<tr class="admin_head">
					<th class="column-0">아이디</th>
					<th class="column-1">이름</th>
					<th class="column-0">닉네임</th>
					<th class="column-0">전화번호</th>
					<th class="column-0">상태</th>
				</tr>
				<c:set var="num" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}"/>	
					<tbody id="admintbody">
						<c:forEach var="list" items="${list}" > 
							<tr class="temp" >
								<td class="column-0">${list.id}</td>
								<td class="column-1">${list.name}</td>
								<td class="column-0">${list.nickname}</td>
								<td class="column-0">${list.phone}</td>
								<c:choose>
									<c:when test="${list.status == '활동 정지'}">
										<td class="column-0" id="status1" style="color:#989ec6;">${list.status}</td>
									</c:when>
									<c:when test="${list.status == '블락'}">
										<td class="column-0" style="color:#d58a8a;">${list.status}</td>
									</c:when>
									<c:otherwise>
										<td class="column-0">${list.status}</td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>
					</tbody>
				<c:set var="num" value="${num-1}"/>	
			</table>
		</div>
	</div>
	<!-- pagination -->
	<div class="col-md-12" > 
		<div class="col-md-12" > 
			<div style="text-align: center; padding-top: 25px; padding-bottom: 70px;">
				<c:if test="${pageMaker.prev }">
					<a href="${pageMaker.startPage-1 }"><i class="fa  fa-angle-double-left"></i></a>
				</c:if>
				
				<div id="pagenums">
					<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<a href="${num}"  class="admin_pagination ${pageMaker.cri.pageNum == num?'admin_pagination_active':''}">${num }</a>
					</c:forEach>
				</div>
				
				<c:if test="${pageMaker.next }">
					<a href="${pageMaker.endPage+1 }"><i class="fa fa-angle-double-right"></i></a>
				</c:if>
				
				<form id="actionForm" action ="/admin/admin" method="get">
				
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
					<input type="hidden" name="type" value="${pageMaker.cri.type }">
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
				</form>
				
			</div>						
	</div> <!-- /.pagination-->
			
</div> <!-- col-md-10 end -->


</div>
</div>
</div>
</body>

<script>
//이 스크립트는 해당페이지에만 작성한다. js파일에 작성시 오류가 생길 수있음.
var actionForm = $("#actionForm");

$("#pagenums>a").on("click",function(e){
	e.preventDefault();
	actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	actionForm.submit();
})

	function searchEvt(){
		
		 var serchForm = $("#searchForm");
			serchForm.find("input[name=pageNum]").val("1");
			e.preventDefault();
			serchForm.submit();
		
		}
</script>


</html>