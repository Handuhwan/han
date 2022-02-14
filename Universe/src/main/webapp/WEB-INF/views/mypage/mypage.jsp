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
				<a href="myproduct">상품등록</a>
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
						aria-controls="review" role="tab" data-toggle="tab">상점후기&nbsp;7</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="product">
					<h3 class="info_title">상품&nbsp;<span class="info_count">5</span></h3>
						<div class="likeBox">
							<div class="likeBar">
								<div class="selectBtn">
									전체&nbsp;5개
								</div>
								<div class="aBtn">
									<a class="rbBtn selected">최신순</a>
									<a class="rbBtn unselected">인기순</a>
									<a class="rbBtn unselected">저가순</a>
									<a class="rbBtn unselected">고가순</a>
								</div>
							</div>
							<div class="sc-iBmynh frwOfl">
								<div class="sc-fKGOjr dcoOvl">
									<a data-pid="178727745" class="sc-cugefK fRjjJt" href="/products/178727745?ref=%EC%83%81%EC%A0%90%EC%A0%84%EC%B2%B4%EC%83%81%ED%92%88">
										<div class="sc-fnwBNb bGOWdF">
											<img src="https://media.bunjang.co.kr/product/178727745_1_1644565972_w292.jpg" width="194" height="194" alt="상품 이미지">
											<div class="sc-dREXXX fTyTGh"></div>
										</div>
									
										<div class="sc-iNhVCk eoXTJU">
											<div class="sc-eAKXzc jXLIfz">[해외] 노티카 후드 데님 자켓</div>
											<div class="sc-dRFtgE fpXkTz">
												<div class="sc-bfYoXt hcGbNt">275,000</div>
												<div class="sc-gkFcWv hCkfPo"><span>4분 전</span></div>
											</div>
										</div>
										<div class="sc-gbOuXE fQmeHZ"><img src="/resources/images/location.png" width="15" height="17" alt="위치 아이콘">인천광역시 부평구 부평1동</div>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane" id="faq">
						<h3 class="info_title">상점문의&nbsp;<span class="info_count">3</span></h3>
							<div class="faq_text">
								<textarea placeholder="상품문의 입력 (100자 이내)" class="faq_textarea pull-left"></textarea>
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
							<div class="likeBox">
								<div class="likeBar">
									<div class="selectBtn">
										<div class="selectCheck"></div>
										<button class="scBtn">선택삭제</button>
									</div>
									<div class="aBtn">
										<a class="rbBtn selected">최신순</a>
										<a class="rbBtn unselected">인기순</a>
										<a class="rbBtn unselected">저가순</a>
										<a class="rbBtn unselected">고가순</a>
									</div>
								</div>
								
								<div class="likeListBox">
									<div class="selectOne">
										<a class="oneLink" href="">
											<div class="productCheck">
												<div class="linkCheck"></div>
											</div>
											<div class="productImg">
												<img src="https://media.bunjang.co.kr/product/178714686_1_1644559148_w268.jpg" alt="상품 이미지">
												<div class="sc-cqPOvA kWqxvV"></div>
											</div>
											<div class="productContent">
												<div class="sc-RbTVP buvryO">[해외] 베이프 베이팅 에이프 루즈핏 풀오버 후드</div>
												<div class="sc-drlKqa hELMZu"><div>339,000</div></div>
												<div class="sc-hMrMfs eXrOkK">52분 전</div>
												<div class="sc-bIqbHp jkraVY"><img src="/resources/images/location.png" width="15" height="17" alt="위치 아이콘">위치없음</div>
											</div>
										</a>
									</div>
									<div class="selectOne">
										<a class="oneLink" href="">
											<div class="productCheck">
												<div class="linkCheck"></div>
											</div>
											<div class="productImg">
												<img src="https://media.bunjang.co.kr/product/178714686_1_1644559148_w268.jpg" alt="상품 이미지">
												<div class="sc-cqPOvA kWqxvV"></div>
											</div>
											<div class="productContent">
												<div class="sc-RbTVP buvryO">[해외] 베이프 베이팅 에이프 루즈핏 풀오버 후드</div>
												<div class="sc-drlKqa hELMZu"><div>339,000</div></div>
												<div class="sc-hMrMfs eXrOkK">52분 전</div>
												<div class="sc-bIqbHp jkraVY"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAiCAYAAABIiGl0AAAAAXNSR0IArs4c6QAAA6xJREFUWAm1l01IVFEUx51xNAtxIcEENuQIrqTxO8OEmj5IAncVUS2E2kS0axO4C5KiFi0lXIh9QBC1kKgwclNGjaNOSUEapVRiUSHoTOo4/c743vjem/vGp8xcuHPu+Z//Of9778y9740rz0EbGxsrjsViQait9JpEIuF1uVzbGCfo0/jT2GGwx6WlpQN+vz+Gn7G5MkXD4fAOil6C047dlImrxxCfg9tVUFBwtbq6ekbHrVYpzAoLo9FoJ+QL9AJrkkN/3u12d9bW1l5hMsvWnDTh4eHh8uXl5fvMutFK3qD/jLxTDQ0Nv4z5JuHR0VH/4uLiKwjy/WWtseJPLKTZKO7Wq4dCoa1LS0tP8bMqKvURrcT0TU1NbRZfWkqYWXVrhJVI9j+bZmZmbuplk1s9NDR0GNEnOpgrKz8ydBrZ8rBHRHCur0MsCvc1Pazl1GF301PbqOFpBh3Z4Rv0oIvVBgBG01hqYKCwsPBMIBD4bAxHIpGKhYWFbrB9RtxuzDEr9yB6zI5gwV/U19cfYLvktjI1mQh19rOI5wSCpqDC4bgelaXvUcRMEGJzAO0qUZ2oxdrx53XMzsI9KMJldgQDPsgPYtLgK4fCoeigMmgA2R2fCG83YMohxCFlQAHCDSlgE8Tkytx8yDZmbHCKMxIMQSdcJueWFU8Y8pRDiA3KgAJ0yJ1wJMwqGrlSWxQ6Jkg4wjWBamfCzQzfqmOrqGwNXo/c56uoeaTFejSuOWjxmNx7KXiHwYIlpnIr4I1xVo9TPF8nyFgwiYFV6LidhZfgJaFXv6vvUeCEHVmBy7UZ0fAAds3rUq+BcD8X0SFZcR5XWJcecGhFqEnrjkW12rfEJoV5PRlgJg+1QM4MGqG6uroHKWEZsNXnCfzNmWpe3iL1z9LjJmGuux+AF3MlTO1rrDb1FExutS5GQB5tj3Q/WxbRSElJyWVjPZOwBLxe70mI8sKXrTaZn59/pLKy8p+xYJqwz+eLFhUVtUH6aCRuZMwC/tBba2pqvlnz04SFUFVV9Zsj1krSd2vCOvwYNdo4sx9UOUphIfJ9f8XsRXxclbgGNiuiHNOXdjxbYUlgtuMINzN8Y1dAgU+BtTDxfkUsBWUUFhYFfmKCTKAvlWU/kDfPJo7mO3vKSiR5V69Fkrg8DPj32IHtwE2+FhvzmFivx+M5xz/ENV8sJM+xsC4yMjKyKx6P32YC8rdE2iz9HKu8m/QcfqxbWOry7N2CkRfznZzR0/yIvjBeV/sPFdozA8TD8zUAAAAASUVORK5CYII=" width="15" height="17" alt="위치 아이콘">위치없음</div>
											</div>
										</a>
									</div>
									<div class="selectOne">
										<a class="oneLink" href="">
											<div class="productCheck">
												<div class="linkCheck"></div>
											</div>
											<div class="productImg">
												<img src="https://media.bunjang.co.kr/product/178714686_1_1644559148_w268.jpg" alt="상품 이미지">
												<div class="sc-cqPOvA kWqxvV"></div>
											</div>
											<div class="productContent">
												<div class="sc-RbTVP buvryO">[해외] 베이프 베이팅 에이프 루즈핏 풀오버 후드</div>
												<div class="sc-drlKqa hELMZu"><div>339,000</div></div>
												<div class="sc-hMrMfs eXrOkK">52분 전</div>
												<div class="sc-bIqbHp jkraVY"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAiCAYAAABIiGl0AAAAAXNSR0IArs4c6QAAA6xJREFUWAm1l01IVFEUx51xNAtxIcEENuQIrqTxO8OEmj5IAncVUS2E2kS0axO4C5KiFi0lXIh9QBC1kKgwclNGjaNOSUEapVRiUSHoTOo4/c743vjem/vGp8xcuHPu+Z//Of9778y9740rz0EbGxsrjsViQait9JpEIuF1uVzbGCfo0/jT2GGwx6WlpQN+vz+Gn7G5MkXD4fAOil6C047dlImrxxCfg9tVUFBwtbq6ekbHrVYpzAoLo9FoJ+QL9AJrkkN/3u12d9bW1l5hMsvWnDTh4eHh8uXl5fvMutFK3qD/jLxTDQ0Nv4z5JuHR0VH/4uLiKwjy/WWtseJPLKTZKO7Wq4dCoa1LS0tP8bMqKvURrcT0TU1NbRZfWkqYWXVrhJVI9j+bZmZmbuplk1s9NDR0GNEnOpgrKz8ydBrZ8rBHRHCur0MsCvc1Pazl1GF301PbqOFpBh3Z4Rv0oIvVBgBG01hqYKCwsPBMIBD4bAxHIpGKhYWFbrB9RtxuzDEr9yB6zI5gwV/U19cfYLvktjI1mQh19rOI5wSCpqDC4bgelaXvUcRMEGJzAO0qUZ2oxdrx53XMzsI9KMJldgQDPsgPYtLgK4fCoeigMmgA2R2fCG83YMohxCFlQAHCDSlgE8Tkytx8yDZmbHCKMxIMQSdcJueWFU8Y8pRDiA3KgAJ0yJ1wJMwqGrlSWxQ6Jkg4wjWBamfCzQzfqmOrqGwNXo/c56uoeaTFejSuOWjxmNx7KXiHwYIlpnIr4I1xVo9TPF8nyFgwiYFV6LidhZfgJaFXv6vvUeCEHVmBy7UZ0fAAds3rUq+BcD8X0SFZcR5XWJcecGhFqEnrjkW12rfEJoV5PRlgJg+1QM4MGqG6uroHKWEZsNXnCfzNmWpe3iL1z9LjJmGuux+AF3MlTO1rrDb1FExutS5GQB5tj3Q/WxbRSElJyWVjPZOwBLxe70mI8sKXrTaZn59/pLKy8p+xYJqwz+eLFhUVtUH6aCRuZMwC/tBba2pqvlnz04SFUFVV9Zsj1krSd2vCOvwYNdo4sx9UOUphIfJ9f8XsRXxclbgGNiuiHNOXdjxbYUlgtuMINzN8Y1dAgU+BtTDxfkUsBWUUFhYFfmKCTKAvlWU/kDfPJo7mO3vKSiR5V69Fkrg8DPj32IHtwE2+FhvzmFivx+M5xz/ENV8sJM+xsC4yMjKyKx6P32YC8rdE2iz9HKu8m/QcfqxbWOry7N2CkRfznZzR0/yIvjBeV/sPFdozA8TD8zUAAAAASUVORK5CYII=" width="15" height="17" alt="위치 아이콘">위치없음</div>
											</div>
										</a>
									</div>
									<div class="selectOne">
										<a class="oneLink" href="">
											<div class="productCheck">
												<div class="linkCheck"></div>
											</div>
											<div class="productImg">
												<img src="https://media.bunjang.co.kr/product/178714686_1_1644559148_w268.jpg" alt="상품 이미지">
												<div class="sc-cqPOvA kWqxvV"></div>
											</div>
											<div class="productContent">
												<div class="sc-RbTVP buvryO">[해외] 베이프 베이팅 에이프 루즈핏 풀오버 후드</div>
												<div class="sc-drlKqa hELMZu"><div>339,000</div></div>
												<div class="sc-hMrMfs eXrOkK">52분 전</div>
												<div class="sc-bIqbHp jkraVY"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAiCAYAAABIiGl0AAAAAXNSR0IArs4c6QAAA6xJREFUWAm1l01IVFEUx51xNAtxIcEENuQIrqTxO8OEmj5IAncVUS2E2kS0axO4C5KiFi0lXIh9QBC1kKgwclNGjaNOSUEapVRiUSHoTOo4/c743vjem/vGp8xcuHPu+Z//Of9778y9740rz0EbGxsrjsViQait9JpEIuF1uVzbGCfo0/jT2GGwx6WlpQN+vz+Gn7G5MkXD4fAOil6C047dlImrxxCfg9tVUFBwtbq6ekbHrVYpzAoLo9FoJ+QL9AJrkkN/3u12d9bW1l5hMsvWnDTh4eHh8uXl5fvMutFK3qD/jLxTDQ0Nv4z5JuHR0VH/4uLiKwjy/WWtseJPLKTZKO7Wq4dCoa1LS0tP8bMqKvURrcT0TU1NbRZfWkqYWXVrhJVI9j+bZmZmbuplk1s9NDR0GNEnOpgrKz8ydBrZ8rBHRHCur0MsCvc1Pazl1GF301PbqOFpBh3Z4Rv0oIvVBgBG01hqYKCwsPBMIBD4bAxHIpGKhYWFbrB9RtxuzDEr9yB6zI5gwV/U19cfYLvktjI1mQh19rOI5wSCpqDC4bgelaXvUcRMEGJzAO0qUZ2oxdrx53XMzsI9KMJldgQDPsgPYtLgK4fCoeigMmgA2R2fCG83YMohxCFlQAHCDSlgE8Tkytx8yDZmbHCKMxIMQSdcJueWFU8Y8pRDiA3KgAJ0yJ1wJMwqGrlSWxQ6Jkg4wjWBamfCzQzfqmOrqGwNXo/c56uoeaTFejSuOWjxmNx7KXiHwYIlpnIr4I1xVo9TPF8nyFgwiYFV6LidhZfgJaFXv6vvUeCEHVmBy7UZ0fAAds3rUq+BcD8X0SFZcR5XWJcecGhFqEnrjkW12rfEJoV5PRlgJg+1QM4MGqG6uroHKWEZsNXnCfzNmWpe3iL1z9LjJmGuux+AF3MlTO1rrDb1FExutS5GQB5tj3Q/WxbRSElJyWVjPZOwBLxe70mI8sKXrTaZn59/pLKy8p+xYJqwz+eLFhUVtUH6aCRuZMwC/tBba2pqvlnz04SFUFVV9Zsj1krSd2vCOvwYNdo4sx9UOUphIfJ9f8XsRXxclbgGNiuiHNOXdjxbYUlgtuMINzN8Y1dAgU+BtTDxfkUsBWUUFhYFfmKCTKAvlWU/kDfPJo7mO3vKSiR5V69Fkrg8DPj32IHtwE2+FhvzmFivx+M5xz/ENV8sJM+xsC4yMjKyKx6P32YC8rdE2iz9HKu8m/QcfqxbWOry7N2CkRfznZzR0/yIvjBeV/sPFdozA8TD8zUAAAAASUVORK5CYII=" width="15" height="17" alt="위치 아이콘">위치없음</div>
											</div>
										</a>
									</div>
								</div>
							</div>
					</div>
						
					<div role="tabpanel" class="tab-pane" id="review">
						<h3 class="info_title">상점후기&nbsp;<span class="info_count">7</span></h3>
							<div class="comment_contain">
								<div class="leftBox pull-left">
									<img src="/resources/images/store.png" width="48" height="48" alt="프로필 이미지">
								</div>
								
								<div class="rightBox">
									<div class="chat_user">
										<div class="id">두환마켓</div>
										<div class="date">3일전</div>
									</div>
									<div class="sc-gGCbJM eAYqVt">
										<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 2점 이미지">
										<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 2점 이미지">
										<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 2점 이미지">
										<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 2점 이미지">
										<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 2점 이미지">
										<br>
									</div>
									
									<div>
										<a class="sc-gFXMyG DlcMZ" href="">
											<button class="sc-jWxkHr hHxDRR">맛있는 햄버거가게 e-쿠폰&nbsp;
												<img src="/resources/images/rightarrow.png" width="6" height="10" alt="화살표 아이콘"></button>
										</a>
									</div>
									
									<div class="sc-MYvYT izkVcA">
										<img src="/resources/images/hambuk.jpg" width="100" height="100" alt="로딩 이미지">
									</div>
									
									<div class="chat_content">댓글다는 프로그램좀 알 수 있을까요?</div>
									
									<div class="chat_btn">
										<div class="comment_check"><img src="/resources/images/X.png" width="17" height="14" alt="댓글삭제 버튼 이미지"><a href="">댓글삭제</a></div>
									</div>
								</div>
							</div>
					</div>
				</div>

			</div>

		</div>
		<!-- Tab End -->
	</div>
</div>
<!-- Contents End -->


<%@ include file="../footer.jsp"%>



























