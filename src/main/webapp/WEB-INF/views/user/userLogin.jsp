<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${path}/resources/css/loginstyle.css">
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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

</head>
<body>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>

	<div id="allWrapper">
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
			<div class="userBox">
				<span><a href="/userLogin"><i
						class="fa-solid fa-user-check"></i></a></span> <span><a
					href="/userRegist"><i class="fa-solid fa-user-plus"></i></a></span> <span><i
					class="fa-solid fa-cart-arrow-down"></i></span>
			</div>
		</div>

		<!-- 메인 메뉴 -->
		<div id="mainMenu">
			<div class="menuBox">
				<div class="gameDropDownMenu">
					<div>
						<span>게임</span>
					</div>
					<div>
						<span>같이 해용</span>
					</div>
					<div>
						<span>공지사항</span>
					</div>
					<div>
						<span>고객센터</span>
					</div>
				</div>
			</div>
		</div>

		<!-- 로그인 창 -->

		<div id="loginFrame">

			<div class="loginTitle">로그인</div>

			<form action="userLogin" method="post" id="userLoginForm"
				name="userLoginForm">
				<div class="loginForm">
					<table class="loginTableForm">
						<tr class="userIDinput">
							<td><label for="user_id">아이디</label></td>
							<td><input type="text" name="user_id" id="user_id"
								placeholder="아이디를 입력해주세요." autocomplete="off"></td>
						</tr>
						<tr class="userPWinput">
							<td><label for="user_pw">비밀번호</label></td>
							<td><input type="password" name="user_pw" id="user_pw"></td>
						</tr>
					</table>

					<div class="loignBtnBox">
						<input type="submit" value="로그인" id="loginBtn">
					</div>
				</div>
			</form>

		</div>

		<div id="footer">
			<div class="copyRight">
				<div class="frogGameCopyRight">
					<i class="fa-solid fa-frog fa-bounce fa-lg"></i>
					<p>© 2022. FROGAME Inc. All rights reserved.</p>
					<p>FROGame 로고의 모든 저작권은 FROGame의 소유이며, 기타 브랜드 또는 제품 이름은 해당 소유자의
						상표입니다.</p>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${path}/resources/js/login.js"></script>
</body>
</html>