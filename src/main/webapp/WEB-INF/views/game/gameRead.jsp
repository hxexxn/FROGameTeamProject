<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <link rel="stylesheet" href="${path}/resources/css/gameRead.css">
  
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <!-- 이미지 슬라이드 -->
    <script>
        $(document).ready(function(){
            $('.sildeGameImg').bxSlider({
            auto: true,
            speed: 500,
            captions: true,
            });
        });
    </script>
  <jsp:include page="../include/page_top(no_jquery).jsp" flush="false" />

<form action="addCart2" method="post" id="addCartFrom">

		
	<div class="head_title">${dto.game_title}</div>
	
	<div class="big_wrap">    

    <div class="left_box">
            <div class="head_photo sildeGameImg">
              <div> <img src="${imgList[0].image}">	</div>
              <div> <img src="${imgList[1].image}"> </div>
              <div> <img src="${imgList[2].image}"> </div>
              <div> <img src="${imgList[3].image}"> </div>
              <div> <img src="${imgList[4].image}"> </div>
            </div>
            <div class="content_wrap">

                <!-- 게임정보입력란 -->
                <div class="content_box">
                    <h1>게임정보</h1>
                    <div style="white-space:pre-wrap; wrap:hard;">${dto.game_info}</div>
                </div>

<!-- 사양 넣는곳 -->
                <div class="content_box">
                    <h1>최소</h1>  
                    <div>운영체제: ${dto.game_min_os}</div>
                    <div>프로세서: ${dto.game_min_cpu}</div>
                    <div>메모리: ${dto.game_min_ram}</div>
                    <div>그래픽: ${dto.game_min_vga}</div>
                    <div>DirectX: ${dto.game_min_dirX}</div>
                    <div>저장공간: ${dto.game_min_ssd}</div>
                    <br>


                    <h1>권장</h1>
                    <div>운영체제: ${dto.game_std_os}</div>
                    <div>프로세서: ${dto.game_std_cpu}</div>
                    <div>메모리: ${dto.game_std_ram}</div>
                    <div>그래픽: ${dto.game_std_vga}</div>
                    <div>DirectX: ${dto.game_std_dirX}</div>
                    <div>저장공간: ${dto.game_std_ssd}</div> 
                    <br><br><br>
                    
                    ※ 시스템 요구 사항은 출시 버전을 기준으로 하며, 컨텐츠 추가와 업데이트로 인한 변경 사항이 있을 수 있습니다.

                </div>
        
        
            </div>

            
    </div>

    <div class="right_box">
    <br>
            <div class="buy">
                <div class="price">
                    <div class="menu"> 
                        <span class="pre_price">게임번호</span><span class="bf_price">${dto.game_no}</span>
                    </div>
                    <div class="menu"> 
                        <span class="pre_price">판매가</span><span style="color: #f0ad4e;"><fmt:formatNumber type="number" maxFractionDigits="3"
			value="${dto.game_price}" /></span><span class="pre_price">원</span>
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

<input type="hidden" value="${sess}" name="cart_user_id"	id="cart_user_id"> 
<input type="hidden" value="${dto.game_no}" id="cart_game_no" name="cart_game_no">
		

				<div class="cart_Box">
                  <a href="#" class="cart_Btn" type="button" id="cartBtn2" style="color: white">CART</a>
              </div>

                  <div class="cart_Box">
                    
                    <a href="/cartList?cart_user_id=${sess}" id="cartListBtn" style="color: white" class="cartlist_Btn">CART LIST</a>
                </div>

            </div>  
    </div>
</div>	

</form>

<jsp:include page="../include/page_bottom.jsp" flush="false" />

<script type="text/javascript" src="${path}/resources/js/cart.js"></script>
<script src="${path}/resources/js/payTest.js" type="text/javascript"></script>


