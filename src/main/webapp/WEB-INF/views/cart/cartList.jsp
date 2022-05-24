<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

 



<c:set var="sess" value="${sessionScope.user_id}"/>

 

<jsp:include page="../include/page_top.jsp" flush="false"/>

 

<div id="contentFrame">

 

<div id="wrap">

 

<c:set var="totalPrice" value="${0}"/>

<c:forEach var="img" items="${img}" varStatus="status">

<form action="cartDelete" method="post">

 

 

<div id="cartGameList">

       

      <div class="gameTitle"> 

      <input type="hidden" value="${sess}" id="cart_user_id" name="cart_user_id">
      

      		<img src="${img}" width="300px">

          <p> * 품명 : ${cList[status.index].gameDto.game_title}</p>

          <input type="hidden" value="${cList[status.index].cart_no}" id="cart_no" name="cart_no">
          <input type="hidden" value="${cList[status.index].gameDto.game_title}" id="game_title" name="game_title">
          <input type="hidden" value="${cList[status.index].gameDto.game_price}" id="game_price" name="game_price">
          <input type="hidden" value="${cList[status.index].userDto.user_email}" id="user_email" name="user_email">
          <input type="hidden" value="${cList[status.index].userDto.user_nick}" id="user_nick" name="user_nick">

      </div>

 

      <div class="gamePrice"> 

          <p> * 가격 : ${cList[status.index].gameDto.game_price}</p>

      </div>

 

      <div class="delBtn">

      <!-- <button type="button" id="cartDelBtn"> ajax 삭제</button> -->

     

      <button type="submit">ajax delete</button>

      <!-- <a href="#" id="cartDelBtn">a태그 테스트</a> -->

      </div>

        </div>

 

</form>

 

<c:set var="totalPrice" value="${totalPrice + cList[status.index].gameDto.game_price}"/>

</c:forEach>

 

<div class="totalPrice">

<p>합계 : <c:out value="${totalPrice}"/>원</p> 

<button onclick="requestPay()"> 결제하기 </button>

</div> 

<div>

 

</div>

  </div>

 

</div>

 

 
 

<script type="text/javascript">

	var list1 = new Array();
	
	<c:forEach var="cList" items="${cList}" >
	
		list1.push("${cList.cart_no}");
		list1.push("${cList.gameDto.game_title}");
	
	</c:forEach>
	
	for (var i = 0; i < list1.length; i++) {
	
	    console.log('for문 콘솔 : '+list1[i]);
	
	}
	



</script> 

<jsp:include page="../include/page_bottom.jsp" flush="false"/>

<script type="text/javascript" src="${path}/resources/js/cartList.js"></script>

</body>

</html>
