
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
<%-- 지시자(directive) --%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%-- 선언부(declaration) : 필드 선언 및 메서드 정의 --%>


<%!
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh-mm-ss");
	private String now = sdf.format(new Date());
	public String getNow(){
		String answer = now;
		return answer;
	}
%>
<%-- 스크립틀릿 (scriptlet) : 메인함수 역할에 해당하는 함수 --%>
<%
	String now = getNow();	// 다른 함수를 호출하거나, 지역변수의 값을 할당할 수 있다
	System.out.println("now : " + now);		// 서버의 콘솔에 출력할 수 있다
	out.print("<h3>now : " + now + "</h3>");// 클라이언트 화면에 태그로 출력할 수 있다
%>

<h1> JSP 기본 문법 활용 예시</h1>
<hr>
<h3>now : <%=now %></h3>


</body>
</html>