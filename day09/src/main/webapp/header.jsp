<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="pageContext.request.contextPath" />
<jsp:useBean id="dao" class="product.DAO" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div.frame{
		width: 900px;
		margin: 0 auto;
		border: 1px solid red;
	}

	div.box{
		display: flex;
		flex-flow: column;
		margin: auto;
		border: 1px solid blue;
	}
	
	div.item{
		box-sizing: border-box;
		width: 200px;
		margin: 10px;
		padding: 10px;
		text-align: center;
	}
</style>
</head>
<body>

<form action="search.jsp">
	<input type="search" name="name">
	<input type="submit">
</form>