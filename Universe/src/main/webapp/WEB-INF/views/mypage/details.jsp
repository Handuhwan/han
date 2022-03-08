<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="detailsHeader.jsp"%>

<a href="/">홈으로</a>
<!-- Contents Start -->
<div class="container" style="width: 50%">
	<div class="dTable">
		<h2>거래 내역</h2>
		<div role="tabpanel">

			<!-- Nav tabs -->
			<ul class="nav nav-tabs detailsTab" role="tablist">
				<li role="presentation" class="active selected2"><a href="#buy" aria-controls="home" role="tab" data-toggle="tab">구매</a></li>
				<li role="presentation"><a href="#sell" aria-controls="profile" role="tab" data-toggle="tab">판매</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content detailsContents">
				<div role="tabpanel" class="tab-pane active" id="buy">
					<div id="details-buy-Btn" style="margin-bottom: 25px;">
						<input type="button" class="B-statusBtn" id="detailsBuyList1" onclick="detailsBuyList(1)" value="전체">
						<input type="button" class="B-statusBtn" id="detailsBuyList2" onclick="detailsBuyList(2)" value="진행중">
						<input type="button" class="B-statusBtn" id="detailsBuyList3" onclick="detailsBuyList(3)" value="완료">
					</div>
					<table class="buyTable">
						<colgroup>
							<col width="20%">
							<col width="15%">
							<col width="15%">
							<col width="15%">
							<col width="15%">
							<col width="*">
						</colgroup>
						<thead>
							<tr>
								<th>상품명</th>
								<th>판매자</th>
								<th>수량</th>
								<th>가격</th>
								<th>구매날짜</th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody id="buyTbody">

						</tbody>
					</table>
				</div>
				<div class='modal fade' id='modal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>
					<div class='modal-dialog'>
						<div class='modal-content'>
							<div class='modal-header' style="overflow:hidden">
								<button type='button' class='close' data-dismiss='modal' aria-label='Close'>
									<span aria-hidden='true'>&times;</span>
								</button>
								<div class='modal-title' id='myModalLabel' style="float:left">
									<img id="review_Img1" class="review_Img1"  style="width:45px;height:50px;"> <!-- 상품사진 경로 정해주기 img1 -->
									<span id='pTitle' class="pTitle" style='font-weight: bold;'></span>
								</div>
							</div>
							<div class='modal-body'>
								<h1 style='font-size: revert; font-weight: bold;'>거래는 어떠셨나요?</h1>
									<div class='wrap'>
							            <input type='hidden' name='rate' id='rate' value='0'/>
							            <input type='hidden' name='seller' id='seller' />
							            <input type='hidden' name='buyer' id='buyer' />
							            <input type='hidden' name='pno' id='pno' />
							            <input type='hidden' name='nickname' id='nickname' />
							            <input type='hidden' name='title' id='review_title' />
							            <input type='hidden' name='img1' id='review_img1' />
							            <p class='title_star' style='color: rgb(156, 156, 156)'>별점과 후기를 남겨주세요</p>
							            <div class='review_rating rating_point'>
						                	<div class='warning_msg'>별점을 선택해주세요</div>
								                <div class='rating' id='rating'>
							                    <div class='ratefill'></div>
 							                    	<input type='checkbox' name='rating' id='rating1' value='1' class='rate_radio' title='1점'>
                						            		<label for='rating1' class="label_star"><span style="display:none">1</span></label>
                						                <input type='checkbox' name='rating' id='rating2' value='2' class='rate_radio' title='2점'>
                						                	<label for='rating2' class="label_star"><span style="display:none">2</span></label>
                										<input type='checkbox' name='rating' id='rating3' value='3' class='rate_radio' title='3점'>
              							                    <label for='rating3' class="label_star"><span style="display:none">3</span></label>
               										<input type='checkbox' name='rating' id='rating4' value='4' class='rate_radio' title='4점'>
              						                    	<label for='rating4' class="label_star"><span style="display:none">4</span></label>
               										<input type='checkbox' name='rating' id='rating5' value='5' class='rate_radio' title='5점'>
            						                    	<label for='rating5' class="label_star"><span style="display:none">5</span></label>
           						                </div>
   						          		</div>
           						            <div class='review_contents'>
          					                	<div class='warning_msg'>10자 이상 작성해주세요</div>
           						                	<textarea rows='10' class='review_textarea' id="review_textarea" style="width: 100%; resize: none;"></textarea>
         						                	<div class='reviewContentCheckBox'>
           											<span class='reviewContentCheck'>0자</span>
         												<span class='reviewContentCheckTotal'>/500자</span>
           										</div>
         							            </div>
           						            <div class='cmd'>
           						                <input type='button' onclick="ReviewInsert()" value='등록'>
       						                	<input type='button' data-dismiss='modal' value='취소'>
           						            </div>
          								</div>
       							</div>
       						</div>
      					</div>
          			</div>

				<div role="tabpanel" class="tab-pane" id="sell">
					<div id="details-sell-Btn" style="margin-bottom: 25px;">
						<input type="button" class="S-statusBtn" id="detailsSellList1" onclick="detailsSellList(1)" value="전체">
						<input type="button" class="S-statusBtn" id="detailsSellList2" onclick="detailsSellList(2)" value="진행중">
						<input type="button" class="S-statusBtn" id="detailsSellList3" onclick="detailsSellList(3)" value="완료">
					</div>
					<table class="sellTable">
						<colgroup>
							<col width="*">
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<thead>
							<tr>
								<th>상품명</th>
								<th>수량</th>
								<th>가격</th>
								<th>판매날짜</th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody id="sellTbody">

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Contents End -->

<script>

	$(function() {

		var sellid = '${id}';
		console.log(sellid);

		detailsBuyList(1);
		detailsSellList(1);
		
		console.log("Details ID : "+sellid);

	})
	
	$('.review_textarea').keyup(function(e) {

	    	let Reviewcontent = $(this).val();
	    	
	    	if(Reviewcontent.length == 0 || Reviewcontent == '') {
	    		$('.reviewContentCheck').text('0자');
	    	}else {
	    		$('.reviewContentCheck').text(Reviewcontent.length + '자');
	    	}
	    	
	    	if(Reviewcontent.length > 500) {
	    		$(this).val($(this).val().substring(0, 500));
	    		alert('글자수는 500자까지 입력 가능합니다.'); 
	    	}; 
	    	
	    	var str = $(this).val();
	    	var str_arr = str.split("\n");
	    	var row = str_arr.length;

	    	if(row > 10) {
	    		alert("10줄 이상 입력할 수 없습니다.")
	    	
	    		var lastChar = str.slice(0, -1);
	    	
	    		$("this").val(lastChar)
	    	};
	  });

	function detailsBuyList(no) {

		var buyid = '${id}';
		var buyno = no;
		var data = {
			id : buyid,
			no : buyno
		};
		var str = "";
		var sttr = "";
		
		var buystatusIng = '진행중';
		var buystatusEnd = '구매완료';

		$.ajax({

			type : 'get',
			url : '/mypage/details/BuyList',
			data : data,
			dataType : 'json',
			success : function(result) {

				$('.B-statusBtn').css('color', 'rgb(155, 153, 169)');
				$('.B-statusBtn').css('background', '#e8e8e8');

				$('#detailsBuyList' + no).css('color', 'white');
				$('#detailsBuyList' + no).css('background', '#cfd4f4');

				for (var i = 0, len = result.length || 0; i < len; i++) {
					
					str +=	"<tr id='"+result[i].pno+"' class='"+result[i].img1+"'>";
					str +=		"<th><a href='/product/productview?pno="+ result[i].pno + "'>" + result[i].title + "</a></th>";
					str +=		"<th><a href='/mypage/mypage?id="+ result[i].seller + "'>" + result[i].seller + "</a></th>";
					str +=		"<th>" + result[i].quantity + " 개</th>";
					str +=		"<th>" + result[i].price.format() + " 원</th>"
					str +=		"<th>" + result[i].realrealdate + "</th>";
								if (result[i].status == buystatusIng) {
					str +=			"<th style='color:#ff8f00'>"+ result[i].status + "</th>";
								} else if (result[i].status == buystatusEnd && result[i].review == 0) {
					str +=			"<th style='color:red'>"+ result[i].status + "&nbsp;&nbsp;<button type='button' onclick='modalInfo("+result[i].pno+")' class='btn btn-primary btn-lg buyListR-Btn' data-toggle='modal' data-target='#modal'>후기작성</button></th>";                       
								} else if (result[i].status == buystatusEnd	&& result[i].review == 1) {
					str +=			"<th style='color:red'>"+ result[i].status	+ "&nbsp;&nbsp;<a onclick='' class='buyListR-Btn2' style='color:rgb(155, 153, 169)'>작성완료</a></th>";
								}
					str +=	"</tr>";
							if (result[i] == '') {
					str +=	"<tr>";
					str +=		"<div class='none_details'>";
					str +=			"구매 내역이 없습니다.";
					str +=		"</div>";
					str +=	"</tr>";
							}
					

				}//for
				$('#buyTbody').html(str);
			}//success
		})//ajax

		console.log("detailsBuyList is operated......");
	}

	function detailsSellList(no) {

		var sellid = '${id}';
		var sellno = no;
		var data = {
			id : sellid,
			no : sellno
		};
		var str2 = "";

		var statusIng = '진행중';
		var statusEnd = '판매완료';
		
		$.ajax({

			type : 'get',
			url : '/mypage/details/sellList',
			data : data,
			dataType : 'json',
			success : function(result) {
				//console.log(result[0].status)
				$('.S-statusBtn').css('color', 'rgb(155, 153, 169)');
				$('.S-statusBtn').css('background', '#e8e8e8');

				$('#detailsSellList' + no).css('color', 'white');
				$('#detailsSellList' + no).css('background', '#cfd4f4');

				for (var i = 0, len = result.length || 0; i < len; i++) {

					str2 +=	"<tr>";
					str2 +=		"<th><a href='/product/productview?pno="+ result[i].pno + "'>" + result[i].title + "</a></th>";
					str2 +=		"<th>" + result[i].quantity + " 개</th>";
					str2 +=		"<th>" + result[i].price.format() + " 원</th>";
					str2 +=		"<th>" + result[i].realrealdate + "</th>";
								if (result[i].status == statusIng) {
					str2 +=			"<th style='color:#ff8f00'>" + result[i].status + "</th>";
								} else if (result[i].status == statusEnd) {
					str2 +=			"<th style='color:red'>" + result[i].status + "</th>";
								} else {
					str2 +=			"<th>" + result[i].status + "</th>";
								}
					str2 +=	"</tr>";
								if (result[i] == '') {
					str2 +=	"<tr>"
					str2 +=		"<div class='none_details'>";
					str2 +=			"판매 내역이 없습니다.";
					str2 +=		"</div>";
					str2 +=	"<tr>";
								}

				}//for
				$('#sellTbody').html(str2);
			}//success

		})//ajax

		console.log("detailsSellList is operated......");
	}//detailsSellList
		
	function modalInfo(pno) {
		
		var pno = pno;
		var buyer = '${id}';
		var seller = $("#"+pno+"").find("th:nth-child(2) a").text();
		
		<sec:authorize access = "isAuthenticated()">
			'<sec:authentication property="principal.member.nickname" var="nickname" />';
		</sec:authorize>
			
		var title = $("#"+pno+"").find("th:nth-child(1) a").text();
		var img1 = $("#"+pno+"").attr("class")
		
		console.log("pno : "+pno);
		console.log("buyer : "+buyer);
		console.log("seller : "+seller);
		console.log("nickname : "+"${nickname}");
		console.log("title : "+title);
		console.log("img1 : "+img1);
		var readimg ="/Pupload/"+img1; 
		
		
		$('#pTitle').text(title);
		$('#review_Img1').attr("src",readimg);
		$('#review_Img1').val(img1);
		$('#pno').val(pno);
		$('#title').val(title);
        $('#seller').val(seller);
        $('#buyer').val(buyer);
        $('#nickname').val('${nickname}');
        $('#review_title').val(title);
        
        console.log($('#review_Img1').val());
        console.log($('#review_img1').val());
        console.log($('#pno').val());
        console.log($('#seller').val());
        console.log($('#buyer').val());
        console.log($('#nickname').val());
        console.log($('#review_title').val());
        
	}
	
	
</script>

<script>

	function ReviewInsert() {
		
		if(rating.rate == 0){
	        rating.showMessage('rate');
	        return false;
	    }else{
	    	var grade = $("#rate").val(rating.rate);
	    	console.log("별점 : "+grade.val());
	    	
	    }
	    //리뷰 10자 미만이면 메시지 표시
	    if(document.querySelector('.review_textarea').value.length < 10){
	        rating.showMessage('review');
	        return false;
	    }else{
	    	var content = $('#review_textarea').val();
	    	console.log("리뷰내용 : "+content);
	    }
	    //폼 서밋
		//실제로는 서버에 폼을 전송하고 완료 메시지가 표시되지만 저장된 것으로 간주하고 폼을 초기화 함.
        var pno = $('#pno').val();
        var id = $('#seller').val();
        var nickname = $('#nickname').val();
        var title = $('#review_title').val();
        var img1 = $('#review_Img1').val();
        console.log("상품번호 : "+pno);
        console.log("판매자 : "+id);
        console.log("닉네임 : "+nickname);
        console.log("상품이름 : "+title);
        console.log("상품사진 : "+img1);
        
        var data = {
        	pno:pno,
        	id:id,
        	nickname:nickname,
        	title:title,
        	grade:grade,
        	content:content,
        	img1:img1
        }
        
        $.ajax ({
        	type : 'get',
        	url : '/mypage/details/insertRV',
        	data : {
        		
        		pno:pno,
            	id:id,
            	nickname:nickname,
            	title:title,
            	grade:grade.val(),
            	content:content,
            	img1:img1
           
            	
            },
        	dataType : 'json',
        	success : function(result){
        	
        		if(result == 1){
        			alert("리뷰가 정상적으로 등록되었습니다");
	           		rating.setRate(0);
	           		document.querySelector('.review_textarea').value = '';
	           		$('#modal').hide();
	           		detailsBuyList(3);
        		}
	       			
        	},error:function(){
        		alert("error")
        	}
        })
		
		
	}

		document.addEventListener('DOMContentLoaded', function(){
		//별점선택 이벤트 리스너
		document.querySelector('.rating').addEventListener('click',function(e){
		    let elem = e.target;
		    if(elem.classList.contains('rate_radio')){
		        rating.setRate(parseInt(elem.value));
		    }
		})
	            
    });


	//별점 마킹 모듈 프로토타입으로 생성
	function Rating(){};
	Rating.prototype.rate = 0;
	Rating.prototype.setRate = function(newrate){
	    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
	    this.rate = newrate;
	    document.querySelector('.ratefill').style.width = parseInt(newrate * 60) + 'px';
	    let items = document.querySelectorAll('.rate_radio');
	    items.forEach(function(item, idx){
	        if(idx < newrate){
	            item.checked = true;
	        }else{
	            item.checked = false;
	        }
	    });
	}
	Rating.prototype.showMessage = function(type){//경고메시지 표시
	    switch(type){
	        case 'rate':
	            //안내메시지 표시
	            document.querySelector('.review_rating .warning_msg').style.display = 'block';
	            //지정된 시간 후 안내 메시지 감춤
	            setTimeout(function(){
	                document.querySelector('.review_rating .warning_msg').style.display = 'none';
	            },1000);            
	            break;
	        case 'review':
	            //안내메시지 표시
	            document.querySelector('.review_contents .warning_msg').style.display = 'block';
	            //지정된 시간 후 안내 메시지 감춤
	            setTimeout(function(){
	                document.querySelector('.review_contents .warning_msg').style.display = 'none';
	            },1000);    
	            break;
	    }
	}

	let rating = new Rating();//별점 인스턴스 생성	

</script>






















