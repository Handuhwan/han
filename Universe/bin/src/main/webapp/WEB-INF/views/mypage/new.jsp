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
						<div class="sc-kOCNXg gYlEW"><a href="" target="_blank" rel="noopener noreferrer" class="sc-iVOTot jtVVsU">구매 / 판매 내역</a></div>
					</nav>
				</div>
				<div class="sc-hlELIx mCnrk">
					<main class="sc-erOsFi erTKwf">
						<section class="sc-eGXxtx dAQnYb">
							<h2>
								기본정보<span>*필수항목</span>
							</h2>
							<form name="productInsert" action="" method="post" onsubmit="">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<ul class="sc-eetwQk pPWss">
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc icTXTK">
										상품이미지<small>(0/3)</small>
									</div>
									<div class="sc-fdJbru lhSEWN">
										<ul class="sc-cClmTo dHLNTh" id="new_img">
											<li class="sc-cZLAbK dkAkSi" >이미지 등록 
												<input type="file" class="inp-img" accept="image/jpg, image/jpeg, image/png" multiple="multiple">
												
											</li>
										</ul>
										
										<div id="preview"></div>
											
										<div class="sc-kOCNXg ksQfBV">
											<b>* 상품 이미지는 640x640에 최적화 되어 있습니다.</b>
											<br>- 이미지는 상품등록 시 정사각형으로 짤려서 등록됩니다.
											<br>- 이미지를 클릭 할 경우 원본이미지를 확인할 수 있습니다.
											<br>- 이미지를 클릭 후 이동하여 등록순서를 변경할 수 있습니다. 
											<br>- 큰 이미지일경우 이미지가 깨지는 경우가 발생할 수 있습니다. 
											<br>최대 지원 사이즈인 640 X 640으로 리사이즈 해서 올려주세요.(개당 이미지 최대 10M)
										</div>
										<div class="sc-jwKygS fuybda">
											<div class="sc-eQGPmX hBBOjs">
												<button type="button" class="sc-dAOnuy gCcDDI">
													<img src="/resources/images/X.png" width="34" height="32" alt="닫기 버튼 아이콘">
												</button>
												<div class="sc-cSYcjD fVHGdp">
													<div class="sc-gjAXCV foQbbV">상품이미지</div>
													<div class="sc-dOkuiw cuchOe"></div>
													<div class="sc-hZeNU bmfKXo"></div>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc fFLTCi">
										제목
									</div>
									<div class="sc-fdJbru lhSEWN">
										<div class="sc-hmyDHa lmzEGH">
											<div class="sc-dYcyhn gknpN">
												<input type="text" placeholder="상품 제목을 입력해주세요." class="sc-jTNJqp jcrNYi" value="" style="width:50%">
											</div>
										</div>
									</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc jERTnV">
										카테고리
									</div>
									<div class="sc-fdJbru lhSEWN">
										<div class="sc-fxgLge eZXISU">
											<ul class="sc-gtXRHa blTxHK">
												<li class="sc-fyjYeE jIOHwG">
													<label for="category"></label>
														<select>
															<option value="여성의류">여성의류</option>
															<option value="남성의류">남성의류</option>
															<option value="신발">신발</option>
															<option value="가방">가방</option>
															<option value="시계/쥬얼리">시계/쥬얼리</option>
															<option value="패션악세사리">패션악세사리</option>
															<option value="디지털/가전">디지털/가전</option>
															<option value="스포츠/레저">스포츠/레저</option>
															<option value="차량/오토바이">차량/오토바이</option>
															<option value="스타굿즈">스타굿즈</option>
															<option value="키덜트">키덜트</option>
															<option value="예술/희귀/수집품">예술/희귀/수집품</option>
															<option value="음반/악기">음반 / 악기</option>
															<option value="도서/티켓/문구">도서/티켓/문구</option>
															<option value="뷰티/미용">뷰티/미용</option>
															<option value="가구/인테리어">가구/인테리어</option>
															<option value="생활/가공식품">생활/가공식품</option>
															<option value="기타">기타</option>
															<option value="나눔">나눔</option>
														</select>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc fFLTCi">
										거래지역
									</div>
									<div class="sc-fdJbru lhSEWN">
										<div class="sc-MKjYC gSSZou" style="padding-bottom: 15px;">
											<button type="button" class="sc-bYwvMP bHlvJI">내 위치</button>
											<button type="button" class="sc-bYwvMP bHlvJI">최근 지역</button>
											<button type="button" class="sc-bYwvMP bHlvJI">주소 검색</button>
											<button type="button" class="sc-bYwvMP bHlvJI">지역설정안함</button>
										</div>
										<input name="location" readonly style="height: 4rem;" placeholder="선호 거래 지역을 검색해주세요." class="sc-iUpOdG gqalHj" value="지역설정안함">
									</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc tUmmy">상태</div>
										<div class="sc-fdJbru lhSEWN">
											<div class="sc-csSMhA dVmQdR">
												<label for="중고상품" class="sc-bscRGj jObBkF">
													<input id="중고상품" name="status" type="radio" value="1" checked="checked">중고상품
												</label>
												<label for="새상품" class="sc-bscRGj hsSwto">
													<input id="새상품" name="status" type="radio" value="0">새상품
												</label>
											</div>
										</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc tUmmy">교환</div>
										<div class="sc-fdJbru lhSEWN">
											<div class="sc-csSMhA dVmQdR">
												<label for="교환불가" class="sc-bscRGj jObBkF">
													<input id="교환불가" name="exchange" type="radio" value="0" checked="checked">교환불가
												</label>
												<label for="교환가능" class="sc-bscRGj hsSwto">
													<input id="교환가능" name="exchange" type="radio" value="1">교환가능
												</label>
											</div>
										</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc fFLTCi">가격</div>
										<div class="sc-fdJbru lhSEWN">
											<div class="sc-kGeDwz ektOSj" style="padding-top:10px">
												<input type="text" placeholder="숫자만 입력해주세요." class="sc-hgeeVt cOoyPc" value="" style="width:30%">&nbsp;원
											</div>
										</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc hGxtuw">
										설명
									</div>
									<div class="sc-fdJbru lhSEWN">
										<textarea placeholder="상품 설명을 입력해주세요. (10글자 이상)" rows="6" class="sc-kOnlKp jOtnbk"></textarea>
									</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc tUmmy">수량</div>
									<div class="sc-fdJbru lhSEWN">
										<div class="sc-cBOTKl iLsYdV">
											<input type="text" class="sc-hkHFWD wUvmE" value="1" style="width:20%">&nbsp;개
										</div>
									</div>
								</li>
								<li>
									<div class="sc-goFBvh iRIYrs">
										<button type="submit" class="sc-feWbDf gEWDoq"></button>
									</div>
								</li>
							</ul>
							</form>
						</section>
					</main>
				</div>
			</div>
		</div>
	</div>
</div>
		
<script>
function readInputFile(input) {
    if(input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#preview').append("<img src="+ e.target.result +">");
        }
        reader.readAsDataURL(input.files[0]);
        console.log(input.files[0]);
    }
}
 
$(".inp-img").on('change', function(){
    readInputFile(this);
});



</script>


<%@ include file="../footer.jsp"%>



























