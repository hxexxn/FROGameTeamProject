<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/style.css">
<link rel="stylesheet" href="${path}/resources/css/gameList.css">
<meta charset="UTF-8">
<title>GameList</title>

<link rel="stylesheet" href="${path}/resources/css/style1.css" >
<link rel="stylesheet" href="${path}/resources/css/gameList.css">

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR&family=Playfair+Display:wght@500&display=swap')
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
	<script src="https://kit.fontawesome.com/3636334fb2.js"
		crossorigin="anonymous"></script>

	<!-- 최상단 -->
	<div class="topBanner">
		<span><a href="#" class="bannerText"> 🌏 지구의 날 기념! 최대 90%
				할인! 🌏 </a></span>
	</div>
	<!-- 타이틀 및 유저박스 -->
	<div id="wrapper">
		<div id="titleLogo">
			<span class="iTag"><i class="fa-solid fa-frog fa-bounce fa-lg"></i></span>
		</div>
		<div class="mainTitle">
			<a href="#" class="froGame">FROGame</a>
		</div>
		<div class="userBox">
			<span><i class="fa-solid fa-user-check"></i></span> <span><i
				class="fa-solid fa-user-plus"></i></span> <span><i
				class="fa-solid fa-cart-arrow-down"></i></span>
		</div>
	</div>
	<img alt="" src="${file}">
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
	
	<div class="head flex">
		<div class="head-main"></div>
		<div class="head-sub"></div>
	</div>
	<div class="flex">
		<!-- <div class="tag-bar">
			<div class="tag-box">
				<a href="#">RPG</a>
			</div>
			<div class="tag-box">
				<a href="#">공포</a>
			</div>
			<div class="tag-box">
				<a href="#">전략</a>
			</div>
			<div class="tag-box">
				<a href="#">FPS</a>
			</div>
			<div class="tag-box">
				<a href="#">기타</a>
			</div>
		</div> -->
		<div class="board-main">
			<form action="gameSearch">
				<div class="padding-top flex">
					<div>
						<input class="basic-input" type="text" placeholder="검색"
							name="search" id="search"> <input type="submit"
							value="검색" class="basic-btn">
					</div>
					<div>
						<span>정렬 기준 </span> <select>
							<option>연관성</option>
							<option>인기순</option>
							<option>최신순</option>
							<option>추천순</option>
						</select>
					</div>
				</div>
			</form>
			<div class="board-body padding-top">

				<c:forEach var="img" items="${img}" varStatus="status">
					<div class="board-content flex">
						<div class="game-content">
							<a href="gameRead?game_no=${jjin[status.index].game_no}"><img
								src="${img}" width="200px"></a>
						</div>
						<div class="game-content">
							<a href="gameRead">${jjin[status.index].game_title}</a>
						</div>
						<div class="game-content">
							<a href="gameRead">₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${jjin[status.index].game_price}" /></a>
						</div>
						<div class="game-content">
							<a href="gameRead"><fmt:formatDate
									value="${jjin[status.index].game_regdate}" pattern="yyyy-MM-dd" /></a>
						</div>
					</div>
				</c:forEach>
				<div class="pageInfo_wrap">
					<div class="pageInfo_area">
						<ul id="pageInfo" class="pageInfo">
							<!-- 이전페이지 버튼 -->
							<c:if test="${pageMaker.prev}">
								<li class="pageInfo_btn previous"><a
									href="${pageMaker.startPage-1}">Previous</a></li>
							</c:if>
							<!-- 각 번호 페이지 버튼 -->
							<c:forEach var="num" begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}">
								<li class="pageInfo_btn"><a href="${num}">${num}</a></li>
							</c:forEach>
							<!-- 다음페이지 버튼 -->
							<c:if test="${pageMaker.next}">
								<li class="pageInfo_btn next"><a
									href="${pageMaker.endPage + 1 }">Next</a></li>
							</c:if>
						</ul>
					</div>
				</div>
				<form id="moveForm" method="get">
					<input type="hidden" name="pageNum"
						value="${pageMaker.cri.pageNum }"> <input type="hidden"
						name="amount" value="${pageMaker.cri.amount }">
				</form>
			</div>
		</div>
	</div>
	<a class="insertBtn" href="gameInsert">게임등록</a>

<script type="text/javascript" src="${path}/resources/js/gameList.js"></script>

</body>
</html>