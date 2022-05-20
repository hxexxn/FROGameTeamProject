<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 게시판 </title>
<link rel="stylesheet" href="/resources/css/questionread.css">
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
            <div class="read_header_box">문의</div>
            
        </div>
        
        <div class="read_header_title">
            <div class="read_header_title1">${dto.question_title} </div>
        </div>
        <div class="read_header_count_regdate">
         	<div class ="read_header_count_regdate_box1">
         		<div class ="read_header_count_regdate_box2">view : ${dto.question_count}</div>
               <div class ="read_header_count_regdate_box2">date : <fmt:formatDate value="${dto.question_regdate}" pattern="yyyy-MM-dd"/></div>
               <div class ="read_header_count_regdate_box2">writer : ${dto.question_writer}</div>
        	</div>
        </div>

        <div class="read_header_content">
            <div class="read_header_content_box" style="white-space:pre-wrap; wrap:hard;">${dto.question_content}</div>
           
        </div>
       
    </div>
    
    
    
    <!-- 대충 이런 광고 사진이 들어가는 형식 -->
    <div class="side_banner">
       
    </div>

</div>
	     <c:set var="admin_sess" value="${sessionScope.user_id}"/>
     <div class="reply_head"><span class="reply_head">댓글</span>
    
   
     </div>
 <div id="questionCommentZone" class="questionCommentZone">

 
</div>  

	 <div class="commentDD">
        <input type="hidden" name="question_board_no" id="question_board_no" value="${dto.question_no}">
        <input type="hidden" name="question_comment_writer" id="question_comment_writer" value="${admin_sess}" readonly="readonly">
         <textarea name="question_comment_content" id="question_comment_content" cols="30" rows="10" class="commentBox" maxlength = "3000"
         placeholder="댓글을 입력해주세요."></textarea>	 
	 </div>

     <div class="replyBtn">
     <input type="button" name="" id="questionCommentRegistBtn" value="등록하기" class="replyRegistBtn">
	 </div>
	 
	 <div class="reply_head">
	 <span class="Btn"> <a href="/questionList" class="noticeListBtn">목록</a></span>	  
	 
	 <c:if test="${sessionScope.user_id == dto.question_writer}">
		<span class="Btn"><a href="/questionUpdate?question_no=${dto.question_no}" class="noticeListBtn">수정</a> </span>
 		<span class="Btn"><a href="/questionDelete?question_no=${dto.question_no}" class="noticeListBtn">삭제</a> </span>
	</c:if>
 	
 	</div>
 	
 	
	 
	<jsp:include page="../include/page_bottom.jsp" flush="false" />


<script type="text/javascript" src="${path}/resources/js/questionRead.js"></script>

</body>
</html>