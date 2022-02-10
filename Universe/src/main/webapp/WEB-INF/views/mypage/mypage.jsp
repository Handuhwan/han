<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../header.jsp"%>

<!-- Contents Start -->
<div class="container">
	<div class="row">
		<div class="col-md-12 topmybox">
			<!-- Box Start -->
			<div class="pull-left mybox_left">
				<img src="/resources/images/store.png" alt="" class="myboximg">
				<h2>코딩스토어</h2>
				<div class="Stars">
					<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/noStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
				</div>
				<a href="" class="myStoreLink">내 상점 관리</a>
			</div>
			
			<div class="pull-right mybox_right">
				<div class="nickname">
					코딩스토어
					<button class="modify_nickname">상점명 수정</button>
				</div>
				<div class="user_info">
					<div class="user_a pull-left"><img src="/resources/images/store2.png" width="14" height="13" alt="오픈일 아이콘">상점오픈일&nbsp;7일 전</div>
					<div class="user_a"><img src="/resources/images/visiter.png" width="14" height="13" alt="방문수 아이콘">상점방문수&nbsp;35 명</div>
				</div>
				<div class="intro_text">
					<p>안녕하세요 여러가지 코드를 판매하고 있는 코딩스토어입니다.<br>많은 관심과 사랑 부탁드립니다 ~ ^^</p>
				</div>
				<div class="intro_btn">
					<button class="intro_btn2">소개글 수정</button>
				</div>
			</div>
			<!-- Box End -->
		</div>

		<!-- Tab Start -->
		<div class="col-md-12 botmybox">
			<div role="tabpanel">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs nav_bar" role="tablist">
					<li role="presentation" class="active nav_title"><a href="#product"
						aria-controls="product" role="tab" data-toggle="tab">상품&nbsp;5</a></li>

					<li role="presentation" class="nav_title"><a href="#faq" 
						aria-controls="faq" role="tab" data-toggle="tab">상점문의&nbsp;3</a></li>

					<li role="presentation" class="nav_title"><a href="#like" 
						aria-controls="like" role="tab" data-toggle="tab">찜&nbsp;12</a></li>

					<li role="presentation" class="nav_title"><a href="#review"
						aria-controls="review" role="tab" data-toggle="tab">후기&nbsp;7</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="product">
					<h3 class="info_title">상품&nbsp;<span class="info_count">5</span></h3>
						<div class="table-responsive">
							<table class="table">
								<tr>
									<td colspan="5">출력할 수 있는 데이터가 존재하지 않습니다.</td>
								</tr>
								<tr class="product_table">
									<td><img src=""></td>
									<td>이름</td>
									<td>판매가</td>
									<td>등록일</td>
									<td><a href="">수정</a>&nbsp;/&nbsp;<a href="">삭제</a></td>
								</tr>
								<tr class="product_table">
									<td><img src=""></td>
									<td>이름</td>
									<td>판매가</td>
									<td>등록일</td>
									<td><a href="">수정</a>&nbsp;/&nbsp;<a href="">삭제</a></td>
								</tr>
							</table>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane" id="faq">
						<h3 class="info_title">상점문의&nbsp;<span class="info_count">3</span></h3>
							<div class="faq_text">
								<textarea placeholder="상품문의 입력" class="faq_textarea pull-left"></textarea>
									<button class="faq_insert">
										<img src="/resources/images/faq_insert.png" width="15" height="16" alt="문의등록 아이콘">등록
									</button>
							</div>
							<div class="comment_contain">
								<div class="leftBox pull-left">
									<img src="/resources/images/store.png" width="48" height="48" alt="프로필 이미지">
								</div>
								
								<div class="rightBox">
									<div class="chat_user">
										<div class="id">당근마켓</div>
										<div class="date">3일전</div>
									</div>
									
									<div class="chat_content">댓글다는 프로그램좀 알 수 있을까요?</div>
									
									<div class="chat_btn">
										<div class="comment_check"><img src="/resources/images/comment.png" width="17" height="14" alt="댓글달기 버튼 이미지"><a href="">댓글달기</a></div>
										<div class="comment_check"><img src="/resources/images/faq_delete.png" width="17" height="14" alt="댓글달기 버튼 이미지"><a href="" class="comdel">삭제하기</a></div>
									</div>
								</div>
							</div>
							<div class="comment_contain">
								<div class="leftBox pull-left">
									<img src="/resources/images/store.png" width="48" height="48" alt="프로필 이미지">
								</div>
								
								<div class="rightBox">
									<div class="chat_user">
										<div class="id">당근마켓</div>
										<div class="date">3일전</div>
									</div>
									
									<div class="chat_content">댓글다는 프로그램좀 알 수 있을까요?</div>
									
									<div class="chat_btn">
										<div class="comment_check"><img src="/resources/images/comment.png" width="17" height="14" alt="댓글달기 버튼 이미지"><a href="">댓글달기</a></div>
										<div class="comment_check"><img src="/resources/images/faq_delete.png" width="17" height="14" alt="댓글달기 버튼 이미지"><a href="" class="comdel">삭제하기</a></div>
									</div>
								</div>
							</div>
					</div>

					<div role="tabpanel" class="tab-pane" id="like">
						<h3 class="info_title">찜&nbsp;<span class="info_count">12</span></h3>
					</div>
						
					<div role="tabpanel" class="tab-pane" id="review">
						<h3 class="info_title">리뷰&nbsp;<span class="info_count">7</span></h3>
					</div>
				</div>

			</div>

		</div>
		<!-- Tab End -->
	</div>
</div>
<!-- Contents End -->


<%@ include file="../footer.jsp"%>



























