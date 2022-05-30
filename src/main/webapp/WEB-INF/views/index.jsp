<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${path}/resources/css/indexstyle.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR:wght@300&display=swap')
	;
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!-- 이미지 슬라이드 -->
<script>
	$(document).ready(function() {
		$('.sildeGameImg').bxSlider({
			auto : true,
			speed : 500,
			captions : true,
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>
	<!-- 폰트 어썸 -->
	<script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>

	<!-- 전체 감싸주는 태그 -->
	<div id="wrap">

		<!-- 헤드 -->
		<div id="header">


			<!-- 최상단 배너 -->
			<div class="topBanner">
				<span><a href="#" class="bannerText"> 🌏 지구의 날 기념! 최대 90%
						할인! 🌏 </a></span>
			</div>


			<!-- 타이틀 및 유저박스 -->
			<div id="titleBox">
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
						<span><a href="/userLogin">로그인</a></span> <span><a
							href="/userRegist">회원가입</a></span> <span>장바구니</span>
					</div>
				</c:if>
				<!-- 회원 로그인 -->
				<c:if test="${not empty sessionScope.user_id}">
					<c:set var="nick" value="${sessionScope.user_nick}" />
					<c:set var="sess" value="${sessionScope.user_id}" />
					<div class="userBox">
						<span> <a href="/userMyPage"> <c:out value="${nick}" />
						</a></span>

						<c:if test="${sessionScope.user_level eq true}">
							<span><a href="/testadmin">대시보드</a></span>
						</c:if>
						<c:if test="${sessionScope.user_level ne true}">
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

					<li><a href="game_hot_list">인기 게임</a></li>

					<li><a href="game_new_list">신작 게임</a></li>

					<li><a href="gameList?pageNum=1&amount=4&keyword=&type=R">게임</a>
						<ul id="subMenu">

							<li><a href="gameList?pageNum=1&amount=4&keyword=&type=A">FPS</a></li>
							<li><a href="gameList?pageNum=1&amount=4&keyword=&type=B">RPG</a></li>
							<li><a href="gameList?pageNum=1&amount=4&keyword=&type=C">공포</a></li>
							<li><a href="gameList?pageNum=1&amount=4&keyword=&type=D">로그라이크</a></li>
							<li><a href="gameList?pageNum=1&amount=4&keyword=&type=E">시뮬레이션</a></li>
							<li><a href="gameList?pageNum=1&amount=4&keyword=&type=F">어드벤쳐</a></li>
							<li><a href="gameList?pageNum=1&amount=4&keyword=&type=G">전략</a></li>
							<li><a href="gameList?pageNum=1&amount=4&keyword=&type=H">액션</a></li>
							<li><a href="gameList?pageNum=1&amount=4&keyword=&type=I">기타</a></li>

						</ul></li>

					<li><a href="noticeList">공지사항</a>
						<ul id="subMenu">
							<li><a href="noticeList">공지사항</a></li>
							<li><a href="questionList">1 : 1 문의</a></li>
							<li><a href="indexFAQ">문의내역</a></li>
						</ul></li>
				</ul>

				<!-- 검색 창 -->

				<div class="main_search_area">
					<input type="text" name="keyword" id="keyword"
						value="${pageMaker.cri.keyword }" autocomplete="off"> <span><button
							type="submit" class="icon" id="indexBtn">
							<i class="fa-solid fa-magnifying-glass" style="color: lightgray"></i>
						</button></span>
				</div>
				<form action="gameList" id="moveForm" method="get">
					<input type="hidden" name="pageNum" value="1"> <input
						type="hidden" name="amount" value="4"> <input
						type="hidden" name="type" id="type" value="R"> <input
						type="hidden" name="keyword" id="keyword"
						value="${pageMaker.cri.keyword }">
				</form>
			</div>

		</div>
		<!-- 메인 이미지 슬라이드 -->
		<div id="mainGame">
			<div class="sildeGameImg">
				<div>
					<img src="${path}/resources/img/watchdogs.png" title="와치독스" />
				</div>
				<div>
					<img src="${path}/resources/img/pronight.jpg" title="프롭나이트" />
				</div>
				<div>
					<img src="${path}/resources/img/gta5.png" title="GTA5">
				</div>
			</div>
		</div>

		<!-- 메인 컨텐츠 -->
		<div id="section">
			<div class="bestGameTitle">인기 게임</div>
			<div class="recentPlusBtn margin_right"> <a href="game_hot_list"> 더 보기 </a></div>
			<!-- 인기 게임 -->
			<div class="bestGameSection">
				<!-- 박스 하나 -->
				<c:forEach var="hotimg" items="${hotimg}" varStatus="status" begin="0" end="3">
					<div class="bestGame-contentBox">
						<div class="bestGame-ImgBox">
							<img src="${hotimg}">
						</div>
						<div class="bestGame-infoBox">
							<div class="bestGame-titleBox"><a href="gameReadTest?game_no=${hotList[status.index].game_no}">
								<span>${hotList[status.index].game_title}</span> </a>
							</div>
							 <div class="game_tag">
	                            <div class="genre">${list[status.index].game_genre}</div>
	                            <div class="platform">${list[status.index].game_platform}</div>
                        	</div>
							<div class="bestGame-info">
								<span>₩ 54,800</span>
							</div>
						</div>
					</div>
				</c:forEach>
				</div>
				
				<div class="saleGameSection">
				
				<c:forEach var="hotimg" items="${hotimg}" varStatus="status" begin="4" end="7">
					<div class="bestGame-contentBox">
						<div class="bestGame-ImgBox">
							<img src="${hotimg}">
						</div>
						<div class="bestGame-infoBox">
							<div class="bestGame-titleBox"><a href="gameReadTest?game_no=${hotList[status.index].game_no}">
								<span>${hotList[status.index].game_title}</span> </a>
							</div>
							 <div class="game_tag">
	                            <div class="genre">${list[status.index].game_genre}</div>
	                            <div class="platform">${list[status.index].game_platform}</div>
                        	</div>
							<div class="bestGame-info">
								<span>₩ 54,800</span>
							</div>
						</div>
					</div>
				</c:forEach>
				</div>
			

			<div id="anotherGameListBox">

				<div id="anotherGameList">
					<div class="recentGameTitle">신규 출시</div>
					<div class="recentPlusBtn"> <a href="game_new_list"> 더 보기 </a></div>

				<c:forEach var="img" items="${img}" varStatus="status" begin="0" end="3">
					<div class="recentGameList">
						<div class="recent-img">
							<img src="${img}">
						</div>
						<div class="recent-subject"> <a href="gameReadTest?game_no=${list[status.index].game_no}">
							<span>${list[status.index].game_title}</span></a>
						</div>
						<div class="recent-price">
							<div class="price">₩ <fmt:formatNumber
									type="number" maxFractionDigits="3"
									value="${list[status.index].game_price}" /></div>
						</div>
					</div>
				</c:forEach>
				</div>

				<div id="anotherGameList">
					<div class="freeGameTitle">무료 게임</div>
					<div class="recentPlusBtn"> <a href="gameList?pageNum=1&amount=4&keyword=&type=J"> 더 보기 </a></div>

				<c:forEach var="img" items="${img}" varStatus="status">
				<c:if test="${list[status.index].game_price eq 0}">
					<div class="recentGameList">
						<div class="recent-img">
							<img src="${img}">
						</div>
						<div class="recent-subject">
						<a href="gameReadTest?game_no=${list[status.index].game_no}">
							<span>${list[status.index].game_title}</span></a>
						</div>
						<div class="recent-price">
							<div class="price">Free To Play</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
				</div>
			</div>


			<div id="footBar">
				<div class="findGame">
					<p>취향에 맞는 게임들을 더 찾으신다면</p>
					<p>
						지금 바로 <a href="/userLogin" class="login_bottom">로그인</a> 하세요.
					</p>
				</div>
			</div>

		</div>


		<div id="footer">
			<div class="copyRight">
				<div class="frogGameCopyRight">
					<i class="fa-solid fa-frog fa-bounce fa-lg"></i>
					<p>© 2022. FROGAME Inc. All rights reserved.</p>
					<p>FROGame 로고의 모든 저작권은 FROGame의 소유이며, 기타 브랜드 또는 제품 이름은 해당 소유자의
						상표입니다.</p>
					<p>
						<a href="#"><i class="fa-solid fa-circle-arrow-up fa-ls"></i></a>
					</p>
				</div>
			</div>
		</div>

	</div>

	<script type="text/javascript" src="${path}/resources/js/gamepage.js"></script>

</body>
</html>