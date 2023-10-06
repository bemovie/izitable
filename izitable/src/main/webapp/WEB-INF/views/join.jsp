<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<!-- �������� CSS -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"> -->

<!-- BBS Style -->
<link href="/asset/BBSTMP_0000000000001/style.css" rel="stylesheet" />
<!-- ���� Style -->
<link href="/asset/LYTTMP_0000000000000/style.css" rel="stylesheet" />
<!-- �������� CSS -->

<meta charset="UTF-8">

<jsp:include page="nav.jsp"></jsp:include>

<title>IZITABLE - �������̺� : ȸ������</title>
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