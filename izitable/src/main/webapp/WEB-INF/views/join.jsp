<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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