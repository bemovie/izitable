<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<jsp:include page="../nav.jsp"></jsp:include>

</head>
<body>
	<div>
		예약이 완료되었습니다.
	</div>
	<div>
		<button><a href="${pageContext.request.contextPath}/cust/res/${sessionScope.customer.custCode}">예약 내용 확인</a></button>
	</div>
</body>
</html>