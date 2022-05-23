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
    <link rel="stylesheet" href="${path}/resources/css/admin_game_insert.css">
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

---------
${sessionScope.user_level}
---------

	 <c:if test="${not empty sessionScope.user_id}">
     	<c:set var="sess" value="${sessionScope.user_id}"/>
     		<c:if test="${sessionScope.user_id eq 'admin'}">
     		
    <div id="wrap">

        <div id="sideBar">

            <div class="homeLogo">
                <a href="/"><i class="fa-solid fa-frog fa-bounce"></i></a>
            </div>

            <div class="menuIcon">
            
            	<!-- 유저 목록 -->
                <div class="user_list" data-tab="tab-1">
                    <i class="fa-solid fa-user-check"></i>
                </div>
                
                <!-- 게임 목록 -->
                <div class="game_list" data-tab="tab-2">
                    <i class="fa-solid fa-list-ul"></i>
                </div>
                
                <!-- 게임 등록 -->
                <div class="game_insert" data-tab="tab-3">
                    <i class="fas fa-edit"></i>
                </div>
                
                <!-- 유저 목록 -->
                <div class="three" data-tab="tab-4">
                    <a href="admin_user_list"><i class="fa-solid fa-bullhorn"></i></a>
                </div>
                
                <!-- 유저 목록 -->
                <div class="four" data-tab="tab-5">
                    <i class="fas fa-question"></i>
                </div>
                
                <!-- 유저 목록 -->
                <div class="five" data-tab="tab-6">
                    <i class="fas fa-comment"></i>
                </div>
            </div>

        </div>

        <div id="content">

            <div class="contentTop">

                <div class="dashboard_main">
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
                        <span><c:out value="${sess}"/></span>
                    </div>
                </div>
                

            </div>

            <div class="main">

                <div class="mainBox">
                    <h1>main page</h1>
                </div>

            </div>
            
        </div>
    </div>
    
    </c:if>
    
    	<!--  유저가 관리자 페이지에 점근시  -->
	    <c:if test="${sessionScope.user_id ne 'admin'}">
	    	<span> 잘못된 접근입니다. </span>
	    </c:if>
    
	
	</c:if>

 <script type="text/javascript" src="${path}/resources/js/admin.js"></script>
  <script type="text/javascript" src="${path}/resources/js/gameInsert.js"></script>
</body>

</html>