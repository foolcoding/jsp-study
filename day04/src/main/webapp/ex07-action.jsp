<%@page import="ex06.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07-action.jsp</title>
</head>
<body>

<%
	String name = request.getParameter("name");

	if(name == null){
		response.sendRedirect("ex07.jsp");
	}
	else{
		%>
		<jsp:useBean id="dto" class="ex06.MemberDTO" scope="request"></jsp:useBean>
		<jsp:setProperty property="name" name="dto"/>
		<%
//		MemberDTO dto = new MemberDTO();
//		dto.setName(name);
//		request.setAttribute("dto", dto);
		
		RequestDispatcher rd = null;
		rd = request.getRequestDispatcher("ex07-show.jsp");
		rd.forward(request, response);
	}
%>

</body>
</html>