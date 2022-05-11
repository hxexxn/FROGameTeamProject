<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${path}/resources/css/cart.css">
<link rel="stylesheet" href="${path}/resources/css/cartList.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR&family=Playfair+Display:wght@500&display=swap')
	;
</style>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap')
	;
</style>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

</head>
<body>

<c:set var="sess" value="${sessionScope.user_id}"/>

<jsp:include page="cartTop.jsp" flush="false"/>

		<!-- 로그인 창 -->
	<div id="contentFrame">
		
		<div id="wrap">
	
	        <div class="cartTitle">
	            <h1> 장바구니 화면 </h1>
	        </div>
	
	
	<c:set var="totalPrice" value="${0}"/>
	<c:forEach var="cList" items="${cList}" varStatus="status">
		<form action="cartDelete" method="post">
				
			
			 <div id="cartGameList">
			        
			       <div class="gameTitle"> 
			       <input type="hidden" value="${sess}" id="cart_user_id" name="cart_user_id">
			           <p> * 품명 : ${cList.gameDto.game_title}</p>
			           <input type="hidden" value="${cList.cart_no}" id="cart_no" name="cart_no">
			           <p> * 카트 번호 : ${cList.cart_no} </p>
			       </div>
			
			       <div class="gamePrice"> 
			           <p> * 가격 : ${cList.gameDto.game_price}</p>
			       </div>
			
			       <div class="delBtn">
			       <!-- <button type="button" id="cartDelBtn"> ajax 삭제</button> -->
			      
			       <button type="submit">ajax delete</button>
			       <!-- <a href="#" id="cartDelBtn">a태그 테스트</a> -->
			       </div>
			        </div>
			
			</form>

			 <c:set var="totalPrice" value="${totalPrice + cList.gameDto.game_price}"/>
		</c:forEach>
		
			<div class="totalPrice">
				<p>합계 : <c:out value="${totalPrice}"/>원</p>
			</div> 
		<div>
		
		</div>
	  	</div>





	</div>


	

<jsp:include page="indexBottom.jsp" flush="false"/>

	<script type="text/javascript" src="${path}/resources/js/login.js"></script>
</body>
</html>