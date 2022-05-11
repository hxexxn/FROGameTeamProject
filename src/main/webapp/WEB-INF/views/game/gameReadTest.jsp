<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 제이쿼리 -->
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>

	<h1>게임 상세화면</h1>

	<form action="addCart2" method="post" id="addCartFrom">
		
		${sess}
		
		<c:set var="sess" value="${sessionScope.user_id}"></c:set>
		<c:out value="${sess}"/>
		
		<input type="hidden" value="${sess}" name="cart_user_id" id="cart_user_id">
		<input type="hidden" value="${dto.game_no}" id="cart_game_no" name="cart_game_no">
		
		<p>게임명 : ${dto.game_title}</p>
		<p>게임 가격 : ${dto.game_price}</p>
		<p>게임 장르 : ${dto.game_genre_no}</p>
		<p>게임 등록일 : ${dto.game_regdate}</p>
		
		<button type="button" id="cartBtn2">ajax 장바구니</button><br>
		<a href="/addCart?cart_game_no=${dto.game_no}&cart_user_id=${sess}" id="cartBtn">장바구니</a><br>
		<!-- <a href="/cartList?game_no=${dto.game_no}" id="cartListBtn">장바구니 목록</a> -->
		<a href="/cartList?cart_user_id=${sess}" id="cartListBtn">장바구니 목록</a>

	</form>


	<script type="text/javascript" src="${path}/resources/js/cart.js"></script>
</body>
</html>