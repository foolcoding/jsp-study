<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="frame">
	<c:set var="list" value="${dao.selectList() }" />
	
	<div class="box">
		<c:forEach var="dto" items="${list }">
		<div class="item">
			<div class="img">
				<a href="${cpath }/view.jsp?idx=${dto.idx}">
					<img style="width:100%; height:100%" src="${cpath }/image/${dto.imgName }" height= "120"></a>
			</div>
			<div class="title hidden">${dto.title }</div>
			<div class="channel">${dto.channel }</div>
		</div>
		</c:forEach>
	</div>
</div>


</body>
</html>