<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빛고을 Book Rent Management System 2023</title>
<link href="${rootPath}/static/css/main.css" rel="stylesheet" />
<link href="${rootPath}/static/css/input.css" rel="stylesheet" />
<script>
	var rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/nav.js"></script>


</head>
<body>
	<header>
		<p class="main_title">집에 가고 싶은 책방</p>
		<p class="sub_title">책 대여 서비스</p>
	</header>
	<nav class="main">
		<ul>
			<li class="home">홈으로</li>
			<li class="input">도서정보</li>
			<li class="member">회원정보</li>
			<c:if test="${empty LOGINUSER}">
				<!-- 로그인되지 않은 상태 -->
				<li class="login">로그인</li>
				<li class="join">회원가입</li>
			</c:if>
			<c:if test="${not empty LOGINUSER}">
				<!-- 로그인된 상태 -->
				<li class="mypage"><a href="/mypage">${LOGINUSER.u_name}님
						마이페이지</a></li>
				<li class="logout"><a href="${rootPath}" onclick="logout()">로그아웃</a></li>
			</c:if>
		</ul>
	</nav>
	<div class="container">
		<c:if test="${empty BODY}">
			<p class="list_title">도서 대여 리스트</p>
			<%@ include file="/WEB-INF/views/list.jsp"%>
		</c:if>
		<c:if test="${BODY == 'LOGIN'}">
			<%@ include file="/WEB-INF/views/user/login.jsp"%>
		</c:if>
		<c:if test="${BODY == 'JOIN'}">
			<%@ include file="/WEB-INF/views/user/join.jsp"%>
		</c:if>
		<c:if test="${BODY == 'MEMBER'}">
			<%@ include file="/WEB-INF/views/user/member.jsp"%>
		</c:if>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</body>
</html>