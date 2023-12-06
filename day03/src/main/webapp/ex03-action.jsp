<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Random"%>
<%@page import="ex03.UpdownGame"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	UpdownGame game = new UpdownGame();
%>

<%
	// service()
	// 웹 프로그램으로써 수행해야할 전체적인 목적만 나타내고 있다(request, response)
	// 상세한 기능의 내용은 game 객체 내부에 메서드로 존재한다

	if("true".equals(request.getParameter("reset"))){
		game.reset();
		response.sendRedirect("ex03-form.jsp?msg=");
		return;
	}
	
	String user = request.getParameter("user");
	String msg = game.handler(user);

	String location = "ex03-form.jsp?msg=" + URLEncoder.encode(msg, "UTF-8");
	response.sendRedirect(location);
%>
