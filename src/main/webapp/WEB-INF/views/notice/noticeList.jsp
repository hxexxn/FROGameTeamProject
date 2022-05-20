<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시판 목록</title>
<link rel="stylesheet" href="${path}/resources/css/noticeList.css">

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
	<script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>
	
	<jsp:include page="../include/page_top.jsp" flush="false"/>


<div id="contentFrame">

	<div class="noticeList">
		<div class="notice_head">
			<div>공지사항</div>

			<!--   <form action="noticeSearch" autocomplete="off">
    	<span class="searchBar">  
   			<input class="basic-input" type="text" name="keyword" id="keyword"> 
   			<button type="submit" class="icon"><i class="fa-solid fa-magnifying-glass" style="color:lightgray"></i></button>   
    	</span>
    </form>
     -->

			<div class="search_area">
				<input class="basic-input" type="text" name="keyword" id="keyword"
					value="${pageMaker.cri.keyword }" autocomplete="off">
				<button class="icon">
					<i class="fa-solid fa-magnifying-glass" style="color: lightgray"></i>
				</button>
			</div>
		</div>

		<div class="noticeBox1">
			<table class="notice_table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${list}">
						<tr>
							<td class="td1">${list.notice_no}</td>
							<td class="td2"><a
								href="/noticeRead?notice_no=${list.notice_no}">${list.notice_title}</a>
							</td>
							<td class="td3">${list.notice_writer}</td>
							<td class="td4"><fmt:formatDate
									value="${list.notice_regdate}" pattern="yyyy-MM-dd" /></td>
							<td class="td5">${list.notice_count}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="Btn">

				<c:if test="${sessionScope.user_id == admin }">
					<input type="hidden" name="notice_writer" id="notice_writer"
						value="${sessionScope.user_nick}">
					<a href="/noticeInsert" class="noticeInsertBtn"
						id="contentSubmitBtnBox">글쓰기</a>
				</c:if>

			</div>

		</div>

	</div>

	
	
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

	
	<form id="moveForm" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
	</form>
	
	
</div>

	




<jsp:include page="../include/page_bottom.jsp" flush="false"/>

	<script type="text/javascript" src="${path}/resources/js/noticeList.js"></script>
</body>
</html>