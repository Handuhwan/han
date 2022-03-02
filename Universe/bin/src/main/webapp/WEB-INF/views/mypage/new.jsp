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
								기본정보<span>*필수항목</span><button onclick="productinsertcheck()">zz</button>
							</h2>
							<form name="productInsert" action="/product/productinsert" enctype="multipart/form-data" method="post" onsubmit="return productinsertcheck()">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							
							<ul class="sc-eetwQk pPWss">
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc icTXTK">
										상품이미지<small id="imglength">(0/3)</small>
									</div>
									<div class="sc-fdJbru lhSEWN">
										<ul class="sc-cClmTo dHLNTh" id="new_img">
											<li class="sc-cZLAbK dkAkSi" id="imgblock">이미지 등록 
												<div id="allblock0" class="allblock0">
												<input type="file" class="inp-img" accept="image/jpg, image/jpeg, image/png" name="imgs" >
												</div>
												<div id="allblock1" class="allblock1">
												<input type="file" class="inp-img" accept="image/jpg, image/jpeg, image/png" name="imgs" >
												</div>
												<div id="allblock2" class="allblock2">
												<input type="file" class="inp-img" accept="image/jpg, image/jpeg, image/png" name="imgs" >
												</div>
											</li>
										</ul>
										
										<div id="preview" class="preview">
											<div id="imgviewbox0">											
											</div>
											
											<div id="imgviewbox1">
											</div>
											
											<div id="imgviewbox2">
											</div>
										</div>
											
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
												<input type="text" placeholder="상품 제목을 입력해주세요." id="ptitle" class="sc-jTNJqp jcrNYi" name="title" value="" style="width:50%">
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
														<select name="kind"  id="pkind">
															<option value="">선택</option>
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
										내 동네
									</div>
									<div class="sc-fdJbru lhSEWN" style="padding-top:7px;">								
										
										<span>지역명 : </span>
										<input name="location" id="location" readonly style="width:300px;height: 4rem;" class="sc-iUpOdG gqalHj" value="">
										<span>도로명 : </span>
										<input name="load" id="load" readonly style="width:300px;height: 4rem;" class="sc-iUpOdG gqalHj" value="">
										<button type="button" onclick="readaddress()" class="sc-bYwvMP bHlvJI">내 동네 검색</button>
										
									</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc tUmmy">상태</div>
										<div class="sc-fdJbru lhSEWN">
											<div class="sc-csSMhA dVmQdR">
												<label for="중고상품" class="sc-bscRGj jObBkF">
													<input id="" name="condition" type="radio" value="중고상품" checked="checked">중고상품
												</label>
												<label for="새상품" class="sc-bscRGj hsSwto">
													<input id="" name="condition" type="radio" value="새상품">새상품
												</label>
											</div>
										</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc tUmmy">교환</div>
										<div class="sc-fdJbru lhSEWN">
											<div class="sc-csSMhA dVmQdR">
												<label for="교환불가" class="sc-bscRGj jObBkF">
													<input id="교환불가" name="exchange" type="radio" value="교환불가" checked="checked">교환불가
												</label>
												<label for="교환가능" class="sc-bscRGj hsSwto">
													<input id="교환가능" name="exchange" type="radio" value="교환가능">교환가능
												</label>
											</div>
										</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc fFLTCi">가격</div>
										<div class="sc-fdJbru lhSEWN">
											<div class="sc-kGeDwz ektOSj" style="padding-top:10px">
												<input onchange="price12(this)" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" type="text" id="pprice" name="price" placeholder="숫자만 입력해주세요." class="sc-hgeeVt cOoyPc" value="" style="width:30%">&nbsp;원
												
											</div>
										</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc hGxtuw">
										설명
									</div>
									<div class="sc-fdJbru lhSEWN">
										<textarea id="pcontent" name="content" placeholder="상품 설명을 입력해주세요. (10글자 이상)" rows="6" class="sc-kOnlKp jOtnbk"></textarea>
									</div>
								</li>
								<li class="sc-cIwbeI jRHmma">
									<div class="sc-dUcZlc tUmmy">수량</div>
									<div class="sc-fdJbru lhSEWN">
										<div class="sc-cBOTKl iLsYdV">
											<input type="text" name="quantity" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="pquantity" class="sc-hkHFWD wUvmE" value="1" style="width:20%">&nbsp;개
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

var cnt = 0;



function readInputFile(input) {

	
    if(input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
        
            $('#imgviewbox'+cnt).append("<img src="+e.target.result +"><button onclick='delImg(this)'>x</button>");
            $("#allblock"+cnt).css("display","none")     
            cnt++;
            if($("#allblock"+cnt).find("input").val() == ''){   	
            $("#allblock"+cnt).css("display","block")
             
            }
            $("#imglength").html("("+$("#preview img").length+"/3)")
        }
        reader.readAsDataURL(input.files[0]);
       
    }
}
 
$(".inp-img").on('change', function(){
	
	readInputFile(this);
});

function readaddress(){
	
	navigator.geolocation.getCurrentPosition(
			function(position) {
			var lat = position.coords.latitude
			var lng = position.coords.longitude
			getAddr(lat,lng)
			}, 
			);
	
}

function getAddr(lat,lng){
    let geocoder = new kakao.maps.services.Geocoder();

    let coord = new kakao.maps.LatLng(lat, lng);
    let callback = function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
        	 console.log(result);
        	var ori_add =result[0].address.address_name;
        	var ori_add1 =result[0].address.region_1depth_name;
        	var ori_add2 =result[0].address.region_2depth_name;
        	var ori_add3 =result[0].address.region_3depth_name;
        	  $("#location").val(ori_add1+" "+ori_add2+" "+ori_add3);
        	var road_add=result[0].road_address.address_name;
        	 $("#load").val(road_add)
            
           
          
        }
    }
    geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
}

function delImg(img){
	
	
	var papa = $(img).parent('div');
	var indexnum = $(img).parent('div').index();
	cnt = indexnum;
	
	$("#allblock"+indexnum).css("display","block");
	$("#allblock"+indexnum).html()
  
    papa.empty();
	$("#imglength").html("("+$("#preview img").length+"/3)")

}
</script>


<script>

	
function price(){
	alert("");
}

</script>

<%@ include file="../footer.jsp"%>



























