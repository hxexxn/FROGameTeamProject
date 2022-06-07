<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${path}/resources/css/userMyPage.css">
<link rel="stylesheet" href="${path}/resources/css/user_orderList.css">
<link rel="stylesheet" href="${path}/resources/css/content_frame.css">
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</head>
<body>
	<jsp:include page="../include/page_top.jsp" flush="false"/>

		<!-- 회원 정보 수정 페이지 -->
 	<c:set var="user_nick" value="${sessionScope.user_nick}"/>
  	<c:set var="user_email" value="${sessionScope.user_email}"/>
  	<c:set var="sess" value="${sessionScope.user_nick}"/>
  	
  	<div id="contentFrame">
  	
		<div id="modifyFrame">

			<div class="modifyTitle">
				<div class="user_modify">
					회원정보 수정
				</div>
				
				<div class="line"></div>
				
				<div class="order_list">
					구매 내역
				</div>
				
			</div>

			<div class="modifyForm">
				<form action="userUpdate" method="post" id="userUpdateForm"
					name="userUpdateForm" autocomplete="off">
					<table class="modifyTableForm">

						<tr class="userPWinput">
							<td><label for="user_pw">기존 비밀번호</label></td>
							<td><input type="password" name="old_user_pw" id="old_user_pw"></td>
						</tr>
						<tr class="userPWinput">
							<td><label for="user_pw">변경 비밀번호</label></td>
							<td><input type="password" name="new_user_pw" id="new_user_pw"></td>
						</tr>
						<tr class="userRePwInput">
							<td><label for="user_rePw">변경 비밀번호 확인</label></td>
							<td><input type="password" name="new_user_rePw" id="new_user_rePw"></td>
						</tr>
						<tr class="userNickInput">
							<td><label for="user_nick">닉네임</label></td>
							<td><input type="text" name="new_user_nick" id="new_user_nick" value="${user_nick}"></td>
							<td><button type="button" id="nickDupBtn">중복 확인</button>
						</tr>
						<tr class="userEmailInput">
							<td><label for="user_email">이메일</label></td>
							<td><input type="text" name="new_user_email" id="new_user_email" value="${user_email}"></td>
						</tr>
					</table>

					<div class="modifyBtnBox">
						<input type="button" value="수정하기" id="updateBtn">
					</div>
				</form>
			</div>
			
			<!-- 구매 목록 내역 -->
			<div class="order_view">
				
				<div id="wrap2">
						
						        <div class="list_title">
					                <div class="order_no">주문번호</div>
					                <div class="order_title">상품명</div>
					                <div class="order_price">구매가격</div>
					                <div class="order_regdate">구매일</div>
					            </div>
						        
						   <c:forEach var="userOrder" items="${userOrder}">
						
						        <div class="list">
						            <div class="order_no">${userOrder.order_id}</div>
						            <div class="order_title">${userOrder.order_title}</div>
						            <div class="order_price">₩ 
						            	<fmt:formatNumber type="number" maxFractionDigits="3" value="${userOrder.total_price}"/>
						            </div>
						            <div class="order_regdate"><fmt:formatDate pattern="yy-MM-dd HH:mm" value="${userOrder.order_Date}"/></div>
						        </div>
						       
						    </c:forEach>
						   <%--  <c:forEach var="orderList" items="${orderList}">
						     <c:set var="totalSales"
									value="${totalSales + orderList.total_price}" />
						    </c:forEach>
						    
						    <!-- 총 매출액 -->
						    <div class="total_price_box">
						    
						    	<div class="total_head">
						    		<span> Total Sales </span>
						    	</div>
						    	
							    <div class="total_price">
							    	<span>
							    		₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${totalSales}" />
							    	</span>
							    </div>
								
						    </div>
						     --%>
						    <!-- 검색 -->
				         <div class="side_bar">
						
					        <%--
					        <!-- 페이징 -->
					        <div class="pageInfo_wrap center">
							<div class="pageInfo_area">
								<ul id="pageInfo" class="pageInfo">
									<!-- 이전페이지 버튼 -->
									<c:if test="${pageMaker.prev}">
										<li class="pageInfo_btn previous"><a
											href="${pageMaker.startPage-1}">Previous</a></li>
									</c:if>
									<!-- 각 번호 페이지 버튼 -->
									<c:forEach var="num" begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}">
										<li class="pageInfo_btn"><a href="${num}">${num}</a></li>
									</c:forEach>
									<!-- 다음페이지 버튼 -->
									<c:if test="${pageMaker.next}">
										<li class="pageInfo_btn next"><a
											href="${pageMaker.endPage + 1 }">Next</a></li>
									</c:if>
								</ul>
					
							</div>
						</div>--%>

    					</div>
						
						<form id="moveForm" method="get">
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
						</form>
					</div> 
					
			</div>
			<!-- 구매 목록 내역 -->
		</div>
		
</div>
		
		
<jsp:include page="../include/page_bottom.jsp" flush="false"/>

	<script type="text/javascript" src="${path}/resources/js/myPage.js"></script>
</body>
</html>