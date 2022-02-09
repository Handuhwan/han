<%@ include file="admin_header.jsp" %>

			<div class="col-md-10">
				<div class="col-md-12" style="margin-bottom:30px;">
					<form class="form-inline">
					  <div class="form-group">
					    <label for="product"></label>
					    <div class="bor17 of-hidden pos-relative">
							<input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55" type="text" name="search" placeholder="Search" style="margin:0; background:none;">

							<button type="submit" class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
								<i class="zmdi zmdi-search"></i>
							</button>
						</div>
					  </div>
					</form>
				</div>
				<div class="col-md-12">
					<div class="wrap-table-shopping-cart"> <!-- table-responsive -->
						<table class="table-shopping-cart"> <!-- table -->
							<tr class="table_head">
								<th class="column-0">아이디</th>
								<th class="column-2">이름</th>
								<th class="column-1">닉네임</th>
								<th class="column-3">전화번호</th>
								<th class="column-4">상태</th>
							</tr>
							<c:choose>
								<c:when test = "${alist eq null }"> 
									<tr style="text-align:center;">
										<td colspan = "7" style="font-family: Poppins-Bold; font-size:25px;">There's No Data</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items = "${alist}" var="alist">
										<tr>
											<td class="column-0">${alist.pseq}</td>
											<td class="column-2"><img src="${pageContext.request.contextPath}/product_images/${alist.image}" style="width:150px; height:180px;"></td>
											<td class="column-1">${alist.name}</td>
											<td class="column-3"><fmt:formatNumber value="${alist.price1}"/></td>
											<td class="column-0">
												${alist.name}
												<button type="button" class="btn btn-danger writer pull-right" onclick="go_write()">글쓰기</button>
												<button type="button" class="btn btn-danger writer pull-right" onclick="go_write()">글쓰기</button>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</table>
					</div>
				</div>
				<div class="col-md-12" style="padding-left:420px;">
							<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1">
								1
							</a>

							<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7">
								2
							</a>
						</div>
						
			</div>
		</div>
	</div>
</div>
</body>
</html>