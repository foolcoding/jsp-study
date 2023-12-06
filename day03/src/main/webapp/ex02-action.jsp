<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	Random ran = new Random();
	int cpu = ran.nextInt(100) + 1;
	int count = 0;
%>

<%
	if(request.getParameter("reset") != null){
		count = 0;
		cpu = ran.nextInt(100) + 1;
		response.sendRedirect("ex02-form.jsp");
		return;
	}
	// 입력받은 상태를 가정하고 코드를 진행 가능
	int user = Integer.parseInt(request.getParameter("user"));
	count++;
	String msg = "";
	
	if(user == cpu) 	msg = String.format("정답, %d회 만에 정답을 맞춤", count);
	else if(user < cpu) msg = String.format("UP, %d회 시도중", count);
	else 				msg = String.format("DONW, %d회 시도중", count);
	
	
	String location = "ex02-form.jsp?msg=" + URLEncoder.encode(msg, "UTF-8");
	
	// 출력하지 않아도 대상 페이지로 이동하도록 브라우저에게 명령하기 (리다이렉트)
	// 화면에 출력할 내용이 있지만 java가 HTML보다 먼저 수행되서 사용자는 HTML을 볼 수 없다
	// -> 처리를 전담하는 JSP는 HTML 구문이 필요없다
	response.sendRedirect(location);
%>
