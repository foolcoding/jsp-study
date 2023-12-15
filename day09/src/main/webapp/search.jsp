<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="frame">
	<c:set var="list" value="${dao.search(param.name) }" />
		<c:forEach var="dto" items="${list }" >
			<div class="box">
				<div class="item"><a href="view.jsp?idx=${dto.idx }">${dto.name }</a></div>
				<div class="item">${dto.price }</div>
			</div>
		</c:forEach>
</div>

</body>
</html>