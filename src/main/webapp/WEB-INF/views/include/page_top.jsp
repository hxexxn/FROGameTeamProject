<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/page_top.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR&family=Playfair+Display:wght@500&display=swap')
	;
</style>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap')
	;
</style>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>

		<!-- 최상단 -->
		<div class="topBanner">
			<span><a href="#" class="bannerText"> 🌏 지구의 날 기념! 최대 90%
					할인! 🌏 </a></span>
		</div>

		<!-- 타이틀 및 유저박스 -->
		<div id="wrapper">
			<div id="titleLogo">
				<span class="iTag"><i
					class="fa-solid fa-frog fa-bounce fa-lg"></i></span>
			</div>
			<div class="mainTitle">
				<a href="/" class="froGame">FROGame</a>
			</div>
			<!-- 비회원 -->
              <c:if test="${empty sessionScope.user_id}">
                <div class="userBox">
                    <span><a href="/userLogin">로그인</a></span>
                    <span><a href="/userRegist">회원가입</a></span>
                    <span>장바구니</span>
                </div>
              </c:if>
              
              <!-- 회원 로그인 -->
              <c:if test="${not empty sessionScope.user_id}">
              <c:set var="sess" value="${sessionScope.user_id}"></c:set>
                <div class="userBox">
                    <span> <c:out value="${sess}"/></span>
                    <span><a href="/cartList?cart_user_id=${sess}">장바구니</a></span>
                    <span><a href="/userLogout">로그아웃</a></span>
                </div>
              </c:if>
			</div>

		<!-- 메인 메뉴 -->
		<!-- 네비게이션 및 이미지 슬라이드 -->
        <div id="navBar">
            <!-- 메인 메뉴 -->
            <div id="mainMenu">
                
                <ul id="menuTitle">

                    <li><a href="#">인기 게임</a>
                        <ul id="subMenu">
                            <li><a href="#">게임</a></li>
                            <li><a href="#">게임</a></li>
                            <li><a href="#">게임</a></li>
                        </ul>
                    </li>

                    <li><a href="#">신작 게임</a>
                        <ul id="subMenu">
                            <li><a href="#">신작게임</a></li>
                            <li><a href="#">신작게임</a></li>
                            <li><a href="#">신작게임</a></li>
                        </ul>
                    </li>
                    <li><a href="gameList">게임</a>
                        <ul id="subMenu">
                            <li><a href="#">신작게임</a></li>
                            <li><a href="#">신작게임</a></li>
                            <li><a href="#">신작게임</a></li>
                        </ul></li>
                    <li><a href="noticeList">공지사항</a>
                        <ul id="subMenu">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">1 : 1 문의</a></li>
                            <li><a href="#">문의내역</a></li>
                        </ul></li>
                </ul>

            </div>

        </div>
</body>
</html>