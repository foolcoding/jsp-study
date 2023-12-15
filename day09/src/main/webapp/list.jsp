<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="frame">
		<c:forEach var="dto" items="${dao.selectList() }" >
			<div class="box">
				<div class="item"><a href="view.jsp?idx=${dto.idx }">${dto.name }</a></div>
				<div class="item">${dto.price }</div>
			</div>
		</c:forEach>
</div>

<div>
	<a href="add-form.jsp"><button>추가</button></a>
</div>

</body>
</html>