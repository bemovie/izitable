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
			<h3>ȸ�� ����</h3>
		</div>
		<!-- <form method="post" action="add"> --> <!-- jsp�� ������ ����, ��¿ �� ���� form tag�� �޾��� ������ �ʿ� -->
		<!-- <form method="post" name="signup_form"> --> <!-- jsp�� ������ ����, ��¿ �� ���� form tag�� �޾��� ������ �ʿ� -->
		<form method="post">
			<div>
			
				<div>
					<label>�̸���</label>
					<input type="text" name="userEmail">
				</div>
				
				<div>
					<label>�޴��� ��ȣ</label>
					<input type="text" name="userPhone">
				</div>
				
				<div>
					<label>�޴��� ��ȣ ����</label>
					<input type="hidden" name="userPhoneCert">
				</div>
			
				<div>
					<label>��й�ȣ</label>
					<input type="password" name="userPwd">
					<button type="button" class="password_check" data-msg="Hello1" data-for="passwd">Ȯ��</button>
				</div>
				
				<div>
					<label>��й�ȣ Ȯ��</label>
					<input type="password" name="passwd_confirm">
					<button type="button" class="password_check" data-msg="Hello2" data-for="passwd_confirm">Ȯ��</button>
				</div>
	
				<div>
					<button type="submit" id="join">���</button>
					<a href="${pageContext.request.contextPath}"><button type="button">ó������</button></a>
				</div>
			</div>
		</form>
	</div>

</body>
</html>