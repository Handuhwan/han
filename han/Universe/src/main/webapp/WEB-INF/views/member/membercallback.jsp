<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<p>callback</p>
<script type="text/javascript">
    var naver_id_login = new naver_id_login("Client_ID", "http://localhost:8080/login/oauth2/code/naver");
    // 접근 토큰 값 출력
    alert(naver_id_login.oauthParams.access_token);
    // 네이버 사용자 프로필 조회
    naver_id_login.get_naver_userprofile("naverSignInCallback()");

    // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
    function naverSignInCallback() {
        alert(naver_id_login.getProfileData('email'));
        alert(naver_id_login.getProfileData('nickname'));
        alert(naver_id_login.getProfileData('age'));
        alert(naver_id_login.getProfileData('id'));
        alert(naver_id_login.getProfileData('birthday'));
        alert(naver_id_login.getProfileData('gender'));
        alert(naver_id_login.getProfileData('mobile'));
    }

</script>
</html>