

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
</head>
<body>

<h1>사용자의 입력값을 리스트에 추가하고 화면에 출력하기</h1>
<hr>

<form>	<!-- form 태그는 action속성이 없으면 [현재 주소]로 새로은 요청을 보낸다-->
	<p>
		<select name="category" required>
			<option value="">=== 카테고리 ===</option>
			<option value="족발/보쌈">족발/보쌈</option>
			<option value="찜/탕/찌게">찜/탕/찌게</option>
			<option value="돈까스/회/일식">돈까스/회/일식</option>
			<option value="피자">피자</option>
			<option value="고기/구이">고기/구이</option>
			<option value="야식">야식</option>
			<option value="양식">양식</option>
			<option value="치킨">치킨</option>
			<option value="중식">중식</option>
		</select>
	</p>
	
	<p><input type="text" name="storeName" placeholder="식당이름" required></p>
	<p><input type="text" name="menuName" placeholder="메뉴이름" required></p>
	<p><input type="number" name="menuPrice" placeholder="주문금액" min = "0" step="100" required></p>
	<p><input type="submit"></p>
</form>

<%@page import="java.util.ArrayList"%>
<%@page import="food.FoodDTO"%>
<%! private ArrayList<FoodDTO> list = new ArrayList<>();%>

<%	// 스크립틀릿은 서비스 함수이므로 지역변수는 함수가 호출될 때마다 새로 만들어진다 -> 값이 유지되지 않는다
	// 리스트를 멤버 필드로 생성해두면, 객체가 소멸되기 전까지 (서버 재시작 전) 유지됨

	String category = request.getParameter("category");
	String storeName = request.getParameter("storeName");
	String menuName = request.getParameter("menuName");
	String menuPrice = request.getParameter("menuPrice"); 
	
	if(category != null){
		FoodDTO dto = new FoodDTO();
		dto.setCategory(category);
		dto.setStoreName(storeName);
		dto.setMenuName(menuName);
		dto.setMenuPrice(Integer.parseInt(menuPrice));
		list.add(dto);
		
		list.sort((a, b) -> a.getCategory().compareTo(b.getCategory()));
	}
	
	
%>

<table border="1" cellpadding="10" cellspacing="0">
	<tr bgcolor="#dadada">
		<th>카테고리</th>
		<th>식당이름</th>
		<th>메뉴이름</th>
		<th>메뉴가격</th>
	</tr>
	<% for(FoodDTO dto : list){ %>
	<tr>
		<td><%=dto.getCategory() %></td>
		<td><%=dto.getStoreName() %></td>
		<td><%=dto.getMenuName() %></td>
		<td><%=dto.getMenuPrice() %></td>
	</tr>
	<% } %>
</table>
	
	


</body>
</html>