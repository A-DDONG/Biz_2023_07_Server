<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>    
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<table class="member">
	<tr>
		<th>회원코드</th>
		<th>회원명</th>
		<th>전화번호</th>
		<th>주소</th>
		<th>아이디</th>
	</tr>
	<c:forEach items="${USERS}" var="MEMBER">
		<tr>
			<td>${MEMBER.u_code}</td>
			<td>${MEMBER.u_name}</td>
			<td>${MEMBER.u_tel}</td>
			<td>${MEMBER.u_addr}</td>
			<td><a href="${rootPath}/user/detail?u_id=${MEMBER.u_id}">
						${MEMBER.u_id}
				</a>
			</td>
		</tr>
	</c:forEach>
</table>