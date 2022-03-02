<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../header.jsp"%>

<!-- Contents Start -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="sc-jTqLGJ lfQZRP">
				<div class="sc-wRHdD DcYnj">
					<nav class="sc-cClmTo bnFEIX">
						<div class="sc-kOCNXg cnmmrB"><a class="sc-cZLAbK kSJVTd" href="new">상품등록</a></div>
						<div class="sc-kOCNXg gYlEW"><a class="sc-cZLAbK kSJVTd" href="manage?id=<sec:authentication property="principal.member.id"/>">상품관리</a></div>
						<div class="sc-kOCNXg gYlEW"><a class="sc-iVOTot jtVVsU" href="details?id=<sec:authentication property="principal.member.id"/>">구매 / 판매 내역</a></div>
					</nav>
				</div>
			</div>
		</div>
		
		<!-- 검색하는 부분 -->
		<div class="col-md-12 search">
			<div class="search_box pull-left">
				<form name="search" method="get" action="" class="search">
					<input type="text" placeholder="Search" name="word">
					<button type="submit" class="eYKCSk" onclick=""></button>
					<select name="selectStatus" id="selectStatus" class="selectStatus">
						<option value="">전체</option>
						<option value="판매중">판매중</option>
						<option value="판매완료">판매완료</option>
					</select>
				</form>
			</div>
		</div>
		
		<div class="col-md-12 productList">
			<div class="">
				<table class="pTable">
					<thead>
						<tr>
							<th>상품사진</th>
							<th>판매상태</th>
							<th>상품명</th>
							<th>가격</th>
							<th>찜/조회수</th>
							<th>등록일</th>
							<th>기능</th>
						</tr>
					</thead>
					<tbody>
						<tr>
	                         <td>사진</td>
	                         <td>판매중</td>
	                         <td>두환쓰 아반떼</td>
	                         <td><fmt:formatNumber value="2500000" type="currency"/></td>
	                         <td>찜3 / 조회수12</td>
	                         <td>21. 02. 11</td>
	                         <td><a href="javascript:manageRemove()">삭제</a></td>
	                   	</tr>
                   </tbody>
				</table>
				<div class="sc-bqjOQT jPSlgl">등록된 상품이 없습니다</div>
			</div>
		</div>
		<!-- 상품리스트 끝 -->
	</div>
</div>








		



<%@ include file="../footer.jsp"%>



























