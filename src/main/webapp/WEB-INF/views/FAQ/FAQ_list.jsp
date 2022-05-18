<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${path}/resources/css/indexstyle.css">
    <link rel="stylesheet" href="${path}/resources/css/FAQ01.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR:wght@300&display=swap');
        </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <!-- 이미지 슬라이드 -->
    <script>
        $(document).ready(function(){
            $('.sildeGameImg').bxSlider({
            auto: true,
            speed: 500,
            captions: true,
            });
        });
    </script>
    <!-- 이미지 슬라이드 CSS (오버라이딩)-->
    <style>
        /* 슬라이드 박스 */
        .bx-wrapper {
        border: 0;
        background: #fbfbfb;
        box-shadow: none;
        }
        /* 캡션 디자인 */
        .bx-wrapper .bx-caption {
        position: absolute;
        bottom: 0;
        left: 0;
        background: rgb(178, 178, 178);
        background: rgba(80, 80, 80, 0.532);
        width: 100%;
        height: 50px;
        text-align: center;
        line-height: 30px;
        }
        .bx-wrapper .bx-caption:hover {
            background-color: #07553b72;
        }
        .bx-wrapper .bx-caption span {
        color: #fff;
        font-family: Arial;
        display: block;
        font-size: .85em;
        padding: 10px;
        }
    </style>
    <!-- 폰트 어썸 5.0 -->
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />
</head>
    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/3636334fb2.js" 
    crossorigin="anonymous"></script>

    <!-- 전체 감싸주는 태그 -->
    <div id="wrap">

        <!-- 헤드 -->
        <div id="header">


            <!-- 최상단 배너 -->
            <div class="topBanner">
                <span><a href="#" class="bannerText"> 🌏 지구의 날 기념! 최대 90% 할인! 🌏 </a></span>
            </div>


            <!-- 타이틀 및 유저박스 -->
            <div id="titleBox">
                <div id="titleLogo">
                    <span class="iTag"><i class="fa-solid fa-frog fa-bounce fa-lg"></i></span>
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
              <c:set var="sess" value="${sessionScope.user_id}"/>
                <div class="userBox">
					<span> <a href="/userMyPage"> <c:out value="${sess}"/> </a></span>
					
						<c:if test="${sessionScope.user_id eq 'admin'}">
							<span><a href="/admin">관리</a></span>
						</c:if>
						<c:if test="${sessionScope.user_id ne 'admin'}">
							<span><a href="/cartList?cart_user_id=${sess}">장바구니</a></span>
						</c:if>
						
						
                    
                    <span><a href="/userLogout">로그아웃</a></span>
                </div>
              </c:if>
              
             
              
            </div>
        </div>
        
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
                            <li><a href="noticeList">공지사항</a></li>
                            <li><a href="questionList">1 : 1 문의</a></li>
                            <li><a href="indexFAQ">문의내역</a></li>
                        </ul></li>
                </ul>

            

            </div>

        </div>
        


<div  class="headFQA">
    <div class="headFQA_box1">FroGame 고객센터</div>

    
    <div class="search_bar">
        
                  
    <form action="FAQSearch" autocomplete="off">
        <div class="searchBar">  
            <div> <input class="basic-input" type="text" name="search" id="search" placeholder="검색어를 입력하세요" > </div>
            <div> <button type="submit" class="icon" ><i class="fa-solid fa-magnifying-glass" style="color:lightgray"></i></button>   </div>
        </div>
    </form>    

    </div>
</div>



	
		
	<div class="layout_content_head">찾으시는 질문이 있으신가요?</div>

	<c:forEach var="list" items="${list}">

    <div class="layout_content_box">

      <details>   
            <summary><span class="QQ">Q. </span>${list.FAQ_title}</summary><br><br>
           <div class="details_content"> 
               ${list.FAQ_content}
 </div>
        </details>   

		</div>
</c:forEach>


<br><br>

</body>
</html>