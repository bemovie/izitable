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
				<label>�̸�</label>
				<input type="text" name="name">
			</div>
			
			<div>
				<label>�޴��� ��ȣ</label>
				<input type="text" name="phone">
			</div>
		
			<div>
				<label>��й�ȣ</label>
				<input type="password" name="passwd">
				<button type="button" class="password_check" data-msg="Hello1" data-for="passwd">Ȯ��</button> <!-- type="button"�� ����� submit�� �� ��, -->
			</div>
			
			<div>
				<label>��й�ȣ Ȯ��</label>
				<input type="password" name="passwd_confirm">
				<button type="button" class="password_check" data-msg="Hello2" data-for="passwd_confirm">Ȯ��</button> <!-- type="button"�� ����� submit�� �� ��, -->
			</div>

			<div>
				<!-- <button type="button" onclick="signup()">���</button> --> <!-- button�� �ڵ������� submit �۵�(default) -->
				<!-- <button type="button" onclick="new ValidateForm(this)">���</button> -->
				<button type="submit" id="join">���</button>
				<a href="${pageContext.request.contextPath}"><button type="button">ó������</button></a>
			</div>
		</div>
		</form>
	</div>

</body>
</html>