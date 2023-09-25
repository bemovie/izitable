<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<jsp:include page="nav.jsp"></jsp:include>

</head>
<body>
	<div class="container">
		
		<form method="post">
		<div>
		
			<div class="form-group">
				<label>전화번호:</label>
				<input type="text" name="custPhone">
			</div>
		
			<div>
				<label>비밀번호:</label>
				<input type="password" name="custPassword">
			</div>
			
			<div>
				<button type="submit">로그인</button>
			</div>
			<div>
				<img src="${pageContext.request.contextPath}/resources/image/kakaologin.png" width="200px">
			</div>
			<div>
				<img src="${pageContext.request.contextPath}/resources/image/naverlogin.png" width="200px">
			</div>
		</div>
		</form>
	</div>
	
</body>
</html>