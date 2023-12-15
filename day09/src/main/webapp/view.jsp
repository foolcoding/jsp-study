<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="frame">
	<c:set var="dto" value="${dao.selectOne(param.idx) }" />
	<div class="box">
		<div class="item">${dto.name }</div>
		<div class="item">${dto.price }</div>
	</div>
</div>

<div>
	<a href="list.jsp"><button>목록</button></a>
	<a href="delete.jsp?idx=${dto.idx }"><button>삭제</button></a>
	<a href="update-form.jsp?idx=${dto.idx }"><button>수정</button></a>
</div>

</body>
</html>