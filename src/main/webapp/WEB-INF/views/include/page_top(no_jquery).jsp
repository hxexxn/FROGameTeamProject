<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FROGame</title>
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

	<script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>

		<!-- μ΅μλ¨ -->
		<div class="topBanner">
			<span><a href="#" class="bannerText"> π μ§κ΅¬μ λ  κΈ°λ! μ΅λ 90%
					ν μΈ! π </a></span>
		</div>

		<!-- νμ΄ν λ° μ μ λ°μ€ -->
		<div id="wrapper">
			<div id="titleLogo">
				<span class="iTag"><i
					class="fa-solid fa-frog fa-bounce fa-lg"></i></span>
			</div>
			<div class="mainTitle">
				<a href="/" class="froGame">FROGame</a>
			</div>
			<!-- λΉνμ -->
              <c:if test="${empty sessionScope.user_id}">
                <div class="userBox">
                    <span><a href="/userLogin">λ‘κ·ΈμΈ</a></span>
                    <span><a href="/userRegist">νμκ°μ</a></span>
                    <span>μ₯λ°κ΅¬λ</span>
                </div>
              </c:if>
              
              <!-- νμ λ‘κ·ΈμΈ -->
              <c:if test="${not empty sessionScope.user_id}">
              <c:set var="nick" value="${sessionScope.user_nick}"/>
              <c:set var="sess" value="${sessionScope.user_id}"/>
                <div class="userBox">
					<span> <a href="userMyPage?user_id=${sessionScope.user_id}"> <c:out value="${nick}"/> </a></span>
					
						<c:if test="${sessionScope.user_id eq 'admin'}">
							<span><a href="/testadmin">λμλ³΄λ</a></span>
						</c:if>
						<c:if test="${sessionScope.user_id ne 'admin'}">
							<span><a href="/cartList?cart_user_id=${sess}">μ₯λ°κ΅¬λ</a></span>
						</c:if>
                    <span><a href="/userLogout">λ‘κ·Έμμ</a></span>
                </div>
              </c:if>
			</div>

		<!-- λ©μΈ λ©λ΄ -->
		<!-- λ€λΉκ²μ΄μ λ° μ΄λ―Έμ§ μ¬λΌμ΄λ -->
        <div id="navBar">
            <!-- λ©μΈ λ©λ΄ -->
            <div id="mainMenu">
                
                <ul id="menuTitle">

                     <li>
                    	<a href="game_hot_list">μΈκΈ° κ²μ</a>
                    </li>

                    <li>
                    	<a href="game_new_list">μ μ κ²μ</a>
                    </li>
                    
                    <li><a href="game_list?pageNum=1&amount=6&keyword=&type=R">κ²μ</a>
                        <ul id="subMenu">
                        
                            <li><a href="game_list?pageNum=1&amount=6&keyword=&type=A">FPS</a></li>
	                     <li><a href="game_list?pageNum=1&amount=6&keyword=&type=B">RPG</a></li>
	                     <li><a href="game_list?pageNum=1&amount=6&keyword=&type=C">κ³΅ν¬</a></li>
	                     <li><a href="game_list?pageNum=1&amount=6&keyword=&type=D">λ‘κ·ΈλΌμ΄ν¬</a></li>
	                     <li><a href="game_list?pageNum=1&amount=6&keyword=&type=E">μλ?¬λ μ΄μ</a></li>
	                     <li><a href="game_list?pageNum=1&amount=6&keyword=&type=F">μ΄λλ²€μ³</a></li>
	                     <li><a href="game_list?pageNum=1&amount=6&keyword=&type=G">μ λ΅</a></li>
	                     <li><a href="game_list?pageNum=1&amount=6&keyword=&type=H">μ‘μ</a></li>
	                     <li><a href="game_list?pageNum=1&amount=6&keyword=&type=I">κΈ°ν</a></li>
                            
                        </ul>
                      </li>
                        
                  <li><a href="noticeList">κ³΅μ§μ¬ν­</a>
                        <ul id="subMenu">
                            <li><a href="noticeList">κ³΅μ§μ¬ν­</a></li>
                            <li><a href="questionList">1 : 1 λ¬Έμ</a></li>
                            <li><a href="indexFAQ">λ¬Έμλ΄μ­</a></li>
                        </ul></li>
                </ul>

            </div>

        </div>
</body>
</html>