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

    <div id="allWrapper">
        <!-- 최상단 -->
        <div class="topBanner">
            <span><a href="#" class="bannerText"> 🌏 지구의 날 기념! 최대 90% 할인! 🌏 </a></span>
        </div>

        <!-- 타이틀 및 유저박스 -->
        <div id="wrapper">
            <div id="titleLogo">
                <span class="iTag"><i class="fa-solid fa-frog fa-bounce fa-lg"></i></span>
            </div>
            <div class="mainTitle">
                <a href="/" class="froGame">FROGame</a>
            </div>
            <div class="userBox">
                <span><a href="/userLogin"><i class="fa-solid fa-user-check"></i></a></span>
                <span><a href="/userRegist"><i class="fa-solid fa-user-plus"></i></a></span>
                <span><i class="fa-solid fa-cart-arrow-down"></i></span>
            </div>
        </div>

        <!-- 메인 메뉴 -->
        <div id="mainMenu">
            <div class="menuBox">
                <div class="gameDropDownMenu">
                    <div><span>게임</span></div>
                    <div><span>같이 해용</span></div>
                    <div><span>공지사항</span></div>
                    <div><span>고객센터</span></div>
                </div>
            </div>
        </div>

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
	
${dto.question_comment_regdate}



</body>
</html>