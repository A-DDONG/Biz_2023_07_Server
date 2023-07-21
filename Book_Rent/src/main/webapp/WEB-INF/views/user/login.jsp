<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<form class="user" method="POST">
	<div class="login_title">
		<p>로그인</p>
	</div>
	<div>
		<label for="u_id">아이디</label> <input type="text" id="u_id" name="u_id" />
	</div>
	<div>
		<label for="password">비밀번호</label> <input type="password"
			id="password" name="password" />
	</div>
	<div>
		<button>로그인</button>
	</div>
	<div>
		<span><a href="">아이디/비번찾기</a></span> &nbsp;|&nbsp;
		<span><a href="${rootPath}/user/join">회원가입</a></span>
	</div>
</form>