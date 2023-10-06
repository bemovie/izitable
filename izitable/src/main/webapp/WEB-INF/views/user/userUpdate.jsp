<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>

<jsp:include page="../nav.jsp"></jsp:include>

</head>
<body>
	<div class="container">
		
		<div>
			<a href="/user/update/${sessionScope.user.userNo}"><h3>정보 변경</h3></a>
		</div>
	
		<div>
			<a href="/user/booking/${sessionScope.user.userNo}"><h3>예약 목록</h3></a>
		</div>
	
		<div>
			<h3>회원 정보 변경</h3>
		</div>
		
		<form method="post">
			<div>
			
				<div>
					<label>이메일</label>
					<input type="text" name="userEmail" value="${item.userEmail}">
				</div>
				
				<div>
					<label>휴대폰 번호</label>
					<input type="text" name="userPhone" value="${item.userPhone}">
				</div>
				
				<div>
					<label>휴대폰 번호 인증</label>
					<input type="hidden" name="userPhoneCert">
				</div>
	
				<div>
					<button type="submit" id="update">변경 완료</button>
				</div>

			</div>
		</form>
	</div>
</body>
</html>
