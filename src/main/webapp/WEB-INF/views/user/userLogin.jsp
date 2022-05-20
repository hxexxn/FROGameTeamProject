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

<jsp:include page="../include/page_top.jsp" flush="false"/>

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
						<input type="submit" value="로그인" id="loginBtn" class ="over">
					</div>
				</div>
			</form>

		</div>

<jsp:include page="../include/page_bottom.jsp" flush="false"/>
	<script type="text/javascript" src="${path}/resources/js/login.js"></script>
</body>
</html>