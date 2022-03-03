<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="admin_header.jsp" %>

			<div class="col-md-10">
				<div class="col-md-12" style="margin-bottom:40px;">
					<form class="form-inline">
						<!-- 이쯤에 검색 옵션 넣어야 함 -->
					  	<div class="form-group" style="width:100%; margin-top: 50px;">
					    
					    <div class="wrap_admin_search">
							<!-- button아직 안 넣었음 -->
						</div>
					  </div>
					</form>
				</div>
					<div class="col-md-12" style="margin-top: 60px;">
						<div class="wrap_admin_menu"> 
							<table class="admin_menu"> <!-- table -->
								<tr class="admin_head">
									<th class="column-0">신고 받은 아이디</th>
									<th class="column-0">신고 아이디</th>
									<th class="column-2">신고 사유</th>
									<th class="column-3">신고 날짜</th>
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
												<td class="column-3">
													<div class ="row">
														<div class="col-md-6" style="text-align:right;">
															<fmt:parseDate var="indate" value="${report.indate}" pattern="yyyy-MM-dd"/>
															<fmt:formatDate value="${indate}" pattern="yyyy-MM-dd"/> 
														</div>
														<div class="col-md-6">
															<button type="button" class="btn_blocked" data-toggle="modal" data-target="#${report.reported_id}" >Manage</button>
														</div>
													</div> <!-- /.row  -->
													
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
						<a href="#" class="admin_pagination admin_pagination_active">
							1
						</a>

						<a href="#" class="admin_pagination">
							2
						</a>
					</div>				
				</div> <!-- /.pagination -->
				
				
				
				
				
						
			</div>
		</div>
	</div>
</div>
</body>
</html>