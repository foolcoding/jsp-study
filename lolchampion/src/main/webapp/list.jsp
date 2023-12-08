<%@page import="lolchampion.DTO"%>
<%@page import="lolchampion.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>

<p>
	<a href="add.jsp"><button>추가</button></a>
</p>

<table border="1" cellpadding="10" cellspacing="0">
	<thead bgcolor="#dadada">
		<tr>
			<th>번호</th>
			<th>챔피언이름</th>
			<th>출생지</th>
			<th>주라인</th>
			<th>역할군</th>
		</tr>
	</thead>
	<tbody>
	<%
		DAO dao = (DAO)application.getAttribute("dao");
		if(dao == null){
			dao = new DAO();
			application.setAttribute("dao", dao);
		}
		for(DTO dto : dao.selectList()){
	%>
		<tr>
			<td><%=dto.getIdx() %></td>
			<td>
				<a href="view.jsp?idx=<%=dto.getIdx() %>">
					<%=dto.getName() %>
				</a>
			</td>
			<td><%=dto.getLocal() %></td>
			<td><%=dto.getLine() %></td>
			<td><%=dto.getJob() %></td>
		</tr>
	<% } %>
	</tbody>
</table>


</body>
</html>