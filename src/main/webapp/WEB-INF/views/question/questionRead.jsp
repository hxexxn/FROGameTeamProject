<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 게시판 </title>
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
            <a href="#" class="froGame">FROGame</a>
        </div>
        <div class="userBox">
            <span><i class="fa-solid fa-user-check"></i></span>
            <span><i class="fa-solid fa-user-plus"></i></span>
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
         		<div class ="read_header_count_regdate_box2">view :</div>
               <div class ="read_header_count_regdate_box2">date : <fmt:formatDate value="${dto.question_regdate}" pattern="yyyy-MM-dd"/></div>
               <div class ="read_header_count_regdate_box2">writer : ${dto.question_writer}</div>
        	</div>
        </div>

        <div class="read_header_content">
            <div class="read_header_content_box">
                ${dto.question_content}
            </div>
           
        </div>
       
    </div>
    
    
    
    <!-- 대충 이런 광고 사진이 들어가는 형식 -->
    <div class="side_banner">
       
    </div>

</div>
	 <div class="Btn"> <a href="/questionList" class="noticeListBtn">목록</a></div>
	 
	 
	




<script type="text/javascript" src="${path}/resources/js/questionRead.js"></script>
</body>
</html>