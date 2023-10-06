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
			총 예약 수 <fmt:formatNumber value="${pager.total}" pattern="#"></fmt:formatNumber> 건
		</div>
		
		<div>
			<table>
				<thead>
					<tr>
						<th>예약번호</th>
						<th>매장이름</th>
						<th>예약날짜</th>
						<th>예약시간</th>
						<th>인원수</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.bookingNo}</td>
						<td>${item.compName}</td>
						<td><fmt:formatDate value="${item.bookingDate}" pattern="yyyy년 MM월 dd일"/></td>
						<td>${item.bookingTime}</td>
						<td>${item.bookingMemNum}</td>
						<td>
							<button><a href="${item.userNo}/delete/${item.bookingNo}" class="btn btn-warning btn-sm">취소</a></button>
						</td>
					</tr>
					</c:forEach>	
					
					<c:if test="${list.size() < 1}">
					<tr>
						<td colspan="5">검색 된 예약이 없습니다</td>
					</tr>
					</c:if>
					
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
