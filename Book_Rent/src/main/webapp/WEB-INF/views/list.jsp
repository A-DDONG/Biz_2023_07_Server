<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<!DOCTYPE html>
<table class="main">
	<tr>
		<th>일련번호</th>
		<th>대출일</th>
		<th>대여자</th>
		<th>반납예정일</th>
		<th>반납여부</th>
		<th>도서명</th>
		<th>저자</th>
		<th>출판사</th>
	</tr>
	<c:forEach items="${RENT_BOOK_LIST}" var="RENT_BOOK">
		<tr>
			<td>${RENT_BOOK.rent_seq}</td>
			<td>${RENT_BOOK.rent_date}</td>
			<td><c:set var="rent_ucode" value="${RENT_BOOK.rent_ucode}" />
				<c:forEach items="${USER_LIST}" var="USER">
					<c:if test="${USER.u_code eq rent_ucode}">
						${USER.u_name}
					</c:if>
				</c:forEach>
			</td>
			<td>${RENT_BOOK.rent_return_date}</td>
			<td>${RENT_BOOK.rent_return_yn}</td>
			<td><c:set var="rent_bcode" value="${RENT_BOOK.rent_bcode}" />
				<c:forEach items="${BOOK_LIST}" var="BOOK">
					<c:if test="${BOOK.b_code eq rent_bcode}">
						${BOOK.b_name}
					</c:if>
				</c:forEach>
			</td>
			<td><c:set var="rent_bcode" value="${RENT_BOOK.rent_bcode}" />
				<c:forEach items="${BOOK_LIST}" var="BOOK">
					<c:if test="${BOOK.b_code eq rent_bcode}">
						${BOOK.b_author}
					</c:if>
				</c:forEach>
			</td>
			<td><c:set var="rent_bcode" value="${RENT_BOOK.rent_bcode}" />
				<c:forEach items="${BOOK_LIST}" var="BOOK">
					<c:if test="${BOOK.b_code eq rent_bcode}">
						${BOOK.b_comp}
					</c:if>
				</c:forEach>
			</td>

		</tr>
	</c:forEach>
</table>