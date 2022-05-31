<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게임 목록</title>
    <link rel="stylesheet" href="${path}/resources/css/game_list.css">
    <link rel="stylesheet" href="${path}/resources/css/content_frame.css">
    <!-- 구글 웹 폰트 (노토 산스)-->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap');
        </style>
</head>
<body>

<c:set value="${sessionScope.user_id}" var="sess"/>

    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>
		
		<!-- 제이쿼리 -->
		<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
    
    
    <jsp:include page="../include/page_top.jsp" flush="false" />

	<div id="contentFrame">
	
    <div class="container">

        <div class="menu_option">
            <div class="select">
                <select name="type" id="test">
                    <option value="R"
								<c:out value="${pageMaker.cri.type eq 'R'?'selected':'' }"/>>최신순</option>
							<option value="S"
								<c:out value="${pageMaker.cri.type eq 'S'?'selected':'' }"/>>인기순</option>
							<option value="P"
								<c:out value="${pageMaker.cri.type eq 'P'?'selected':'' }"/>>가격순</option>
						</select>
                </select>
            </div>

            <div class="search_area">
                <input class="basic-input" type="text" name="keyword" id="keyword" placeholder="검색어를 입력하세요" value="${pageMaker.cri.keyword }" autocomplete="off">
                <button type="submit" class="s_btn"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>
        </div>

        <div class="list_content">
            
            <c:forEach var="img" items="${img}" varStatus="status">

            
            <div class="g_info_wrap">

                <div class="g_img">
                    <a href="gameReadTest?game_no=${list[status.index].game_no}">
                        <img src="${img}" width="250px"></a>
                </div>

                <div class="g_subject_genre">
                    <div  class="g_sub">
                        <a href="gameReadTest?game_no=${list[status.index].game_no}">${list[status.index].game_title}</a>
                    </div>
                    <div class="g_genre_plat">
                        <div>
                            <span>${list[status.index].game_genre}</span>
                        </div>
                        <div>
                            <span>${list[status.index].game_platform}</span>
                        </div>
                        <div>
                            <span>한국어</span>
                        </div>
                    </div>
                </div>

                <div class="g_price">
                    
                    <c:if test="${list[status.index].game_price != 0}">
								<span>₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${list[status.index].game_price}" /></span>
							</c:if>
							
							<c:if test="${list[status.index].game_price == 0}">
								<span>Free To Play</span>
							</c:if>

                </div>
            </div>

            </c:forEach>

            <div class="pageInfo_wrap">
                <div class="pageInfo_area">
                    <ul id="pageInfo" class="pageInfo">
                        <!-- 이전페이지 버튼 -->
                        <c:if test="${pageMaker.prev}">
                            <li class="pageInfo_btn previous">
                            <a href="${pageMaker.startPage-1}">이전</a></li>
                        </c:if>
                        <!-- 각 번호 페이지 버튼 -->
                        <c:forEach var="num" begin="${pageMaker.startPage}"
                            end="${pageMaker.endPage}">
                            <li class="pageInfo_btn"><a href="${num}">${num}</a></li>
                        </c:forEach>
                        <!-- 다음페이지 버튼 -->
                        <c:if test="${pageMaker.next}">
                            <li class="pageInfo_btn next"><a
                                href="${pageMaker.endPage + 1 }">다음</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
            <form id="moveForm" method="get">
                <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }"> 
                <input type="hidden"name="amount" value="${pageMaker.cri.amount }"> 
                <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
                <input type="hidden" name="type" value="${pageMaker.cri.type }">
            </form>

        </div>

    </div>
    
    </div>
    
    <jsp:include page="../include/page_bottom.jsp" flush="false" />
    <script type="text/javascript" src="${path}/resources/js/game_list.js"></script>
</body>
</html>