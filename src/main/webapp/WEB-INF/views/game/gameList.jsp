<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GameList</title>

<link rel="stylesheet" href="${path}/resources/css/style1.css">
<link rel="stylesheet" href="${path}/resources/css/gameList.css">
<link rel="stylesheet" href="${path}/resources/css/content_frame.css">

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR&family=Playfair+Display:wght@500&display=swap')
	;
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</head>

<body>

	<c:set var="sess" value="${sessionScope.user_id}" />

	<jsp:include page="../include/page_top.jsp" flush="false" />

	<div id="contentFrame">

		<div class="head flex">
			<div class="head-main"></div>
			<div class="head-sub"></div>
		</div>
		<div class="flex height-auto">
			<div class="board-main">
				<div class="search_wrap padding-top center">
					
					<div class="search_area">
					<select name="type" id="test" style="margin-right: 10px">
							<option value="R"
								<c:out value="${pageMaker.cri.type eq 'R'?'selected':'' }"/>>최신순</option>
							<option value="S"
								<c:out value="${pageMaker.cri.type eq 'S'?'selected':'' }"/>>인기순</option>
							<option value="P"
								<c:out value="${pageMaker.cri.type eq 'P'?'selected':'' }"/>>가격순</option>
						</select>
						<div> <input class="basic-input" type="text" name="keyword" id="keyword" placeholder="검색어를 입력하세요" value="${pageMaker.cri.keyword }" autocomplete="off"></div> 
            			<div><button type="submit" class="icon"><i class="fa-solid fa-magnifying-glass" style="color:lightgray"></i></button>  </div>
					</div>
						 
					

				</div>

				<div class="board-body padding-top">

					<c:forEach var="img" items="${img}" varStatus="status">
						<div class="board-content flex">
							<div class="game-content">
								<a href="gameReadTest?game_no=${list[status.index].game_no}"><img
									src="${img}" width="250px"></a>
							</div>
							<div class="game-content title">
								<a href="gameReadTest?game_no=${list[status.index].game_no}">${list[status.index].game_title}</a>
							</div>
							<div class="game-content">
							
							<c:if test="${list[status.index].game_price != 0}">
								<span>₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${list[status.index].game_price}" /></span>
							</c:if>
							
							<c:if test="${list[status.index].game_price == 0}">
								<span>Free To Play</span>
							</c:if>
							
							
							</div>
							<div class="game-content">
								<fmt:formatDate value="${list[status.index].game_release}" pattern="yyyy-MM-dd" />
							</div>
							<%-- <div class="game-content">
							<a href="gameDelete?game_no=${jjin[status.index].game_no}">삭제하기</a>
						</div>  --%>
						</div>
					</c:forEach>
					<div class="pageInfo_wrap">
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
					<form id="moveForm" method="get">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }"> 
						<input type="hidden"name="amount" value="${pageMaker.cri.amount }"> 
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
						<input type="hidden" name="type" value="${pageMaker.cri.type }">
					</form>
					
				</div>
			</div>
		</div>

	</div>

	<jsp:include page="../include/page_bottom.jsp" flush="false" />

	<script type="text/javascript" src="${path}/resources/js/gamepage.js"></script>

</body>
</html>