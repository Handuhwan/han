<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="detailsHeader.jsp"%>

<a href="/">홈으로</a>
<!-- Contents Start -->
<div class="container" style="width:50%">
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
						<input type="button" class="B-statusBtn" id="detailsBuyList4" onclick="detailsBuyList(4)" value="취소">
					</div>
					<table class="buyTable">
						<colgroup>
							<col width="*">
							<col width="10%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<thead>
							<tr>
								<th>상품명</th>
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
				
				<div role="tabpanel" class="tab-pane" id="sell">
					<div id="details-sell-Btn" style="margin-bottom: 25px;">
						<input type="button" class="S-statusBtn" id="detailsSellList1" onclick="detailsSellList(1)" value="전체">
						<input type="button" class="S-statusBtn" id="detailsSellList2" onclick="detailsSellList(2)" value="진행중">
						<input type="button" class="S-statusBtn" id="detailsSellList3" onclick="detailsSellList(3)" value="완료">
						<input type="button" class="S-statusBtn" id="detailsSellList4" onclick="detailsSellList(4)" value="취소">
					</div>
					<table class="sellTable">
						<colgroup>
							<col width="*">
							<col width="10%">
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
	
})

	function detailsBuyList(no) {
		
		var buyid = '${id}';
		var buyno = no;
		var data = { id:buyid, no:buyno };
		var str = "";
		
		var buystatusIng = '진행중';
		var buystatusEnd = '구매완료';
		var buystatusCancel = '취소';
		
		$.ajax ({
				
			type : 'get',
			url : '/mypage/details/BuyList',
			data : data,
			dataType : 'json',
			success : function(result) {
				
				$('.B-statusBtn').css('color', 'rgb(155, 153, 169)');
				$('.B-statusBtn').css('background', '#e8e8e8');
				
				$('#detailsBuyList'+no).css('color', 'white');
				$('#detailsBuyList'+no).css('background', '#cfd4f4');
				
				for(var i=0, len=result.length || 0; i < len; i++) { 
					
					str	+=	"<tr>";
					str +=		"<th><a href='/product/productview?pno="+result[i].pno+"'>"+result[i].title+"</a></th>";
					str +=		"<th>"+result[i].quantity+" 개</th>";
					str +=		"<th>"+result[i].price.format()+" 원</th>"
					str +=		"<th>"+result[i].realrealdate+"</th>";
								if(result[i].status == buystatusIng) {
					str +=			"<th style='color:#ff8f00'>"+result[i].status+"</th>";
								}else if(result[i].status == buystatusEnd && result[i].review == 0) {
					str +=			"<th style='color:red'>"+result[i].status+"&nbsp;&nbsp;<a onclick='' class='buyListR-Btn'>후기작성</a></th>";
								}else if(result[i].status == buystatusEnd && result[i].review == 1) {
					str +=			"<th style='color:red'>"+result[i].status+"&nbsp;&nbsp;<a onclick='' class='buyListR-Btn' style='color:rgb(155, 153, 169)'>작성완료</a></th>";
								}else{
									"<th style='color:blue'>"+result[i].status+"</th>";
								}
					str +=	"</tr>";
							if(result[i] == '') {
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
		var data = { id:sellid, no:sellno };
		var str2 = "";
		
		var statusIng = '진행중';
		var statusEnd = '판매완료';
		var statusCancel = '취소';
		
		$.ajax ({
			
			type : 'get',
			url : '/mypage/details/sellList',
			data : data,
			dataType : 'json',
			success : function(result) {
				
				$('.S-statusBtn').css('color', 'rgb(155, 153, 169)');
				$('.S-statusBtn').css('background', '#e8e8e8');
				
				$('#detailsSellList'+no).css('color', 'white');
				$('#detailsSellList'+no).css('background', '#cfd4f4');
				
				for(var i=0, len=result.length || 0; i < len; i++) {
					
					str2	+=	"<tr>";
					str2	+=		"<th><a href='/product/productview?pno="+result[i].pno+"'>"+result[i].title+"</a></th>";
					str2	+=		"<th>"+result[i].quantity+" 개</th>";
					str2	+=		"<th>"+result[i].price.format()+" 원</th>";
					str2	+=		"<th>"+result[i].realrealdate+"</th>";
								if(result[i].status == statusIng) {
					str2	+=		"<th style='color:#ff8f00'>"+result[i].status+"</th>";
								}else if(result[i].status == statusEnd) {
					str2	+=		"<th style='color:red'>"+result[i].status+"</th>";
								}else if(result[i].status == statusCancel) {
					str2	+=		"<th style='color:blue'>"+result[i].status+"</th>";
								}else {
					str2	+=		"<th>"+result[i].status+"</th>";
								}
					str2	+=	"</tr>";
							if(result[i] == '') {
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


</script>


























