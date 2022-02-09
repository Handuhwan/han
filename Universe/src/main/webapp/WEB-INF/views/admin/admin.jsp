<%@ include file="admin_header.jsp" %>

			<div class="col-md-10">
				<div class="col-md-12" style="margin-bottom:30px;">
					<form class="form-inline">
						<!-- 이쯤에 검색 옵션 넣어야 함 -->
					  	<div class="form-group" style="width:100%; margin-top: 50px;">
					    <label for="product"></label>
					    <div class="wrap_admin_search">
							<input class="admin_search" type="text" name="search" placeholder="Search">
							<!-- button아직 안 넣었음 -->
						</div>
					  </div>
					</form>
				</div>
				<div class="col-md-12">
					<div class="wrap_admin_menu"> 
						<table class="admin_menu"> <!-- table -->
							<tr class="admin_head">
								<th class="column-0">아이디</th>
								<th class="column-2">이름</th>
								<th class="column-1">닉네임</th>
								<th class="column-3">전화번호</th>
								<th class="column-4">상태</th>
							</tr>
							<c:choose>
								<c:when test = "${mlist eq null }"> 
									<tr style="text-align:center;">
										<td colspan = "7" style="font-family: Poppins-Bold; font-size:25px;">There's No Data</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items = "${mlist}" var="mlist">
										<tr>
											<td class="column-0">${mlist.id}</td>
											<td class="column-2">${mlist.name}</td>
											<td class="column-1">${mlist.nickname}</td>
											<td class="column-3">${mlist.phone}</td>
											<td class="column-0">
												${mlist.status}
												<button type="button" class="" onclick="()">정지</button>
												<button type="button" class="" onclick="()">블락</button>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</table>
					</div>
				</div>
				<!-- pagination -->
				<div class="col-md-12" > <!-- style="padding-left:420px;" -->
					<div style="text-align: center;">
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