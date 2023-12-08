<%@page import="lolchampion.DAO"%>
<%@page import="lolchampion.DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
</head>
<body>



<%
	DAO dao = (DAO) application.getAttribute("dao");
	int idx = Integer.parseInt(request.getParameter("idx"));
	DTO dto = dao.selectOne(idx);
	
	request.setAttribute("dto", dto);
	request.getRequestDispatcher("view-show.jsp").forward(request, response);
%>

</body>
</html>