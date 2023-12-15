<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="dto" value="${dao.selectOne(param.idx) }" />

<div class="frame">
	<form action="update-action.jsp">
		<input type="hidden" name="idx" value="${dto.idx }">
		<input name="name" value="${dto.name }" required>
		<input name="price" value="${dto.price }" required>
		<input type="submit">
	</form>
</div>


</body>
</html>