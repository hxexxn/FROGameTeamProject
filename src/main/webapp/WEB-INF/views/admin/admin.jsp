<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${path}/resources/css/admin.css">
    <link rel="stylesheet" href="${path}/resources/css/admin_userList.css">
    <link rel="stylesheet" href="${path}/resources/css/admin_gameList.css">
    <!-- 폰트 어썸 5.0 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <!-- 구글 웹 폰트 -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka&family=Noto+Sans+KR:wght@300&family=Roboto:wght@300&display=swap');
        </style>
</head>

<body>

    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/3636334fb2.js" 
    crossorigin="anonymous"></script>

    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/3636334fb2.js" crossorigin="anonymous"></script>

    <div id="wrap">

        <div id="sideBar">

            <div class="homeLogo">
                <a href="/"><i class="fa-solid fa-frog fa-bounce"></i></a>
            </div>

            <div class="menuIcon">
                <div class="one">
                    <i class="fa-solid fa-user-check"></i>
                    <span>Account</span>
                </div>
                <div class="two">
                    <i class="fa-solid fa-list-ul"></i>
                    <span>Game</span>
                </div>
                <div class="three">
                    <i class="fa-solid fa-bullhorn"></i>
                    <span>Notice</span>
                </div>
                <div class="four">
                    <i class="fas fa-question"></i>
                    <span>Q%A</span>
                </div>
                <div class="five">
                    <i class="fas fa-comment"></i>
                    <span>1:1</span>
                </div>
            </div>

        </div>

        <div id="content">

            <div class="contentTop">

                <div class="siteUrl">
                    <span>Dashboard</span>
                </div>

                <div class="topLeftBox">
                    <div class="searchBar">
                        <input type="search" id="admin_search" name="admin_search">
                    </div>
                </div>
                
                <div class="topRightBox">
                    <div class="profile">

                    </div>

                    <div class="adminInfo">
                        <span></span>
                    </div>
                </div>
                

            </div>

            <div class="main">

                <div class="mainBox">
                    <h1>main page</h1>
                </div>
                <div class="oneBox">
                
                	<!-- 회원 목록 -->
                	
                	    <div id="wrap2">

					        <div class="bbs_title">
					            <span>현재 가입한 유저 목록</span>
					        </div>
					
					        <div class="list_title">
					            <div class="user_number">번호</div>
					            <div class="user_id">아이디</div>
					            <div class="user_nick">닉네임</div>
					            <div class="user_regdate">가입일</div>
					            <div class="user_adult">연령</div>
					            <div class="user_delete"></div>
					        </div>
					        
					   <c:forEach var="userList" items="${userList}">
					
					        <div class="list">
					            <div class="user_number">${userList.user_no}</div>
					            <div class="user_id">${userList.user_id}</div>
					            <div class="user_nick">${userList.user_nick}</div>
					            <div class="user_regdate"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${userList.user_regdate}"/></div>
					            <div class="user_adult">${userList.user_adultcheck}</div>
					            <div class="user_delete"><a href="/userDelete?user_no=${userList.user_no}">Delete</a></div>
					        </div>
					        
					    </c:forEach>
					    </div>
					
					
                </div> <!--  one box div 끝. -->
    
                <div class="twoBox">
                    <!-- 게임 목록 출력 -->
                    
                    <div id="wrap2">

				        <div class="bbs_title">
				            <span>현재 판매 중인 게임 목록</span>
				        </div>
				
				        <div class="list_title">
				            <div class="game_number">번호</div>
				            <div class="game_title">제목</div>
				            <div class="game_price">가격</div>
				            <div class="game_genre_no">장르</div>
				            <div class="game_regdate">등록일</div>
				            <div class="game_sellcount">판매량</div>
				            <div class="game_adult">연령</div>
				            <div class="game_delete"></div>
				        </div>
				        
				        <c:forEach var="gameList" items="${gameList}">
				        
				        	<div class="list">
					            <div class="game_number">${gameList.game_no}</div>
					            <div class="game_title">${gameList.game_title}</div>
					            <div class="game_price">${gameList.game_price}</div>
					            <div class="game_genre_no">${gameList.game_genre}</div>
					            <div class="game_regdate"><fmt:formatDate pattern="yy-MM-dd HH:mm" value="${gameList.game_regdate}"/></div>
					            <div class="game_sellcount">${gameList.game_sellcount}</div>
					            <div class="game_adult">${gameList.game_adultcheck}</div>
					            <div class="game_delete"><a href="gameDelete?game_no=${gameList.game_no}">삭제</a></div>
				        	</div>
				        
				        </c:forEach>
				        
				        
				        
                    </div>
                    
                    
                    
                    
                    
                </div>

                <div class="threeBox">
                    <h1>세번째 페이지</h1>
                </div>

                <div class="fourBox">
                    <h1>네번째 페이지</h1>
                </div>

                <div class="fiveBox">
                    <h1>다섯번째 페이지</h1>
                </div>

            </div>
            
        </div>
    </div>

 <script type="text/javascript" src="${path}/resources/js/admin.js"></script>
</body>

</html>