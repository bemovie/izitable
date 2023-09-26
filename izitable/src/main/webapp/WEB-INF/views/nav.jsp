<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>

#logo {
 	float: left;
 	width: 20%;
 	border: 1px solid red;
 }

#keyword {
	float: left;
	width: 50%;
	border: 1px solid red;
}

#search {
	float: left;
	width: 5%;
	border: 1px solid red;
}

#login {
	float: right;
	width: 20%;
	border: 1px solid red;
}
</style>

<div id="logo">
<img src="${pageContext.request.contextPath}/resources/image/IZITABLE_logo.png" width="150px">
</div>

<div id="keyword">
	<input type="text" name="keyword" value="${pager.keyword}">
</div>
<div id="search"> <!-- col-1은 12에서 1만큼 사용 -->
	<button>검색</button>
</div>

<div></div>
<c:if test="${sessionScope.customer == null}"> <!-- session에 있는 정보 꺼내옴 -->
	<div id="login">
		<a href="/login">로그인</a>
		<a href="/join">회원가입</a>		
	</div>
</c:if>
<c:if test="${sessionScope.customer != null}">
	<div id="login">
		<a href="/logout">로그아웃</a>
		${sessionScope.customer.custName}
	</div>
		
</c:if>
<br/>
<br/>
<br/>
<br/>
<br/>




