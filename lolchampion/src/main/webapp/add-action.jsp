<%@page import="lolchampion.DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add-action.jsp</title>
</head>
<body>

<jsp:useBean id="dto" class="lolchampion.DTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

${dao.insert(dto) }

<%
	int lastIdx = DTO.getSeq();
	response.sendRedirect("view.jsp?idx=" + lastIdx);
%>


</body>
</html>