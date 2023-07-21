<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	display: flex;
}

div.user_detail ul {
	list-style: none;
}
</style>
</head>
<body>
	<h1>유저 상세정보</h1>
	<div class="user_detail">
		<ul>
			<li>회원코드</li>
			<li>회원명</li>
			<li>전화번호</li>
			<li>주소</li>
			<li>아이디</li>
		</ul>
		<ul>
			<li>${USER.u_code}</li>
			<li>${USER.u_name}</li>
			<li>${USER.u_tel}</li>
			<li>${USER.u_addr}</li>
			<li>${USER.u_id}</li>
		</ul>
		<div>
			<a href="${rootPath}/user/edit?u_id=${MEMBER.u_id}">
				<button>수정</button>
			</a>
		</div>
	</div>
</body>
</html>