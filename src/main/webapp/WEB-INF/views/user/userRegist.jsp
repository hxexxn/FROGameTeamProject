<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${path}/resources/css/registstyle.css">
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

		<!-- 이용 약관 -->
		<div id="siteGuide">
			<div class="personalInfo">
				<div class="guideTitle">
					<span>개인정보 수집 및 이용 (필수)</span>
				</div>

				<table class="guideTable">
					<tr>
						<th>목적</th>
						<th>항목</th>
						<th>보유기간</th>
					</tr>
					<tr>
						<td>이용자 식별</td>
						<td>아이디(이메일), 닉네임, 출생연도(선택)</td>
						<td>회원 탈퇴 후 5일까지</td>
					</tr>
					<tr>
						<td>서비스 이용 및 문의 상담</td>
						<td>아이디(이메일)</td>
						<td>회원 탈퇴 후 5일까지</td>
					</tr>
				</table>
				<span><input type="checkbox" name="user_info_check" id="user_info_check"></span> 
				<span><label for="user_info_check" class="user_info_check">개인정보 수집 및 이용에 동의합니다.</label></span>
			</div>

		</div>

		<!-- 회원가입 창 -->

		<div id="joinFrame">

			<div class="joinTitle">회원가입</div>

			<div class="joinForm">
				<form action="userInsert" method="post" id="joinInsertForm"
					name="joinInsertForm" autocomplete="off">
					<table class="joinTableForm">
						<tr class="userIDinput">
							<td><label for="user_id">아이디</label></td>
							<td><input type="text" name="user_id" id="user_id"
								placeholder="아이디를 입력해주세요."></td>
							<td><button type="button" id="idDupBtn" class ="over">중복 확인</button>
						</tr>
						<tr class="userPWinput">
							<td><label for="user_pw">비밀번호</label></td>
							<td><input type="password" name="user_pw" id="user_pw"></td>
						</tr>
						<tr class="userRePwInput">
							<td><label for="user_rePw">비밀번호 확인</label></td>
							<td><input type="password" name="user_rePw" id="user_rePw"></td>
						</tr>
						<tr class="userNickInput">
							<td><label for="user_nick">닉네임</label></td>
							<td><input type="text" name="user_nick" id="user_nick"></td>
							<td><button type="button" id="nickDupBtn" class ="over">중복 확인</button>
						</tr>
						<tr class="userEmailInput">
							<td><label for="user_email">이메일</label></td>
							<td><input type="text" name="user_email" id="user_email"></td>
						</tr>
					</table>

					<div class="joinBtnBox">
						<input type="submit" value="가입하기" id="joinBtn" class ="over">
					</div>
				</form>
			</div>
		</div>

<jsp:include page="../include/page_bottom.jsp" flush="false"/>
	<script type="text/javascript" src="${path}/resources/js/regist.js"></script>
</body>
</html>