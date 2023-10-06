<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<!-- 문교수님 CSS -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"> -->

<!-- BBS Style -->
<link href="/asset/BBSTMP_0000000000001/style.css" rel="stylesheet" />
<!-- 공통 Style -->
<link href="/asset/LYTTMP_0000000000000/style.css" rel="stylesheet" />
<!-- 문교수님 CSS -->

<meta charset="UTF-8">

<jsp:include page="nav.jsp"></jsp:include>

<title>IZITABLE - 이지테이블 : 회원가입</title>
</head>
<body>

	<div class="container">
		<div>
			<h3>회원 가입</h3>
		</div>
		<!-- <form method="post" action="add"> --> <!-- jsp는 페이지 단위, 어쩔 수 없이 form tag를 받아줄 페이지 필요 -->
		<!-- <form method="post" name="signup_form"> --> <!-- jsp는 페이지 단위, 어쩔 수 없이 form tag를 받아줄 페이지 필요 -->
		<form method="post">
			<div>
			
				<div>
					<label>이메일</label>
					<input type="text" name="userEmail">
				</div>
				
				<div>
					<label>휴대폰 번호</label>
					<input type="text" name="userPhone">
				</div>
				
				<div>
					<label>휴대폰 번호 인증</label>
					<input type="hidden" name="userPhoneCert">
				</div>
			
				<div>
					<label>비밀번호</label>
					<input type="password" name="userPwd">
					<button type="button" class="password_check" data-msg="Hello1" data-for="passwd">확인</button>
				</div>
				
				<div>
					<label>비밀번호 확인</label>
					<input type="password" name="passwd_confirm">
					<button type="button" class="password_check" data-msg="Hello2" data-for="passwd_confirm">확인</button>
				</div>
	
				<div>
					<button type="submit" id="join">등록</button>
					<a href="${pageContext.request.contextPath}"><button type="button">처음으로</button></a>
				</div>
			</div>
		</form>
	</div>

</body>
</html>