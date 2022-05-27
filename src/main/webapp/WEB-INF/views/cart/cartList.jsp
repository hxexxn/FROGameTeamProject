<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

<link rel="stylesheet" href="${path}/resources/css/cartList.css">

<link rel="stylesheet" href="${path}/resources/css/content_frame.css">

</head>

<body>


	<!-- 제이쿼리 -->

	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>

	<!-- iamport.payment.js -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

	<c:set var="sess" value="${sessionScope.user_id}" />
	<c:set var="nick" value="${sessionScope.user_nick}" />

	<jsp:include page="../include/page_top.jsp" flush="false" />



	<div id="contentFrame">


		<div class="wrap">


			<c:set var="totalPrice" value="${0}" />
				<div class="cartTitle">
						<h1>CART LIST</h1>
				</div>
			<c:forEach var="img" items="${img}" varStatus="status">

				<form action="cartDelete" method="post">
				
					<!--  히든 -->
					<div class="cartListBox">
						<input type="hidden" value="${sess}" id="cart_user_id"
							name="cart_user_id">
							<input type="hidden" value="${cList[status.index].cart_no}" 
							id="cart_no" name="cart_no">
					<!-- 히든 -->

						<div class="gameImg">
							<img src="${img}" width="250px" height = "150px" >
							
						</div>
						<div class="gameTitle">
							<div class="block">${cList[status.index].gameDto.game_title}</div>
						</div>
						<div class="gamePrice">
							<div>${cList[status.index].gameDto.game_price}</div>
						</div>

						<div class="cartDelete">
							<div>
								<button type="submit" class="deleteButton">삭제</button>
							</div>

						</div>

					</div>


					<c:set var="totalPrice"
						value="${totalPrice + cList[status.index].gameDto.game_price}" />
				</form>
			</c:forEach>


			<div class="cartListBottom">
				<div class="totalPrice">
					<span class="totalPrice1">총 주문 금액</span> <span><c:out
							value="${totalPrice}" /></span> <span class="totalPrice1">원</span>
				</div>

				<input type="hidden" value="${totalPrice}" name="totalPrice"
					id="totalPrice"> <input type="hidden" value="${nick}"
					name="nick" id="nick">

				<div class="orderBtn">
					<button onclick="requestPay()" class="button">결제하기</button>
				</div>
			</div>


		</div>

	</div>
	
<input type="hidden" value="${cList[0].userDto.user_email}" name="user_email" id="user_email">
<input type="hidden" value="${cList[0].cart_no}" name="cart_no" id="cart_no">
<input type="hidden" value="${cList[0].gameDto.game_title}" name="game_title" id="game_title">
<input type="hidden" value="${img.size()}" name="size" id="size">
<input type="hidden" value="${totalPrice}" name="totalPrice" id="totalPrice">
<input type="hidden" value="${nick}" name="nick" id="nick">


<div>

 

</div>

 

<!--  <script type="text/javascript">
=======
	<script type="text/javascript">
>>>>>>> branch 'master' of https://github.com/hxexxn/FROGameTeamProject.git

	var list1 = new Array();
	
	<c:forEach var="cList" items="${cList}" >
	
		list1.push("${cList.gameDto.game_title}");
	
	</c:forEach>
	
	for (var test in list1){
		console.log('for문 콘솔 : '+ list1[test]);
	}


<<<<<<< HEAD
</script>  -->



	<jsp:include page="../include/page_bottom.jsp" flush="false" />

	<script type="text/javascript" src="${path}/resources/js/payTest.js"></script>



</body>


</html>
