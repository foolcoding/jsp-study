<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>

<h1>quiz1.jsp - 두 수의 덧셈 결과</h1>
<br>

	<%
		int n1 = 0;
		int n2 = 0;
		String answer = "";
		int sum = 0;
		if(request.getParameter("n1") != null && request.getParameter("n2") != null){
			n1 = Integer.parseInt(request.getParameter("n1"));
			n2 = Integer.parseInt(request.getParameter("n2"));
			sum = n1 + n2;
			answer = String.format("%d + %d = %d", n1, n2, n1 + n2);
		}
	%>
	
<h1>HTML과 Java코드가 하나의 페이지에 작성되어 있고, 순서가 섞여도 항상 자바부터 수행된다</h1>
<h3>Java코드는 웹 서버에서 실행되고, HTML코드는 클라이언트의 브라우저에서 실행된다</h3>

	<form>
		<input type="number" name="n1" placeholder="n1" min="0" max="99" required>
		+
		<input type="number" name="n2" placeholder="n2" min="0" max="99" required>
		<input type="submit" value="=">
		
		<br><%= answer %><br>
		<%= n1 + " + " + n2 + " = " + sum %>
	</form>
	
	
<div></div>
</body>
</html>