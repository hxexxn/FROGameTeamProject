<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ page</title>
<link rel="stylesheet" href="/resources/css/FAQ01.css">
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


<div  class="headFQA">
    <div class="headFQA_box1"><a href="/indexFAQ">FroGame 고객센터</a></div>

    
    <div class="search_bar">
        <em class="top-search-tit">
            <span>도움말 검색</span> 
        </em>
      
        <div class="top-search-form">
            <i class="fa fa-search" aria-hidden="true"></i>
            <input class="search-bar__input" type="search" placeholder="검색어를 입력하세요" id="searchKey" />
        </div>
        <input type="submit" value="Search" class="search-bar_search">
        
    </div>
</div>



<div class="layout_content_head">버그 제보</div>

<div class="layout_content">

    <div class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>게임에서 버그를 발견한 것 같아요.</summary><br><br>
            <div class="details_content">
                게임 이용 중 버그로 의심 가는 현상을 확인하셨다면,
문의를 통해 현상을 제보해주시기 바랍니다.<br><br>

버그 해당 현상에 대한 기재와 스크린샷을 첨부하시어 접수를 부탁드립니다.<br><br>
</div>
        </details>

    </div>
 </div>

</body>
</html>