<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>    
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="${rootPath}/user/update">
    <input type="hidden" name="u_id" value="${USER.u_id}">
    <div>
        <label>회원명:</label>
        <input type="text" name="u_name" value="${USER.u_name}">
    </div>
    <div>
        <label>전화번호:</label>
        <input type="text" name="u_tel" value="${USER.u_tel}">
    </div>
    <div>
        <label>주소:</label>
        <input type="text" name="u_addr" value="${USER.u_addr}">
    </div>
    <div>
        <label>아이디:</label>
        <input type="text" name="u_id" value="${USER.u_id}" disabled>
    </div>
    <div>
        <button type="submit">수정 완료</button>
    </div>
</form>
</body>
</html>