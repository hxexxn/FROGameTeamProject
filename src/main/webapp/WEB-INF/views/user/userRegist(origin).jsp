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
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>

	<div id="allWrapper">
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
			<div class="userBox">
				<span><a href="/userLogin"><i
						class="fa-solid fa-user-check"></i></a></span> <span><a
					href="/userRegist"><i class="fa-solid fa-user-plus"></i></a></span> <span><i
					class="fa-solid fa-cart-arrow-down"></i></span>
			</div>
		</div>

		<!-- λ©μΈ λ©λ΄ -->
		<div id="mainMenu">
			<div class="menuBox">
				<div class="gameDropDownMenu">
					<div>
						<span>κ²μ</span>
					</div>
					<div>
						<span>κ°μ΄ ν΄μ©</span>
					</div>
					<div>
						<span>κ³΅μ§μ¬ν­</span>
					</div>
					<div>
						<span>κ³ κ°μΌν°</span>
					</div>
				</div>
			</div>
		</div>

		<!-- μ΄μ© μ½κ΄ -->
		<div id="siteGuide">
			<div class="personalInfo">
				<div class="guideTitle">
					<span>κ°μΈμ λ³΄ μμ§ λ° μ΄μ© (νμ)</span>
				</div>

				<table class="guideTable">
					<tr>
						<th>λͺ©μ </th>
						<th>ν­λͺ©</th>
						<th>λ³΄μ κΈ°κ°</th>
					</tr>
					<tr>
						<td>μ΄μ©μ μλ³</td>
						<td>μμ΄λ(μ΄λ©μΌ), λλ€μ, μΆμμ°λ(μ ν)</td>
						<td>νμ νν΄ ν 5μΌκΉμ§</td>
					</tr>
					<tr>
						<td>μλΉμ€ μ΄μ© λ° λ¬Έμ μλ΄</td>
						<td>μμ΄λ(μ΄λ©μΌ)</td>
						<td>νμ νν΄ ν 5μΌκΉμ§</td>
					</tr>
				</table>
				<span><input type="checkbox" name="user_info_check"
					id="user_info_check"></span> <span><label
					for="user_info_check" class="user_info_check">κ°μΈμ λ³΄ μμ§ λ° μ΄μ©μ
						λμν©λλ€.</label></span>
			</div>

		</div>

		<!-- νμκ°μ μ°½ -->

		<div id="joinFrame">

			<div class="joinTitle">νμκ°μ</div>

			<div class="joinForm">
				<form action="userInsert" method="post" id="joinInsertForm"
					name="joinInsertForm" autocomplete="off">
					<table class="joinTableForm">
						<tr class="userIDinput">
							<td><label for="user_id">μμ΄λ</label></td>
							<td><input type="text" name="user_id" id="user_id"
								placeholder="μμ΄λλ₯Ό μλ ₯ν΄μ£ΌμΈμ."></td>
							<td><button type="button" id="idDupBtn">μ€λ³΅ νμΈ</button>
						</tr>
						<tr class="userPWinput">
							<td><label for="user_pw">λΉλ°λ²νΈ</label></td>
							<td><input type="password" name="user_pw" id="user_pw"></td>
						</tr>
						<tr class="userRePwInput">
							<td><label for="user_rePw">λΉλ°λ²νΈ νμΈ</label></td>
							<td><input type="password" name="user_rePw" id="user_rePw"></td>
						</tr>
						<tr class="userNickInput">
							<td><label for="user_nick">λλ€μ</label></td>
							<td><input type="text" name="user_nick" id="user_nick"></td>
							<td><button type="button" id="nickDupBtn">μ€λ³΅ νμΈ</button>
						</tr>
						<tr class="userEmailInput">
							<td><label for="user_email">μ΄λ©μΌ</label></td>
							<td><input type="text" name="user_email" id="user_email"></td>
						</tr>
					</table>

					<div class="joinBtnBox">
						<input type="submit" value="κ°μνκΈ°" id="joinBtn">
					</div>
				</form>
			</div>
		</div>

		<div id="footer">
			<div class="copyRight">
				<div class="frogGameCopyRight">
					<i class="fa-solid fa-frog fa-bounce fa-lg"></i>
					<p>Β© 2022. FROGAME Inc. All rights reserved.</p>
					<p>FROGame λ‘κ³ μ λͺ¨λ  μ μκΆμ FROGameμ μμ μ΄λ©°, κΈ°ν λΈλλ λλ μ ν μ΄λ¦μ ν΄λΉ μμ μμ
						μνμλλ€.</p>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="${path}/resources/js/regist.js"></script>
</body>
</html>