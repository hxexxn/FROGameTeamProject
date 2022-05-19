<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Game information</title>
<link rel="stylesheet" href="${path}/resources/css/gameInfo.css">
<link rel="stylesheet" href="${path}/resources/css/content_frame.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR:wght@300&display=swap')
	;
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<!-- 폰트 어썸 5.0 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>
<!-- 폰트 어썸 -->
<script src="https://kit.fontawesome.com/3636334fb2.js"
	crossorigin="anonymous"></script>

<c:set var="sess" value="${sessionScope.user_id}" />



<jsp:include page="../include/page_top.jsp" flush="false" />

<div class="head_title">${dto.game_title}</div>


<div class="big_wrap">    

    <div class="left_box">
            <div class="head_photo">
                <img src="${imgList[0].image}"> 
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
                        <span class="pre_price">판매가</span><span style="color: #f0ad4e;">${dto.game_price}</span>
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

                <div class="cart_Box">
                  <div class="cart_Btn">장바구니</div>
                </div>

            </div>  
    </div>
</div>



<jsp:include page="../include/page_bottom.jsp" flush="false" />

</body>
</html>