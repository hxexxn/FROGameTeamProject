<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <link rel="stylesheet" href="${path}/resources/css/gameRead.css">
  
  <jsp:include page="../include/page_top.jsp" flush="false" />
  
  
 


<form action="addCart2" method="post" id="addCartFrom">


	<%-- <c:forEach var="img" items="${imgList}">
		<img src="${img.image}">
		</c:forEach> --%>
		
	<div class="head_title">${dto.game_title}</div>
	
	<div class="big_wrap">    

    <div class="left_box">
            <div class="head_photo">
                <img class="photo" src="${imgList[0].image}"> 
            </div>
            <div class="content_wrap">

                <!-- 게임정보입력란 -->
                <div class="content_box">
                    <h1>게임정보</h1>
                    <div>${dto.game_info}</div>
                </div>

<!-- 사양 넣는곳 -->
                <div class="content_box">
                    <h1>최소</h1>  
                    <div>운영체제:${dto.game_min_os}</div>
                    <div>프로세서:${dto.game_min_cpu}</div>
                    <div>메모리:${dto.game_min_ram}</div>
                    <div>그래픽:${dto.game_min_vga}</div>
                    <div>DirectX:${dto.game_min_dirX}</div>
                    <div>저장공간:${dto.game_min_ssd}</div>
                    <br>


                    <h1>권장</h1>
                    <div>운영체제:${dto.game_std_os}</div>
                    <div>프로세서:${dto.game_std_cpu}</div>
                    <div>메모리:${dto.game_std_ram}</div>
                    <div>그래픽:${dto.game_std_vga}</div>
                    <div>DirectX:${dto.game_std_dirX}</div>
                    <div>저장공간:${dto.game_std_ssd}</div> 
                    <br><br><br>
                    
                    ※ 시스템 요구 사항은 출시 버전을 기준으로 하며, 컨텐츠 추가와 업데이트로 인한 변경 사항이 있을 수 있습니다.

                </div>
        
        
            </div>

            
    </div>

    <div class="right_box">
            <div class="buy">
                <div class="price">
                    <div class="menu"> 
                        <span class="pre_price">게임번호</span><span class="bf_price">${dto.game_no}</span>
                    </div>
                    <div class="menu"> 
                        <span class="pre_price">판매가</span><span style="color: #f0ad4e;"><fmt:formatNumber type="number" maxFractionDigits="3"
			value="${dto.game_price}" /></span>
                    </div>
                </div>

                <div class="game_info">
                    <div class="">
                        <span class="game_info_desc">출시일</span>  <span class="game_info_value">${dto.game_release}</span>
                    </div>
                    <div class="menu">
                        <span class="game_info_desc">장르</span>  <span class="game_info_value">${dto.game_genre}</span>
                    </div>
                  
                    <div class="menu">
                        <span class="game_info_desc">플랫폼</span>  <span class="game_info_value">${dto.game_platform}</span>
                    </div>
                    <div class="menu">
                        <span class="game_info_desc">언어</span>  <span class="game_info_value">한국어</span>
                    </div>             

                </div>
                
<c:set var="sess" value="${sessionScope.user_id}"></c:set>
<c:out value="${sess}" />

<input type="hidden" value="${sess}" name="cart_user_id"	id="cart_user_id"> 
<input type="hidden" value="${dto.game_no}" id="cart_game_no" name="cart_game_no">
		
<button type="button" id="cartBtn2">ajax 장바구니</button>


                <div class="cart_Box">
                  <div class="cart_Btn"><a
		href="/addCart?cart_game_no=${dto.game_no}&cart_user_id=${sess}"
		id="cartBtn" style="color: white">CART</a></div>
                </div>
                
                  <div class="cart_Box">
                    
                    <div class="cartlist_Btn"><a href="/cartList?cart_user_id=${sess}" id="cartListBtn" style="color: white">CART LIST</a></div>
                </div>

            </div>  
    </div>
</div>	

	<%-- <c:set var="sess" value="${sessionScope.user_id}"></c:set>
	<c:out value="${sess}" />

	<input type="hidden" value="${sess}" name="cart_user_id"
		id="cart_user_id"> <input type="hidden" value="${dto.game_no}"
		id="cart_game_no" name="cart_game_no">
 
	

	
	<br> <a
		href="/addCart?cart_game_no=${dto.game_no}&cart_user_id=${sess}"
		id="cartBtn">장바구니</a><br>
	<!-- <a href="/cartList?game_no=${dto.game_no}" id="cartListBtn">장바구니 목록</a> -->
	
	<div>
			<label>주문번호</label>
		<input type="text" id="order_no" /> 
			<label>게임 이름</label>
		<input type="text" id="game_title" /> 
			<label>주문자 아이디</label>
		<input type="text" id="buyer_name" /> 
			<label>가격</label>
		<input type="text" id="amount" /> 
		<input type="button" id="request"
			onclick="requestPay()" value="제출" />

	</div> --%>

</form>

<jsp:include page="../include/page_bottom.jsp" flush="false" />

<script type="text/javascript" src="${path}/resources/js/cart.js"></script>
<script src="${path}/resources/js/payTest.js" type="text/javascript"></script>


