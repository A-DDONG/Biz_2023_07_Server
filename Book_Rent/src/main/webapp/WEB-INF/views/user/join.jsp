<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>

<body>

	<form class="user" method="POST" action="${rootPath}/user/join">
		<div class="join_title">
			<p>회원가입</p>
		</div>
		<div>
			<label for="u_id">아이디</label> <input type="text" id="u_id"
				name="u_id" />
		</div>
		<div>
			<label for="password">비밀번호</label> <input type="password"
				id="password" name="password" />
		</div>
		<div>
			<label for="re_password">비밀번호 재입력</label> <input type="password"
				id="re_password" name="re_password" />
		</div>
		<div>
			<label for="u_name">이름</label> <input type="text" id="u_name"
				name="u_name" />
		</div>
		<div>
			<label for="u_tel">전화번호</label> <input type="text" id="u_tel"
				name="u_tel" />
		</div>
		<div>
			<label for="u_addr">주소</label> <input type="text" id="u_addr"
				name="u_addr" />
		</div>

		<div>
			<button>회원가입</button>
		</div>
	</form>