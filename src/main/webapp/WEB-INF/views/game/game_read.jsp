<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <link rel="stylesheet" href="${path}/resources/css/game_read.css">
   <link rel="stylesheet" href="${path}/resources/css/content_frame.css">
  
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
            slideWidth: 1000
            });
        });
    </script>
    
     <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        
  <jsp:include page="../include/page_top(no_jquery).jsp" flush="false" />
  
  <!-- 장바구니 폼 -->
  <form action="addCart2" method="post" id="addCartFrom">
  
  <!-- 게임 상세 보기 -->
  <div id="contentFrame">
  
  <div id="container">

        <div class="game_name">
            <span>${dto.game_title}</span>
        </div>

        <div class="game_slide_info">

            <div class="img_slide sildeGameImg">
               		<div> <img src="${imgList[0].image}"> </div>
	              <div> <img src="${imgList[1].image}"> </div>
	              <div> <img src="${imgList[2].image}"> </div>
	              <div> <img src="${imgList[3].image}"> </div>
	              <div> <img src="${imgList[4].image}"> </div>
            </div>

            <div class="game_side_info">
                <div class="g_menu">
                    <span class="span_name">가격 </span> <span class="span_result">₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${dto.game_price}" /></span>
                </div>

                <div class="span_line"></div>

                <div class="g_menu">
                    <span class="span_name">출시일 </span> <span class="span_result">${dto.game_release}</span>
                </div>

                <div class="span_line"></div>

                <div class="g_menu">
                    <span class="span_name">장르</span> <span class="span_result">${dto.game_genre}</span>
                </div>

                <div class="span_line"></div>

                <div class="g_menu">
                    <span class="span_name">플랫폼</span> <span class="span_result">${dto.game_platform}</span>
                </div>

                <div class="span_line"></div>

                <div class="g_menu">
                    <div class="span_name">언어</div> <span class="span_result">한국어</span>
                </div>

                <div class="span_line"></div>

		<c:set var="sess" value="${sessionScope.user_id}"></c:set>
		
		<input type="hidden" value="${sess}" name="cart_user_id"	id="cart_user_id"> 
		<input type="hidden" value="${dto.game_no}" id="cart_game_no" name="cart_game_no">

                <div class="cart_box">
                    <a href="#" type="button" class="cart_Btn" id="cartBtn2">
                        장바구니에 담기
                    </a>
                    <a href="/cartList?cart_user_id=${sess}" class="cartlist_Btn" id="cartListBtn">
                        장바구니 목록
                    </a>
                </div>
            </div>
        </div>

        <div class="game_main_info">
            <div class="info_name">
                <div class="tab_menu1">게임 정보</div>
                <div class="tab_menu2">게임 사양</div>
            </div>

            <div class="info_content">
                
                <div class="menu">
                    <div class="game_detail">
                        <span>상세 게임 정보</span>
                    </div>
                    <div class="game_content" style="white-space:pre-wrap; wrap:hard;">${dto.game_info}</div>
                </div>

                <div class="menu2">

                    <div class="os_container">
                        <div class="os">
                            <div class="os_title">최소 사양</div>

                            <div class="os_type">
                                <div class="os_name">운영체제</div> <div class="os_content">${dto.game_min_os}</div>
                            </div>
                            
                            <div class="os_type">
                                <div class="os_name">프로세서</div> <div class="os_content">${dto.game_min_cpu}</div><br/>
                            </div>

                            <div class="os_type">
                                <div class="os_name">메모리</div> <div class="os_content">${dto.game_min_ram}</div>
                            </div>

                            <div class="os_type">
                                <div class="os_name">그래픽</div> <div class="os_content">${dto.game_min_vga}</div>
                            </div>

                            <div class="os_type">
                                <div class="os_name">Direct X</div> <div class="os_content">${dto.game_min_dirX}</div>
                            </div>

                            <div class="os_type">
                                <div class="os_name">필요 저장 공간</div> <div class="os_content">${dto.game_min_ssd}</div>
                            </div>
                        </div>

                        <div class="os">
                            <div class="os_title">권장 사양</div>

                            <div class="os_type">
                                <div class="os_name">운영체제</div> <div class="os_content">${dto.game_std_os}</div>
                            </div>
                            
                            <div class="os_type">
                                <div class="os_name">프로세서</div> <div class="os_content">${dto.game_std_cpu}</div>
                            </div>

                            <div class="os_type">
                                <div class="os_name">메모리</div> <div class="os_content">${dto.game_std_ram}</div>
                            </div>

                            <div class="os_type">
                                <div class="os_name">그래픽</div> <div class="os_content">${dto.game_std_vga}</div>
                            </div>

                            <div class="os_type">
                                <div class="os_name">Direct X</div> <div class="os_content">${dto.game_std_dirX}</div>
                            </div>

                            <div class="os_type">
                                <div class="os_name">필요 저장 공간</div> <div class="os_content">${dto.game_std_ssd}</div>
                            </div>
                        </div>
                    </div>

                    <div class="sys_msg">
                        <span>※ 시스템 요구 사항은 출시 버전을 기준으로 하며, 컨텐츠 추가와 업데이트로 인한 변경 사항이 있을 수 있습니다.</span>
                    </div>
                </div>
            </div>
        </div>

    </div>
  </div>
  </form>

<jsp:include page="../include/page_bottom.jsp" flush="false" />

<script type="text/javascript" src="${path}/resources/js/cart.js"></script>
<script src="${path}/resources/js/payTest.js" type="text/javascript"></script>