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
			<a href="/shop/booking/${sessionScope.shop.shopNo}"><h3>예약 관리</h3></a>
		</div>
		
		<div>
			<a href="/shop/setting/${sessionScope.shop.shopNo}"><h3>매장 설정</h3></a>
		</div>
		
		<div>
			<a href="/shop/update/${sessionScope.shop.shopNo}"><h3>정보 변경</h3></a>
		</div>
		
		<form method="post">
			<div>
			
				<div>
					<label>이메일</label>
					<input type="text" name="shopEmail" value="${item.shopEmail}">
				</div>
				
				<div>
					<label>매장명</label>
					<input type="text" name="compName" value="${item.compName}">
				</div>
				
				<div>
					<label>매장 번호(사업자번호)</label>
					<input type="text" name="compNum" value="${item.compNum}">
				</div>
				
				<div>
					<label>매장 사장님명</label>
					<input type="text" name="compCeo" value="${item.compCeo}">
				</div>
				
				
				<div>
					<label>매장 전화번호</label>
					<input type="text" name="compCall" value="${item.compCall}">
				</div>
				
				<div>
					<label>매장 구주소</label>
					<input type="text" name="compAddr1" value="${item.compAddr1}">
				</div>
				
				<div>
					<label>매장 신주소(도로명주소)</label>
					<input type="text" name="compAddr2" value="${item.compAddr2}">
				</div>
				
				<div>
					<label>매장 소개</label>
					<input type="text" name="compIntro" value="${item.compIntro}">
				</div>

				<div>
					<button type="submit" id="update">변경 완료</button>
				</div>
				
			</div>
		</form>
	</div>
</body>
</html>
