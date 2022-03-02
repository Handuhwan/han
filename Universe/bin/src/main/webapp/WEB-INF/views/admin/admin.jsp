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
					<th class="column-2">상태</th>
				</tr>
			<c:set var="num" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}"/>	
			<tbody id="admintbody">
			<c:forEach var="list" items="${list}" > 
			
				<tr class="temp" >
				
					<td class="column-0">${list.id}</td>
					<td class="column-1">${list.name}</td>
					<td class="column-0">${list.nickname}</td>
					<td class="column-0">${list.phone}</td>
					<td class="column-2">
						<div class ="row">
							<div class="col-md-6" style="text-align:right;">${list.status}</div>
							<div class="col-md-6">
								
								<button type="button" class="btn_blocked" data-toggle="modal" data-target="#${list.id}" >Manage</button>
							</div>
						</div> <!-- /.row  -->
						
						<!-- Modal --> 
						<form action ="/admin/admin_member_forced_eviction" method="post" onclick="blockcheck()">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">		
							<div class="modal fade" style="text-align:left;" id="${list.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											<label><input type="radio" name="block" value="활동 정지"> Block</label>
											<label><input type="radio" name="block" value="블락"> Ban</label>
					
											<h4 class="modal-title" id="myModalLabel">활동 정지 회원</h4>
											<div class="block_square"><input readonly name="reported_id" value="${list.id}"></div>
										</div>
										<div class="modal-header">
											<h4 class="modal-title" id="myModalLabel">활동 정지 사유</h4>
											<div class="form-check">
											<input class="form-check-input" name="reason" type="radio" value="성인/도박 등 불법광고 및 스팸 활동" id="flexCheckDefault">
											<label class="form-check-label" for="flexCheckDefault">성인/도박 등 불법광고 및 스팸 활동</label>
											</div>
											
											<div class="form-check">
											<input class="form-check-input" name="reason" type="radio" value="바람직하지 않은 활동(광고,도배,욕설,비방 등)" id="flexCheckDefault">
											<label class="form-check-label" for="flexCheckDefault">바람직하지 않은 활동(광고,도배,욕설,비방 등)</label>
											</div>
											
											<div class="form-check">
											<input class="form-check-input" name="reason" type="radio" value="사이트 내 자체 운영 원칙에 위배되는 활동" id="flexCheckDefault">
											<label class="form-check-label" for="flexCheckDefault">사이트 내 자체 운영 원칙에 위배되는 활동</label>
											</div>
											
											<div class="form-check">
											<input class="form-check-input" name="reason" type="radio" value="" id="reason">
											<label class="form-check-label" for="flexCheckDefault">기타</label>
											<div class="textbox">
											<textarea class="suspended" name="reasons"  id="suspended" placeholder="기타- 한글 25자 이내로 작성해 주세요"></textarea>
											</div>
											</div>
										</div>
							     		<div class="block_day">
											<div class="modal-header">
												<h4 class="modal-title" id="myModalLabel">활동 정지 기간</h4>
												<div class="form-check">
												<input class="form-check-input" name="block_date" type="radio" value="7" id="flexCheckDefault">
												<label class="form-check-label" for="flexCheckDefault">7일</label>
												</div>
												<div class="form-check">
												<input class="form-check-input" name="block_date" type="radio" value="30" id="flexCheckDefault">
												<label class="form-check-label" for="flexCheckDefault">30일</label>
												</div>
											</div>
										</div>
									    <div class="modal-footer">
									    	<p>대상 회원을 처리 하시겠습니까?</p>
									    	<button type="submit" class="btn_check">확인</button>
									    	<button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
									    </div>
									</div>
								</div>
							</div> <!-- /.modal -->
						</form> <!-- /.form end -->
					</td><!-- /.td end -->
					
				</tr>
				</c:forEach>
				</tbody>
					
			<c:set var="num" value="${num-1}"/>	
		
			</table>
		</div>
	</div>
	<!-- pagination -->
	<div class="col-md-12" > 
		<div style="text-align: center; padding-top: 25px; padding-bottom: 70px;">
			<a href="#" class="admin_pagination admin_pagination_active">
				1
			</a>

			<a href="#" class="admin_pagination">
				2
			</a>
		</div>				
	</div> <!-- /.pagination-->
			
</div> <!-- col-md-10 end -->


</div>
</div>
</div>
</body>

<script>

</script>


</html>