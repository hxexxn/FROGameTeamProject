<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard - 공지사항</title>
<link rel="stylesheet" href="${path}/resources/css/admin_orderList.css">
</head>
<body>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>


<jsp:include page="../admin_include/admin_top.jsp" flush="false"/>

<c:set var="sess" value="${sessionScope.user_nick}"/>

                    <div id="wrap2">

						        <div class="bbs_title">
						            <span>유저 주문 내역</span>
						        </div>
						
						        <div class="list_title">
					                <div class="order_no">주문번호</div>
					                <div class="order_user">구매자</div>
					                <div class="order_title">상품명</div>
					                <div class="order_price">구매가격</div>
					                <div class="order_regdate">구매일</div>
					            </div>
						        
						   <c:forEach var="pageList" items="${pageList}">
						
						        <div class="list">
						            <div class="notice_no">${pageList.order_id}</div>
						            	<div class="notice_writer">${pageList.user_id}</div>
						            <div class="notice_head">${pageList.order_title}</div>
						            <div class="notice_delete">₩ 
						            	<fmt:formatNumber type="number" maxFractionDigits="3" value="${pageList.total_price}"/>
						            </div>
						            <div class="notice_regdate"><fmt:formatDate pattern="yy-MM-dd HH:mm" value="${pageList.order_Date}"/></div>
						        </div>
						       
						    </c:forEach>
						    <c:forEach var="orderList" items="${orderList}">
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
						    
						    <!-- 검색 -->
				        <div class="side_bar">
						
					        
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
						</div>

    					</div>
						
						<form id="moveForm" method="get">
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
						</form>
					</div>
					
<script type="text/javascript" src="${path}/resources/js/admin_orderList.js"></script>
<jsp:include page="../admin_include/admin_bottom.jsp" flush="false"/>


</body>
</html>