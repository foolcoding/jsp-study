<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section class="frame">
	<c:set var="dto" value="${dao.selectOne(param.idx) }" />
	<div>
		<div><img src="${cpath }/image/${dto.imgName}" height="300"></div>
		<div><h3>${dto.name }</h3></div>
		<div><h3>${dto.memo }</h3></div>
		<div><h3>${dto.price }</h3></div>
	</div>
</section>

</body>
</html>