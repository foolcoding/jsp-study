<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="frame detail">
	<form action="add-action.jsp">
		<div class="item"><input name="title" placeholder="영상제목" required autofocus></div>
		<div class="item"><input name="channel" placeholder="채널" required></div>
		<div class="item"><input name="imgName" placeholder="이미지이름" required></div>
		<div class="item"><textarea cols="25" rows="8" name="videeoTag" placeholder="영상소스코드" required></textarea></div>
		<div class="item"><input type="submit"></div>
	</form>
</div>



</body>
</html>