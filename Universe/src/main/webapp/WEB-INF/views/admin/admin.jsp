<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="admin_header.jsp" %>



<div class="col-md-10">
	<div class="col-md-12" style="margin-bottom:30px; margin-top: 85px;">
		<div class="row">
			<!-- status별 출력 -->
		  	<div class="dropdown" style="float:right; width: 119px;">
				  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">전체 회원
				  	<span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="font-family: Poppins-Regular;">
				  	<li role="presentation"><a role="menuitem" tabindex="-1" href="#">정지 회원</a></li>
				  	<li role="presentation"><a role="menuitem" tabindex="-1" href="#">블락 회원</a></li>
				  </ul>
			</div>
			
			<!-- search form -->
			<form name="myform" method="get" action="/admin/admin" id ="searchForm">	
			
				<select name="type" class="btn btn-default dropdown-toggle" style="text-align:center; min-width: 82px; margin-left: 250px; font-family: Poppins-Regular;">
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
			<table class="admin_menu"> <!-- table -->
				<tr class="admin_head">
					<th class="column-0">아이디</th>
					<th class="column-1">이름</th>
					<th class="column-0">닉네임</th>
					<th class="column-0">전화번호</th>
					<th class="column-2">상태</th>
				</tr>
			<c:set var="num" value="${pageMaker.total -((pageMaker.cri.pageNum-1)*10)}"/>	
			<c:forEach var="list" items="${list}" > <!-- forEach태그만 넣으면 td가 출력될 부분에 들어가는 모든게 사라짐 -->
				<tr>
					<td class="column-0">${list.id}</td>
					<td class="column-1">${list.name}</td>
					<td class="column-0">${list.nickname}</td>
					<td class="column-0">${list.phone}</td>
					<td class="column-2">
						<div class ="row">
							<div class="col-md-6" style="text-align:right;">${list.status}</div>
							<div class="col-md-6">
								<button type="button" class="btn_suspended" data-toggle="modal" data-target="#myModal" >정지</button>
								<button type="button" class="btn_blocked" data-toggle="modal" data-target="#${list.id}" >블락</button>
							</div>
						</div> <!-- /.row  -->
						
						
						<!-- 정지 회원 Modal -->
							<div class="modal fade" style="text-align:left;" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							        <h4 class="modal-title" id="myModalLabel">활동 정지 회원</h4>
							        <div class="block_square">대상 회원 아이디</div>
							      </div>
							      
							      <div class="modal-header">
							      	<h4 class="modal-title" id="myModalLabel">활동 정지 사유</h4>
								      	<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
										  <label class="form-check-label" for="flexCheckDefault">
										    성인/도박 등 불법광고 및 스팸 활동
										  </label>
										</div>
										<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
										  <label class="form-check-label" for="flexCheckDefault">
										    바람직하지 않은 활동(광고,도배,욕설,비방 등)
										  </label>
										</div>
										<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
										  <label class="form-check-label" for="flexCheckDefault">
										    사이트 내 자체 운영 원칙에 위배되는 활동
										  </label>
										</div>
										<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
										  <label class="form-check-label" for="flexCheckDefault">
										    기타
										  </label>
										  <input class="suspended" type="text" id="suspended" placeholder="기타- 한글 25자 이내로 작성해 주세요">
										</div>
							      </div>
							      
							      <div class="modal-header">
							      	<h4 class="modal-title" id="myModalLabel">활동 정지 기간</h4>
							      		<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
										  <label class="form-check-label" for="flexCheckDefault">
										    1일
										  </label>
										</div>
										<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
										  <label class="form-check-label" for="flexCheckDefault">
										    7일
										  </label>
										</div>
										<div class="form-check">
										  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
										  <label class="form-check-label" for="flexCheckDefault">
										    30일
										  </label>
										</div>
							      </div>
							      
							      <div class="modal-footer">
							      	<p>대상 회원을 활동 정지 하시겠습니까?</p>
							        <button type="submit" class="btn_check" >확인</button>
							        <button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
							      </div>
							    </div>
							  </div>
							</div>
								
						
						<!-- 블락 회원 Modal -->
							<form action ="/admin/admin_member_forced_eviction" method = "post">
								<div class="modal fade" id="${list.id}" style="text-align:left;" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								  <div class="modal-dialog">
								    <div class="modal-content">
								      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								        <h4 class="modal-title" id="myModalLabel">블락할 회원</h4>
								        <div class="block_square">${list.id}</div>
								      </div>
								      
								      <div class="modal-header">
								      	<h4 class="modal-title" id="myModalLabel">블락 사유</h4>
									      	<div class="form-check">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
											  <label class="form-check-label" for="flexCheckDefault">
											    성인/도박 등 불법광고 및 스팸 활동
											  </label>
											</div>
											<div class="form-check">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
											  <label class="form-check-label" for="flexCheckDefault">
											    바람직하지 않은 활동(광고,도배,욕설,비방 등)
											  </label>
											</div>
											<div class="form-check">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
											  <label class="form-check-label" for="flexCheckDefault">
											    사이트 내 자체 운영 원칙에 위배되는 활동
											  </label>
											</div>
											<div class="form-check">
											  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
											  <label class="form-check-label" for="flexCheckDefault">
											    기타
											  </label>
											  <input class="suspended" type="text" id="suspended" placeholder="기타- 한글 25자 이내로 작성해 주세요">
											</div>
								      </div>
								      
								      <div class="modal-footer">
								      	<p>대상 회원을 활동 블락 하시겠습니까?</p>
								        <button type="submit" class="btn_check" >확인</button>
								        <button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
								      </div>
								      
								    </div>
								  </div>
								</div>
							</form>
						</td><!-- td end -->
					</tr>
				<c:set var="num" value="${num-1 }"/>	
				</c:forEach>	
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