<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="dto" value="${dao.selectOne(param.idx) }" />

<div class="frame detail">
	<form action="update-action.jsp">
		<input type="hidden" name="idx" value="${dto.idx }">
		<div class="item"><input name="title" value="${dto.title }" required autofocus></div>
		<div class="item"><input name="channel" value="${dto.channel }" required></div>
		<div class="item"><input name="imgName" value="${dto.imgName }" required></div>
		<div class="item"><textarea cols="25" rows="8" name="videeoTag" required>${dto.videeoTag}</textarea></div>
		<div class="item"><input type="submit"></div>
	</form>
</div>



</body>
</html>