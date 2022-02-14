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
							</tr>
							<c:choose>
								<c:when test = "${report eq null }"> 
									<tr style="text-align:center;">
										<td colspan = "7" style="font-family: Poppins-Bold; font-size:25px;">There's No Data</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items = "${report}" var="report">
										<tr>
											<td class="column-0"></td>
											<td class="column-0"></td>
											<td class="column-2"></td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
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
				</div>
				
				<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">정지</button>
					<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
								  <label class="form-check-label" for="flexCheckDefault" placeholder="기타- 한글 25자 이내로 작성해 주세요"></label>
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
					        <button type="button" class="btn_check" data-dismiss="modal">확인</button>
					        <button type="button" class="btn_cancel">취소</button>
					      </div>
					    </div>
					  </div>
					</div>
				<!-- 왜 안되냐 말이야 -->
				<!-- 되라되라되라 -->
				<!-- 안되는 이유가? -->
				<!-- 야 -->
				
				
						
			</div>
		</div>
	</div>
</div>
</body>
</html>