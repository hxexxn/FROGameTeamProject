<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>인기 게임</title>
    <link rel="stylesheet" href="${path}/resources/css/game_hot_list.css">
    <link rel="stylesheet" href="${path}/resources/css/content_frame.css">
        <!-- 구글 웹 폰트 (노토 산스)-->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap');
        </style>
	 <!-- 폰트 어썸 5.0 -->
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />
</head>
<body>

<!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/3636334fb2.js" 
    crossorigin="anonymous"></script>
    
<jsp:include page="../include/page_top.jsp" flush="false" />


    <div id="contentFrame">

        <div class="container">

            <div class="best_head">
                <div class="head_text">
                	<p>인기 게임</p>
                </div>
                
				<div class="head_arrow">
					<i class="fa-solid fa-arrow-down"></i>
				</div>          
            </div>
            
            
            <div class="head_line"></div><br>

            <!-- 인기 게임 -->
            <div class="bestGameSection_01">

                <!-- 박스 하나 -->
                <c:forEach var="img" items="${img}" varStatus="status" begin="0" end="4">
	                <div class="bestGame-contentBox">
	                    <div class="bestGame-imgBox">
	                        	<img src="${img}" class="img">
	                    </div>
	                    <div class="bestGame-infoBox">
	                        <div class="bestGame-titleBox">
	                            <a href="gameReadTest?game_no=${list[status.index].game_no}">
	                            	<span>${list[status.index].game_title}</span>
	                            </a>
	                        </div>
	                        <div class="game_tag">
	                            <div class="genre">${list[status.index].game_genre}</div>
	                            <div class="platform">${list[status.index].game_platform}</div>
                        	</div>
	                        <div class="bestGame-info">
	                        
	                        	<c:if test="${list[status.index].game_price != 0}">
	                            	<span>₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${list[status.index].game_price}" /></span>
	                            </c:if>
	                            
	                            <c:if test="${list[status.index].game_price == 0}">
	                            	<span>Free To Play</span>
	                            </c:if>

	                        </div>
	                    </div>
	                </div>
                </c:forEach>

            </div>

            <div class="bestGameSection_02">

                <!-- 박스 하나 -->
                <c:forEach var="img" items="${img}" varStatus="status" begin="5" end="9">
	                <div class="bestGame-contentBox">
	                    <div class="bestGame-ImgBox">
	                        <img src="${img}">
	                    </div>
	                    <div class="bestGame-infoBox">
	                        <div class="bestGame-titleBox">
	                            <a href="gameReadTest?game_no=${list[status.index].game_no}">
	                            	<span>${list[status.index].game_title}</span>
	                            </a>
	                        </div>
	                        <div class="game_tag">
	                            <div class="genre">${list[status.index].game_genre}</div>
	                            <div class="platform">${list[status.index].game_platform}</div>
                        	</div>
	                        <div class="bestGame-info">

	                           <c:if test="${list[status.index].game_price != 0}">
	                            	<span>₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${list[status.index].game_price}" /></span>
	                            </c:if>
	                            
	                            <c:if test="${list[status.index].game_price == 0}">
	                            	<span>Free To Play</span>
	                            </c:if>

	                        </div>
	                        
	                    </div>
	                </div>
	                
                </c:forEach>

            </div>
            
            <div class="bestGameSection_02">

                <!-- 박스 하나 -->
                <c:forEach var="img" items="${img}" varStatus="status" begin="10" end="14">
	                <div class="bestGame-contentBox">
	                    <div class="bestGame-ImgBox">
	                        <img src="${img}">
	                    </div>
	                    <div class="bestGame-infoBox">
	                        <div class="bestGame-titleBox">
	                            <a href="gameReadTest?game_no=${list[status.index].game_no}">
	                            	<span>${list[status.index].game_title}</span>
	                            </a>
	                        </div>
	                        
	                        <div class="game_tag">
	                            <div class="genre">${list[status.index].game_genre}</div>
	                            <div class="platform">${list[status.index].game_platform}</div>
                        	</div>
                        	
	                        <div class="bestGame-info">

	                           <c:if test="${list[status.index].game_price != 0}">
	                            	<span>₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${list[status.index].game_price}" /></span>
	                            </c:if>
	                            
	                            <c:if test="${list[status.index].game_price == 0}">
	                            	<span>Free To Play</span>
	                            </c:if>
	                           
	                        </div>
	                    </div>
	                </div>
                </c:forEach>

            </div>
        </div>
    </div>
    
    <jsp:include page="../include/page_bottom.jsp" flush="false" />

</body>
</html>