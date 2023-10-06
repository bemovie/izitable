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
			<a href="/admin/userlist/${sessionScope.shop.shopNo}"><h3>회원 관리</h3></a>
		</div>
		
		<div>
			<a href="/admin/shoplist/${sessionScope.shop.shopNo}"><h3>매장 관리</h3></a>
		</div>
	
		<div>
			<a href="/admin/bookinglist/${sessionScope.shop.shopNo}"><h3>예약 관리</h3></a>
		</div>
		
		<div>
			<a href="/admin/update/${sessionScope.shop.shopNo}"><h3>정보 변경</h3></a>
		</div>
		
		<div>
			총 회원 수 <fmt:formatNumber value="${pager.total}" pattern="#"></fmt:formatNumber> 명
		</div>
		
		<div>
			<table>
				<thead>
					<tr>
						<th>회원번호</th>
						<th>이메일</th>
						<th>전화번호</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${list}">
						<form method="post" action="userupdate/${item.userNo}">
							<tr>
								<td>${item.userNo}</td>
								<td><input type="text" name="userEmail" value="${item.userEmail}"></td>
								<td><input type="text" name="userPhone" value="${item.userPhone}"></td>
								
								<td>
									<button type="submit" class="btn btn-danger btn-sm">수정</button>
									<button><a href="userdelete/${item.userNo}" class="btn btn-warning btn-sm">삭제</a></button>
								</td>
							</tr>
						</form>	
					</c:forEach>
					
					<c:if test="${list.size() < 1}">
					<tr>
						<td colspan="5">검색 된 회원이 없습니다</td>
					</tr>
					</c:if>
					
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
