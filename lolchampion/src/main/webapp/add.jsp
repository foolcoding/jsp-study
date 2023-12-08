<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
</head>
<body>

<form action="add-action.jsp">
	<p><input type="text" name="name" placeholder="챔피언명" required autofocus></p>
	<p><input type="text" name="local" placeholder="출생지" required></p>
	<p><input type="text" name="line" placeholder="라인" required></p>
	<p><input type="text" name="job" placeholder="역할군" required></p>
	<p><input type="submit"></p>
</form>


</body>
</html>