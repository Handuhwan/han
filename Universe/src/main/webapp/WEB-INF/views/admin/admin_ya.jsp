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
					<div style="text-align: center; padding-top: 15px;">
						<a href="#" class="admin_pagination admin_pagination_active">
							1
						</a>

						<a href="#" class="admin_pagination">
							2
						</a>
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