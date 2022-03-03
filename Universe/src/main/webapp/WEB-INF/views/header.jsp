<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Universe</title>
<link rel="icon" type="image/png" href="../resources/images/favicon.ico"/>

<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/summernote.min.css" rel="stylesheet">
<link href="/resources/css/common.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/sub.css" rel="stylesheet">
<link href="/resources/css/member.css" rel="stylesheet">
<link href="/resources/css/mypage.css" rel="stylesheet">
<link href="/resources/css/product.css" rel="stylesheet">
<link href="/resources/css/chat.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">

<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<!-- font-family: 'Noto Sans KR', sans-serif; < css에 적용할 폰트 복붙 -->
<!-- /구글 폰트 -->

<!-- <link href="/resources/css/" rel="stylesheet"> 여분-->
<!-- <link href="/resources/css/" rel="stylesheet"> 여분-->
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/summernote.min.js"></script>
<script src="/resources/js/main.js"></script>
<script src="/resources/js/member.js"></script>
<script src="/resources/js/chat.js"></script>
<script src="/resources/js/pay.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="954610008697-7i20sge4p4mhm6jh1sksaqkstrlkn7q2.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<script src="/resources/js/product.js"></script>
<script src="/resources/js/mypage.js"></script>
<script src="/resources/js/faqReply.js"></script>

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d7cf7c45cb24235fcf556bb5c6d9655&libraries=services"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>

<script type="text/javascript"> 
	

</script>
<!-- 쿠키 저장 스크립트 -->


<!-- main header -->
<header>
	<span id="header12"></span>

</header>
<div class="main_header_nav">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="pull-left"  style="margin-left:50px;">
				<sec:authorize access="isAuthenticated()">
				<span style="font-size:13px;  padding-right:10px;"> <sec:authentication property="principal.member.name"/> 님 환영합니다!</span>	
				</sec:authorize>
				</div> <!-- left end -->
				<div class="pull-right" style="margin-right:15px;">
				<sec:authorize access="isAnonymous()">
				<span style="font-size:13px; font-family: 'Noto Sans KR', sans-serif;"><a href="/member/login" style="color:rgb(103 103 103);">로그인</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="/member/join" style="color:rgb(103 103 103);">회원가입</a></span>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<form id="frm" name="header_logout" method="post" >
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					<span style="font-size:13px; font-family: 'Noto Sans KR', sans-serif;">
					<button type="button" onclick="header_logoutss()" style="color:rgb(103 103 103);">로그아웃</button>
					</span>
					</form>
				</sec:authorize>
				</div><!-- right end -->
			</div> <!-- 맨위 -->
		</div>
	</div>
</div> <!-- main_header_nav -->

	<div style="position:sticky;top:0px;z-index: 999;bottom:50px;background:#fff; border-bottom:1px solid #cfd4f4; height:120px;">
		<div class="pull-right">
			<div class="header_recent" id="header_recent"> <!-- 최근본 게시물 -->
				<p style="margin-bottom:15px; padding-top:5px; padding-bottom:5px;">최근본 상품</p>
			</div> <!-- 최근본 게시물 end -->
			<div style="margin-top:20px;" class="header_recent" >
				<a class="b_top" style="color:#586fff; font-weight:600" id="top_btn">　　　TOP　　　</a>
			</div> <!--  맨위로 가기 버튼 -->
		</div> <!-- pull right end -->
		
		<div class="container" style="height:0px;">
			<div class="col-md-12 col-sm-12" style="margin-top:20px;">
				<div class="pull-left">
					<div class="serch-box" > <!-- serch box -->
						<a href="/"><img alt="" src="/resources/images/mark.png" style="width:200px; height:100px; margin-right:80px;"></a>
						<form style="display:inline" id ="searchForm" method="get" action="/" onsubmit="searchEvt()">
							<input type="text" name="keyword" class="search_word" placeholder="#상품명 #지역명 #상점명" >
							<div style="display:none">
								<select name="type" class="select" style="width:65px;">
									<option value="LCT">제목</option>
								</select>
							</div>
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
						</form>
					</div>
				</div>
				<div class="pull-right" style="margin-top:35px;">
					<div class="dropdown">
 						<button class="dropbtn" style=""><img alt="" src="/resources/images/hhmoney.png">&nbsp;&nbsp;<span>알림</span><span class="caret"></span></button>
			  			
					</div>&nbsp;&nbsp;

					<div class="dropdown">


						<sec:authorize access="isAuthenticated()">
 						<button class="dropbtn" onclick="location.href='/mypage/mypage?id=<sec:authentication property="principal.member.id"/>'" style="margin-left:0px;"><img alt="" src="/resources/images/main-user.png">&nbsp;&nbsp;MY PAGE<span class="caret"></span></button>
			 			</sec:authorize>
			 			<sec:authorize access="isAnonymous()">
 						<button class="dropbtn" style="margin-left:0px;"><img alt="" src="/resources/images/main-user.png">&nbsp;&nbsp;MY PAGE<span class="caret"></span></button>
			 			</sec:authorize>

					</div>&nbsp;&nbsp;
					
					
					<a href="" class="dropbtn" href="/mypage/mypage"><img alt="" src="/resources/images/main-love.png">&nbsp;&nbsp;찜</a>
					
					
				</div> <!-- pull right end -->


			

			
			</div> <!-- col -md -12 end -->
			</div> <!-- container end -->
			</div> <!-- 컨테이너 상위 박스 -->
			
			
			
		
		 <script>


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 1000);
	
}


function kakaoLogout() {
	
      sessionStorage.clear();
     
        }
        
function signOut() {
	
	

	var form= $("#frm")
	frm.action="/admin/adminLogout"
		frm.submit();
	
	var win = window.open("https://accounts.google.com/Logout");
}
</script>
		
	
		
