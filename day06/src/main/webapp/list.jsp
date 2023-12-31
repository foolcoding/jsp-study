<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>전체목록</h3>

<c:set var="list" value="${dao.selectList() }" />
<table border="1" cellpadding="10" cellspacing="0">
	<thead>
		<tr>
			<th>IDX</th>
			<th>NAME</th>
			<th>PNUM</th>
			<th>AGE</th>
			<th>FAVORITE</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="dto" items="${ list}">
		<tr>
			<td>${dto.idx }</td>
			<td><a href="view.jsp?name=${dto.name }">${dto.name }</a></td>
			<td>${dto.pnum }</td>
			<td>${dto.age }</td>
			<td>${dto.favorite }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>

</body>
</html>