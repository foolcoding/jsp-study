<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="youtube.DTO" />
<jsp:setProperty property="*" name="dto" />

<c:set var="row" value="${dao.insert(dto) }" />
<c:if test="${row != 0}" >
	<c:redirect url="/list.jsp" />
</c:if>

<c:if test="${row == 0}" >
	<script>
		alert['추가 실패']
		history.back()
	</script>
</c:if>

</body>
</html>