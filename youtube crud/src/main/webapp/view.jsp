<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="frame">
	<c:set var="dto" value="${dao.selectOne(param.idx) }"/>
	<div class="detail">
		<div style="margin-top: 50px;">${dto.videeoTag}</div>
	</div>
	<div>
		<div><h3>${dto.title }</h3></div>
		<div><h3>${dto.channel }</h3></div>
	</div>
	<div>
		<div>
			<a href="${cpath }/list.jsp"><button>목록</button></a>
		</div>
		<div>
			<a href="${cpath }/update.jsp?idx=${dto.idx}"><button>수정</button></a>
			<a href="${cpath }/delete.jsp?idx=${dto.idx}"><button>삭제</button></a>
		</div>
	</div>
</div>	


</body>
</html>