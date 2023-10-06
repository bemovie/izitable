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
				<label>이메일:</label>
				<input type="text" id="email" name="userEmail">
			</div>
		
			<div>
				<label>비밀번호:</label>
				<input type="password" id="pwd" name="userPwd">
			</div>
			
			<div>
				<input type="checkbox" id="loginType" name="loginType" value="shop">매장 로그인
			</div>
			
			<script>
				document.querySelector("#loginType").addEventListener("click", function(){
					if(document.querySelector("#loginType").checked == true) {
						document.querySelector("#email").name="shopEmail"
						document.querySelector("#pwd").name="shopPwd"
					}
					else {
						document.querySelector("#email").name="userEmail"
						document.querySelector("#pwd").name="userPwd"
					}
				})
			</script>
			
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