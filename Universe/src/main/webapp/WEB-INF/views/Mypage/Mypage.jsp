<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../header.jsp"%>

<!-- Contents Start -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<!-- Box Start -->
			<div class="pull-left">
				<img src="" alt="">
				<h2>유저 닉네임</h2>
				<div class="Stars">평점표시</div>
				<a href="">내 상점 관리</a>
			</div>
			<div class="pull-right">
				<div class="nickname">
					<h2>유저 닉네임</h2>
					<button class="modify_nickname">상점명 수정</button>
				</div>
				<div class="user_info">
					<P>상점오픈일</P>
					<p>상점방문수</p>
				</div>
				<div class="intro">
					<input type="text" class="intro_text" placeholder="소개글을 입력해주세요">
				</div>
				<div class="intro_btn">소개글 수정</div>
			</div>
			<!-- Box End -->
		</div>

		<!-- Tab Start -->
		<div class="col-md-12">
			<div role="tabpanel">

				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#product"
						aria-controls="product" role="tab" data-toggle="tab">상품&nbsp;5</a></li>

					<li role="presentation"><a href="#faq" aria-controls="faq"
						role="tab" data-toggle="tab">상점문의&nbsp;3</a></li>

					<li role="presentation"><a href="#like" aria-controls="like"
						role="tab" data-toggle="tab">찜&nbsp;12</a></li>

					<li role="presentation"><a href="#review"
						aria-controls="review" role="tab" data-toggle="tab">후기&nbsp;7</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="product">
					<h2>상품&nbsp;5</h2>
						<div class="table-responsive">
							<table class="table">
								<tr>
									<th style="text-align: center;">번호</th>
									<th style="text-align: center;">상품정보</th>
									<th style="text-align: center;">판매가</th>
									<th style="text-align: center;">등록일</th>
									<th style="text-align: center;">수정 / 삭제</th>
								</tr>
								<tr>
									<td colspan="5">출력할 수 있는 데이터가 존재하지 않습니다.</td>
								</tr>
								<tr>
									<td>1</td>
									<td><img src=""></td>
									<td>이름</td>
									<td>판매가</td>
									<td>등록일</td>
									<td>수정 / 삭제</td>
								</tr>
							</table>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane" id="faq">상품문의</div>
						<h2>상점문의&nbsp;3</h2>
							<div class="faq_text">
								<input type="text" class="faq_text" placeholder="상품문의 입력">
								<div class="right-pull"><button class="faq_insert">등록</button></div>
							</div>
							<div class="comment">
								<div class="">
									
								</div>
							</div>

					<div role="tabpanel" class="tab-pane" id="like">찜</div>

					<div role="tabpanel" class="tab-pane" id="review">후기</div>
				</div>

			</div>

		</div>
		<!-- Tab End -->
	</div>
</div>
<!-- Contents End -->











<%@ include file="../footer.jsp"%>