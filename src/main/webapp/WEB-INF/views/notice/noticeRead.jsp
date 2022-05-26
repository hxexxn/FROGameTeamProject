<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시판 글쓰기</title>
<link rel="stylesheet" href="/resources/css/read.css">
<style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR&family=Playfair+Display:wght@500&display=swap');
    </style>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <script src="https://kit.fontawesome.com/3636334fb2.js" 
    crossorigin="anonymous"></script>

<jsp:include page="../include/page_top.jsp" flush="false" />


<div class="content">

    <div class="content_box" >
        <div class="read_header">
             <div class="read_header_box">공지사항</div>
            
        </div>
        
        <div class="read_header_title">
            
               <div class="read_header_title1">
                ${dto.notice_title}
            </div>
        </div>
        <div class="read_header_count_regdate">
         <div class ="read_header_count_regdate_box1">
            
             	<div class ="read_header_count_regdate_box2">view : ${dto.notice_count}</div>
               <div class ="read_header_count_regdate_box2">date : <fmt:formatDate value="${dto.notice_regdate}" pattern="yyyy-MM-dd"/></div>
               <div class ="read_header_count_regdate_box2">writer : 관리자</div>
            </div>
        </div>

        <div class="read_header_content">
            <div class="read_header_content_box" style="white-space:pre-wrap; wrap=hard;">${dto.notice_content}</div>
        </div>
    </div>
    
    
    <!-- 대충 이런 광고 사진이 들어가는 형식 -->
    <div class="side_banner">
       
    </div>

</div>


<div class="Btn"> 
	<a href="/noticeList" class="noticeListBtn">목록</a>
	<c:if test="${sessionScope.user_nick == dto.notice_writer}">		
 		<a href="/noticeDelete?notice_no=${dto.notice_no}" class="noticeDeleteBtn">삭제</a> 
 	<a href="/noticeUpdate?notice_no=${dto.notice_no}" class="noticeUpdateBtn">수정</a> 
	</c:if>
 	
</div>	


<jsp:include page="../include/page_bottom.jsp" flush="false" />

</body>
</html>