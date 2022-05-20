<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 게시판 목록</title>
<link rel="stylesheet" href="${path}/resources/css/noticeList.css">
<link rel="stylesheet" href="${path}/resources/css/boardList.css">
<style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR&family=Playfair+Display:wght@500&display=swap');
    </style>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

</head>
<body>
<script src="https://kit.fontawesome.com/3636334fb2.js" crossorigin="anonymous"></script>


  <jsp:include page="../include/page_top.jsp" flush="false" />



<div class="noticeList">
    <div class="notice_head">문의게시판</div>
            
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
            <td class="td1">${list.question_no}</td>
            <td class="td2"><a href="/questionRead?question_no=${list.question_no}">${list.question_title}</a> </td>
            <td class="td3">${list.question_writer}</td>
            <td class="td4"><fmt:formatDate value="${list.question_regdate}" pattern="yyyy-MM-dd"/></td>
            <td class="td5">${list.question_count}</td>
           
        </tr>
        </c:forEach>
      </tbody>
    </table>
     <input type="hidden" name="question_writer" id="question_writer" value="${sessionScope.user_id}"> 
    <div class="Btn"> <a href="/questionInsert" class="noticeInsertBtn" id="questionInsertBtn">글쓰기</a> </div>
    
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
	</form>

<jsp:include page="../include/page_bottom.jsp" flush="false" />



<script type="text/javascript" src="${path}/resources/js/questionList.js"></script>
</body>
</html>