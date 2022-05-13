<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${path}/resources/css/userMyPage.css">
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</head>
<body>
	<jsp:include page="../include/page_top.jsp" flush="false"/>

		<!-- 회원 정보 수정 페이지 -->

		<div id="modifyFrame">

			<div class="modifyTitle">회원정보 수정</div>

			<div class="modifyForm">
				<form action="userUpdate" method="post" id="userUpdateForm"
					name="userUpdateForm" autocomplete="off">
					<table class="modifyTableForm">

						<tr class="userPWinput">
							<td><label for="user_pw">기존 비밀번호</label></td>
							<td><input type="password" name="old_user_pw" id="old_user_pw"></td>
						</tr>
						<tr class="userPWinput">
							<td><label for="user_pw">변경 비밀번호</label></td>
							<td><input type="password" name="new_user_pw" id="new_user_pw"></td>
						</tr>
						<tr class="userRePwInput">
							<td><label for="user_rePw">변경 비밀번호 확인</label></td>
							<td><input type="password" name="new_user_rePw" id="new_user_rePw"></td>
						</tr>
						<tr class="userNickInput">
							<td><label for="user_nick">닉네임</label></td>
							<td><input type="text" name="new_user_nick" id="new_user_nick"></td>
							<td><button type="button" id="nickDupBtn">중복 확인</button>
						</tr>
						<tr class="userEmailInput">
							<td><label for="user_email">이메일</label></td>
							<td><input type="text" name="new_user_email" id="new_user_email"></td>
						</tr>
					</table>

					<div class="modifyBtnBox">
						<input type="button" value="수정하기" id="updateBtn">
					</div>
				</form>
			</div>
		</div>

<jsp:include page="../include/page_bottom.jsp" flush="false"/>

	<script type="text/javascript" src="${path}/resources/js/myPage.js"></script>
</body>
</html>