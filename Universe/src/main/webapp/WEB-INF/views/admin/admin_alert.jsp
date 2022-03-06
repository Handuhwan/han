<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="admin_header.jsp" %>

			<div class="col-md-10">
				<div class="col-md-12" style="margin-bottom:40px; margin-top: 85px;">
					<div class="row">

					<!-- search form -->
					<form name="myform" method="get" action="/admin/admin_alert" id ="searchForm">	
					
						<select name="type" class="btn btn-default dropdown-toggle" style="text-align:center; min-width: 82px; margin-left: 370px; font-family: Poppins-Regular;">
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
				</div> <!-- /.12column -->
					<div class="col-md-12">
						<div class="wrap_admin_menu"> 
							<table class="admin_menu"> <!-- table -->
								<tr class="admin_head">
									<th class="column-0">신고 받은 아이디</th>
									<th class="column-0">신고 아이디</th>
									<th class="column-2">신고 사유</th>
									<th class="column-0">신고 날짜</th>
									<th class="column-0">관리</th>
								</tr>
								
							
									<c:if test = "${empty report }"> 
										<tr style="text-align:center;">
											<td colspan = "7" style="font-family: Poppins-Bold; font-size:25px;">There's No Data</td>
										</tr>
									</c:if>
									<c:if test="${ not empty report }">
										<c:forEach items = "${report}" var="report">
											<tr>
												<td class="column-0">${report.reported_id}</td>
												<td class="column-0">${report.id}</td>
												<td class="column-2">${report.report}</td>
												<td class="column-0">
													<fmt:parseDate var="indate" value="${report.indate}" pattern="yyyy-MM-dd"/>
													<fmt:formatDate value="${indate}" pattern="yyyy-MM-dd"/> 
												</td>
												<td class="column-0">
													<button type="button" class="btn_blocked" data-toggle="modal" data-target="#${report.reported_id}" >Manage</button>
													<!-- Modal --> 
													<form action ="/admin/admin_member_forced_eviction" method="post" onclick="blockcheck()">
													<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">		
														<div class="modal fade" style="text-align:left;" id="${report.reported_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
															<div class="modal-dialog">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
																		<label><input type="radio" name="block" value="활동 정지"> Block</label>
																		<label><input type="radio" name="block" value="블락"> Ban</label>
												
																		<h4 class="modal-title" id="myModalLabel">활동 정지 회원</h4>
																		<div class="block_square"><input readonly name="reported_id" value="${report.reported_id}"></div>
																		<input type="hidden" readonly name="report_seq" value="${report.report_seq}">
																		
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
														     		<div class="block_day"> <!-- 정지기능 radio 버튼을 클릭해야만 나오는 모달 -->
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
												</td>
											</tr>
										</c:forEach>
									</c:if>
							</table>
						</div>
					</div>
				<!-- pagination -->
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
							<a href="${pageMaker.endPage+1 }"><i class="fa  fa-angle-double-right"></i></a>
						</c:if>
						
						<form id="actionForm" action ="/admin/admin_alert" method="get">
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
							<input type="hidden" name="type" value="${pageMaker.cri.type }">
							<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
						</form>
						
					</div>				
				</div> <!-- /.pagination -->
			</div>
		</div>
	</div>
</div>

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

</body>
</html>