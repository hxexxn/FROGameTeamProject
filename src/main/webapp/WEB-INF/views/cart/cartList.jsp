<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/cartList.css">
<link rel="stylesheet" href="${path}/resources/css/cart.css">
</head>
<body>
	<!-- 제이쿼리 -->
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
		
		
<c:set var="sess" value="${sessionScope.user_id}"/>

<jsp:include page="cartTop.jsp" flush="false"/>

		<!-- 로그인 창 -->
	<div id="contentFrame">
		
		<div id="wrap">
	
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
<script type="text/javascript" src="${path}/resources/js/cartList.js"></script>
</body>
</html>