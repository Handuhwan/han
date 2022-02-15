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
						<div class="sc-kOCNXg gYlEW"><a class="sc-cZLAbK kSJVTd" href="manage">상품관리</a></div>
						<div class="sc-kOCNXg gYlEW"><a class="sc-iVOTot jtVVsU" href="details" target="_blank" rel="noopener noreferrer">구매 / 판매 내역</a></div>
					</nav>
				</div>
			</div>
		</div>
		<div class="col-md-12 search">
			<div class="search_box pull-left">
				<form name="search" method="get" action="" class="search">
					<input type="text" placeholder="Search" name="word">
					<button type="submit" class="eYKCSk" onclick=""></button>
				</form>
			</div>
		</div>
		<div class="col-md-12 productList">
			<div class="">
				<table class="pTable">
					<thead>
						<tr>
							<th>사진</th>
							<th>판매상태</th>
							<th>상품명</th>
							<th>가격</th>
							<th>찜/댓글</th>
							<th>최근수정일</th>
							<th>기능</th>
						</tr>
					</thead>
					<tbody>
						<tr>
	                         <td>사진</td>
	                         <td>판매중</td>
	                         <td>두환쓰 아반떼</td>
	                         <td><fmt:formatNumber value="2500000" type="currency"/></td>
	                         <td>찜3 / 댓글12</td>
	                         <td>21. 02. 11</td>
	                         <td><a href="">수정</a> / <a href="">삭제</a></td>
	                   	</tr>
                   </tbody>
				</table>
				<div class="sc-bqjOQT jPSlgl">등록된 상품이 없습니다</div>
			</div>
		</div>
	</div>
</div>
		



<%@ include file="../footer.jsp"%>



























