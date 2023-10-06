<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>

#logo {
	margin: 10px;
 	float: left;
 	width: 20%;
 	/* border: 1px solid red; */
 }

#sb {
	margin: 0 auto;
}

#keyword {
	margin: 10px;
	float: left;
	width: 40%;
	/* border: 1px solid red; */
}

#input {
	width: 100%;
}

#search {
	margin: 10px;
	float: left;
	width: 5%;
	/* border: 1px solid red; */
}

#login {
	margin: 10px;
	float: right;
	width: 10%;
	/* border: 1px solid red; */
}
</style>

<div id="logo">
<img src="${pageContext.request.contextPath}/resources/image/IZITABLE_logo.png" width="150px">
</div>

<div id="sb">
	<div id="keyword">
		<input id="input" type="text" name="keyword" value="${pager.keyword}">
	</div>
	<div id="search"> <!-- col-1은 12에서 1만큼 사용 -->
		<button class="btn">검색</button>
	</div>
</div>

<div></div>
<c:if test="${sessionScope.user == null and sessionScope.shop == null}"> <!-- session에 있는 정보 꺼내옴 -->
	<div id="login">
		<a href="/login">로그인</a>
		<a href="/join">회원가입</a>		
	</div>
</c:if>
<c:if test="${sessionScope.user != null or sessionScope.shop != null}">
	<div id="login">
		<a href="/logout">로그아웃</a>
		<c:if test="${sessionScope.user != null}">
			<c:choose>
				<c:when test="${sessionScope.user.userNo <= 0}">
					<a href="/admin/userlist">${sessionScope.user.userEmail}</a>
				</c:when>
				<c:otherwise>
					<a href="/user/booking/${sessionScope.user.userNo}">${sessionScope.user.userEmail}</a>
				</c:otherwise>
			</c:choose>
		</c:if>
		<c:if test="${sessionScope.shop != null}">
			<a href="/shop/booking/${sessionScope.shop.shopNo}">${sessionScope.shop.shopEmail}</a>
		</c:if>
	</div>
		
</c:if>
<br/>
<br/>
<br/>
<br/>
<br/>




