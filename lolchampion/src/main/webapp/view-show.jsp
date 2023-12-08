<%@page import="lolchampion.DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view-show.jsp</title>
</head>
<body>

<table border="1" cellpadding="10" cellspacing="0">
	<tr>
		<th>번호</th>
		<td>${dto.idx }</td>
		<td rowspan="5"><img src="image/${dto.name }.png"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${dto.name }</td>
	</tr>
	<tr>
		<th>출생지</th>
		<td>${dto.local }</td>
	</tr>
	<tr>
		<th>라인</th>
		<td>${dto.line }</td>
	</tr>
	<tr>
		<th>역할</th>
		<td>${dto.job }</td>
	</tr>
</table>

<p>
	<a href="list.jsp"><button>목록</button></a>
	<a href="delete.jsp?idx=<%=DTO.getSeq() %>"><button>삭제</button></a>
</p>

</body>
</html>