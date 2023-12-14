<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<jsp:useBean id="dao" class="youtube.DAO" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		margin: 0;
		padding: 0;
		background-color: black;
		color: white;
	}
	.frame{
		width:1200px;
		margin: 0 auto;
		padding-top: 70px;
	}
	.detail{
		display:flex;
		flex-flow: colunm;
		justify-content: center;
		align-items: center;
	}
	.sb{
		display:flex;
		justify-content: space-between;
	}
	.header{
		width: 100%;
		height: 56px;
		background-color: black;
		color: white;
		position: fixed;
	}
	div.item{
		box-sizing: border-box;
		width: 270px;
		margin: 10px;
		padding: 10px;
		font-size: 13px;
	}
	div.box{
		display: flex;
		flex-flow: wrap;
		margin: auto;
	}
	a{
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		text-decoration: none;
	}
	.search{
		background-color: black;
		color: white;
		border-radius: 50px;
		width: 500px;
		height: 30px
	}
	button.login{
		border-radius: 5px;
	}
	.pdleft{
		padding-left:10px;
	}
	.pdrigth{
		padding-right:10px;
	}
	.color{
		background-color: black;
		color: white;
	}
	.hidden{
		line-height: 2.2rem;
		overflow: hidden;
		max-height: 4.4rem;
		-webkit-line-clemp: 2;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		font-size: 15px;
	}
</style>
</head>
<body>

<div class="header">
	<div class="detail sb">
		<div class="detail pdleft"><a href="${cpath }"><img src="${cpath }/image/logo.png"></a></div>
		<div class="detail">
			<form action="searchList.jsp">
				<input type="search" class="search" name="title" value="${param.title }" placeholder="검색">
				<input class="color" type="submit">
			</form>
		</div>
		<div class="detail pdrigth">
			<a href="${cpath }/add-form.jsp"><button>추가</button></a>
			<a href="${cpath }/login.jsp"><button class="login">로그인</button></a>
		</div>
	</div>
</div>





