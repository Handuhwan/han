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
				<div id="prBox">
					<h2 id="prNickname">${memberInfo.nickname}</h2> <!-- 닉네임 출력 -->
				</div>
				<div class="Stars">
					<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
					<img src="/resources/images/inStar.png" width="15" height="14" alt="작은 별점 0점 이미지">
				</div>
				<a href="new" class="myStoreLink">내 상점 관리</a>
			</div>
			
			<div class="pull-right mybox_right" id="myboxRight">
				<div class="nicknameBox" id="nicknameBox">
					<div class="nickname" id="nickname">
						<span id="storeNickname">${memberInfo.nickname}</span> <!-- 닉네임 출력 -->
						<button class="modify_nickname" id="modifyStorename" onclick="modifyNickname()">상점명 수정</button>
					
					</div>
				</div>
				<div class="user_info">
					<div class="user_a pull-left"><img src="/resources/images/coins.png" width="14" height="13" alt="오픈일 아이콘">
						포인트&nbsp;:&nbsp;${memberInfo.point}&nbsp;원
					</div>
					<div class="user_a pull-left"><img src="/resources/images/store2.png" width="14" height="13" alt="오픈일 아이콘">
						상점오픈일&nbsp;:&nbsp;<span id="storeTimeValue"></span>
						<input type="hidden" id="openDay" value="${memberInfo.indate}">
					</div>
					<div class="user_a"><img src="/resources/images/visiter.png" width="14" height="13" alt="방문수 아이콘">
						상점방문수&nbsp;:&nbsp;${userCount}&nbsp;명
					</div>
				</div>
				<div class="introContainer" id="introContainer">
					<div class="introBox" id="introBox">
						<div class="intro_text" id="intro_text">
							<p id="originIntro">${memberInfo.intro}</p>
						</div>
						<div class="intro_btn" id="intro_btn">
							<button class="intro_btn2" id="intro_btn2" onclick="modifyIntro()">소개글 수정</button>
						</div>
					</div>
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
						aria-controls="product" role="tab" data-toggle="tab">상품</a></li>

					<li role="presentation" class="nav_title"><a href="#faq" 
						aria-controls="faq" role="tab" data-toggle="tab">상점문의</a></li>

					<li role="presentation" class="nav_title"><a href="#like" 
						aria-controls="like" role="tab" data-toggle="tab">찜</a></li>

					<li role="presentation" class="nav_title"><a href="#review"
						aria-controls="review" role="tab" data-toggle="tab">상점후기</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="product">
					<h3 class="info_title">상품&nbsp;<span class="info_count">${pCount}</span></h3>
						<div class="likeBox">
							<div class="likeBar">
								<div class="selectBtn">
									전체&nbsp;${pCount}&nbsp;개
								</div>
								<div class="aBtn">
									<a class="rbBtn selected" href="javascript:recentList">최신순</a>
									<a class="rbBtn unselected" href="javascript:popularList">인기순</a>
									<a class="rbBtn unselected" href="javascript:lowPriceList">저가순</a>
									<a class="rbBtn unselected" href="javascript:highPriceList">고가순</a>
								</div>
							</div>
							<div class="sc-iBmynh frwOfl">
								<div class="sc-fKGOjr dcoOvl">
								<c:forEach items="${plist}" var="plist">
									<a class="sc-cugefK fRjjJt" href="/productView?pno=${plist.pno}">
										<div class="sc-fnwBNb bGOWdF">
											<img src="${pageContext.request.contextPath}/Pupload/${plist.img}" width="194" height="194" alt="상품 이미지">
											<div class="sc-dREXXX fTyTGh"></div>
										</div>
									
										<div class="sc-iNhVCk eoXTJU">
											<div class="sc-eAKXzc jXLIfz">${plist.title}</div>
											<div class="sc-dRFtgE fpXkTz">
												<div class="sc-bfYoXt hcGbNt">${plist.price}</div>
												<div class="sc-gkFcWv hCkfPo">
													<span id="plistTime"></span>
													<input type="hidden" id="productInsertDate" value="${plist.indate}">
												</div>
											</div>
										</div>
										<div class="sc-gbOuXE fQmeHZ"><img src="/resources/images/location.png" width="15" height="17" alt="위치 아이콘">${plist.location}</div>
									</a>
								</c:forEach>
								</div>
							</div>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane" id="faq">
						<h3 class="info_title">상점문의&nbsp;<span class="info_count" id="faqCount">${faqCount}</span></h3>
							<div class="faqContentCheckBox">
								<span class="faqContentCheck">0자</span>
								<span class="faqContentCheckTotal">/100자</span>
							</div>
							<div class="faq_text">
								<textarea placeholder="상품문의 입력 (100자 이내)" class="faq_textarea pull-left" id="faqTextarea"></textarea>
									<button class="faq_insert" id="faqInsertBtn">
										<img src="/resources/images/faq_insert.png" width="15" height="16" alt="문의등록 아이콘">등록
									</button>
							</div>
							
							<div class="chat">
								
							</div>
							
							<div class="paging">
								<c:if test="${pageMaker.prev }">
									<a href="${pageMaker.startPage - 1}"><i
										class="fa fa-angle-double-left"></i></a>
								</c:if>
								<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
									<a href="${num }" class="${pageMaker.cri.pageNum == num?'active':''}">${num }</a>
								</c:forEach>
								<c:if test="${pageMaker.next }">
									<a href="${pageMaker.endPage + 1}"><i
										class="fa fa-angle-double-right"></i></a>
								</c:if>
								<div>
								
								</div>
								<form id="actionForm" action="my" method="get">
									<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
									<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
									<input type="hidden" name="type" value="${pageMaker.cri.type }">
									<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
								</form>
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
									<img src="/resources/images/store.png" width="48" height="48" alt="프로필 이미지" style="margin-top: 13px;">
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
									
									<div class="aTag">
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

<script>

	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
			
	$(document).ajaxSend(function(e, xhr, options) {
	
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		
	})
</script>
<script>
	
	var id = '<c:out value="${memberInfo.id}"/>';
	var replyer =  '<c:out value="${memberInfo.nickname}"/>'
	
	console.log(replyer);
	console.log(id);

	var faqUL = $('.chat');
	showList(1);
	
	function showList(page) {
		
		replyService.getList( {id:id, page:page||1}, function(list) {
			
			var str = "";
			
			if(list == null || list.length == 0) {
				faqUL.html(str);
				return;
			}
			
			for(var i=0, len=list.length || 0; i<len; i++) {
				str +=  "<div class='leftBox pull-left' style='margin: 10px 0;'>";
				str +=		"<img src='/resources/images/store.png' width='48' height='48' alt='프로필 이미지'>";
				str +=	"</div>";
				str +=	"<div class='rightBox'>";
				str +=		"<div class='chat_user'>";
				str +=			"<input type='hidden' id='faqQno' data-qno="+list[i].qno+">";
				str +=			"<div class='id' id="+list[i].qno+">"+list[i].replyer+"</div>";
				str +=				"<div class='faqTimeValue'>";
				str +=					"<span id='faqTimeValue'>"+list[i].realrealdate+"</span>";
				str +=				"</div>";
				str +=		"</div>";
				str +=		"<div class='chat_content'>"+list[i].reply+"</div>";
		        str +=		"<div class='chat_btn'>";
		        str +=			"<div class='comment_check'><img src='/resources/images/comment.png' width='17' height='14' alt='댓글달기 버튼 이미지'><button type='button' onclick='faqAnswer("+list[i].replyer+")' >댓글달기</a></div>";
		        str +=			"<div class='comment_check'><img src='/resources/images/faq_delete.png' width='17' height='14' alt='댓글삭제 버튼 이미지'><button type='button' onclick='faqDelete("+list[i].qno+")' class='faqDeleteBtn' class='comdel'>삭제하기</a></div>";
				str +=		"</div>";
				str +=	"</div>";
			}
			faqUL.html(str);
			
		})
	}
	
	
		
	$('#faqInsertBtn').on('click', function(e) {
		
		var reply = {
			id : id,
			reply : $('#faqTextarea').val(),
			replyer : replyer
		};
		
		if(replyer == null) {
			alert('로그인이 필요한 서비스입니다');
			location.href = "/member/login";
		}else{
			replyService.add(reply, function(result) {
				$('#faqTextarea').val("");
				count();
				showList(1);
			})
		}
		
	})
	
	function faqDelete(qno) {
		
		var listID = $("#"+qno).text();
		
		console.log(replyer);
		console.log(listID);
		
		if(!replyer){
			alert("로그인후 이용해주세요");
			location.href = "/member/login";
		}
		if(replyer != listID){
			alert("자신이 작성한 댓글만 삭제가능");
			return;
		}
		replyService.remove(qno, function(result) {
			console.log(id);
			count(id);
			showList(1);
		})
	}
	
	function faqAnswer(replyer) {
		
		var listID = replyer;
		var textarea = $("#faqTextarea");
		
		
		
	}
	
	function count() {
		
		$.ajax ({
			type : "get",
			url : "/faq/faqcount",
			data : ({ id:id }),
			success : function(result) {
				$("#faqCount").html(result);
			},error : function(xhr, status, error) {
				console.log("FAQ Counting Error");
			}
		})
		
	console.log("counting......");
	}
		
	
	
		



</script>

<%@ include file="../footer.jsp"%>



























