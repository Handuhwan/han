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
							<!--<c:choose>
								 <c:when test = "${mlist eq null }"> 
									<tr style="text-align:center;">
										<td colspan = "7" style="font-family: Poppins-Bold; font-size:25px;">There's No Data</td>
									</tr>
								</c:when>
								<c:otherwise> 
									<c:forEach items = "${mlist}" var="mlist">-->
										<tr>
											<td class="column-0">야호</td><!--${mlist.id}  -->
											<td class="column-1"></td><!--${mlist.name}  -->
											<td class="column-0"></td><!--${mlist.nickname}  -->
											<td class="column-0"></td><!--${mlist.phone}  -->
											<td class="column-2">
												<!-- ${mlist.status} -->
												<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">정지</button>
													<!-- Modal -->
													<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
													  <div class="modal-dialog">
													    <div class="modal-content">
													      <div class="modal-header">
													        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
													        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
													      </div>
													      <div class="modal-body">
													        ...
													      </div>
													      <div class="modal-footer">
													        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
													        <button type="button" class="btn btn-primary">Save changes</button>
													      </div>
													    </div>
													  </div>
													</div>
												<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">블락</button>
											</td>
										</tr>
									<!--</c:forEach>
								 </c:otherwise> 
							</c:choose>-->
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