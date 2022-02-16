<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="detailsHeader.jsp"%>

<!-- Contents Start -->
<div class="container" style="width:50%">
	<div class="dTable">
		<h2>거래 내역</h2>
		<div role="tabpanel">

			<!-- Nav tabs -->
			<ul class="nav nav-tabs detailsTab" role="tablist">
				<li role="presentation" class="active"><a href="#buy" aria-controls="home" role="tab" data-toggle="tab">구매</a></li>
				<li role="presentation"><a href="#sell" aria-controls="profile" role="tab" data-toggle="tab">판매</a></li>
				<li role="presentation"><a href="#calulate" aria-controls="messages" role="tab" data-toggle="tab">정산</a></li>
			</ul>
			
			<div class="details-Btn" style="margin-top:10px;">
				<form class="listBtn" name="detailsList" method="get">
					<input type="button" class="statusBtn" value="전체 상태">
					<input type="button" class="statusBtn" value="진행중">
					<input type="button" class="statusBtn" value="완료">
					<input type="button" class="statusBtn" value="취소/환불">
				</form>
			</div>
			
			<div class="none_details">
				구매 내역이 없습니다.
			</div>
			
			<div class="none_details">
				판매 내역이 없습니다.
			</div>
			
			<div class="none_details">
				정산 내역이 없습니다.
			</div>
			
			<!-- Tab panes -->
			<div class="tab-content detailsContents">
				<div role="tabpanel" class="tab-pane active" id="buy">
					<table class="buyTable">
						<thead>
							<tr>
								<th>상품명</th>
								<th>수량</th>
								<th>가격</th>
								<th>구매날짜</th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>소니 듀얼센스</th>
								<th>1 개</th>
								<th>65.000 원</th>
								<th>22/02/15</th>
								<th>완료</th>
							</tr>
							<tr>
								<th>칼하트 파카</th>
								<th>1 개</th>
								<th>255.000 원</th>
								<th>22/02/14</th>
								<th>진행중</th>
							</tr>
							<tr>
								<th>BBQ 기프티콘</th>
								<th>2 개</th>
								<th>40.000 원</th>
								<th>22/02/15</th>
								<th>진행중</th>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div role="tabpanel" class="tab-pane" id="sell">
					<table class="sellTable">
						<thead>
							<tr>
								<th>상품명</th>
								<th>수량</th>
								<th>가격</th>
								<th>구매날짜</th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>옥스퍼드 셔츠</th>
								<th>1 개</th>
								<th>75.000 원</th>
								<th>22/02/15</th>
								<th>진행중</th>
							</tr>
							<tr>
								<th>마스크50장 1박스</th>
								<th>2 개</th>
								<th>20.000 원</th>
								<th>22/02/14</th>
								<th>진행중</th>
							</tr>
							<tr>
								<th>올림푸스 카메라</th>
								<th>1 개</th>
								<th>340.000 원</th>
								<th>22/02/13</th>
								<th>완료</th>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div role="tabpanel" class="tab-pane" id="calulate">
					정산
				</div>
			</div>
		
		</div>
	</div>
</div>
<!-- Contents End -->



























