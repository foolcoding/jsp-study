<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="list" value="${dao.selectOne(param.name) }" />
<table border="1" cellpadding="10" cellspacing="0">
	<thead>
		<tr>
			<th>IDX</th>
			<th>NAME</th>
			<th>PNUM</th>
			<th>AGE</th>
			<th>FAVORITE</th>
			<th>해당 정보삭제</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="dto" items="${ list}">
		<tr>
			<td>${dto.idx }</td>
			<td>${dto.name }</td>
			<td>${dto.pnum }</td>
			<td>${dto.age }</td>
			<td>${dto.favorite }</td>
			<td><a href="delete-view.jsp?idx=${dto.idx }"><button>삭제</button></a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>




</body>
</html>