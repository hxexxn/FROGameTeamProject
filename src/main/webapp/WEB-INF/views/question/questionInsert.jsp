<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의하기</title>
    <link rel="stylesheet" href="${path}/resources/css/questionInsert.css"> 
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR&family=Playfair+Display:wght@500&display=swap');
    </style>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap');
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


	<form action="/questionInsert" method="post" id="contentInsertForm" name="contentInsertForm" autocomplete="off">
        <div class="contentFrame">         

            <div class="contentInsertBox">                
                    
                <div class="contentInsertBox01">
                    <input type="text" name="question_title" id="question_title" placeholder="제목을 입력해주세요." class="title_input" maxlength="200">  
                    <input type="hidden" name="question_writer" id="question_writer" value="${sessionScope.user_id}"> 
                </div>

                <div class="contentInsertBox02">
                <textarea rows="30" cols="100" name="question_content" id="question_content" class="content_input" wrap="hard" style="white-space:pre-wrap;"></textarea>
                </div>                              
                           
                <div class="contentSubmitBtnBox">
                    <input type="submit" value="글쓰기" id="contentSubmitBtnBox">
                    <input type="button" value="목록" id="ListBtnBox" onclick="location.href='/questionList'">
                </div>
                
            </div>
        </div>
	</form>
	 </div>
	


<jsp:include page="../include/page_bottom.jsp" flush="false" />


</body>
</html>