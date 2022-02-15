<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="admin_header.jsp" %>

			<div class="col-md-10">
				<div class="col-md-12" style="margin-bottom:30px; margin-top: 85px;">
					<div class="row">
					  <div class="col-lg-6" style="width: 100%;">
					    <div class="input-group">
					      <div class="input-group-btn" >
					        <button type="button" style="width:130px; font-family: Poppins-Regular;" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" >전체회원  <span class="caret"></span></button>
					        <ul class="dropdown-menu" role="menu" style="padding-left: 15px; min-width: 130px;">
					          <li><a href="#" style="font-family: Poppins-Regular;">전체회원</a></li>
					          <li class="divider"></li>
					          <li><a href="#" style="font-family: Poppins-Regular;">활동정지</a></li>
					          <li class="divider"></li>
					          <li><a href="#" style="font-family: Poppins-Regular;">블락회원</a></li>
					        </ul>
					      </div><!-- /btn-group -->
					      <input type="text" class="form-control" aria-label="...">
					    </div><!-- /input-group -->
					  </div><!-- /.col-lg-6 -->
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
						
							<tr>
								<td class="column-0">야호</td><!--${mlist.id}  -->
								<td class="column-1">x</td><!--${mlist.email}  -->
								<td class="column-0">x</td><!--${mlist.nickname}  -->
								<td class="column-0">x</td><!--${mlist.phone}  -->
								<td class="column-2">
									<!-- ${mlist.status} -->
									<button type="button" class="btn_suspended" data-toggle="modal" data-target="#myModal">정지</button>
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
										        <button type="button" class="btn_check" data-dismiss="modal">확인</button>
										        <button type="button" class="btn_cancel">취소</button>
										      </div>
										    </div>
										  </div>
										</div>
									<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">블락</button>
								</td>
							</tr>
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
						
			</div>
		</div>
	</div>
</div>
</body>
</html>