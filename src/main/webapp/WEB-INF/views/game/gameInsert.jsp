<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeBoard</title>
</head>
<link href="${path}/resources/css/gameInsert.css" rel="stylesheet" />
<body>
	<jsp:include page="../include/page_top.jsp" flush="false" />
	<div class="insert">
	<form action="/saveImage" id="test" enctype="multipart/form-data" method="post">
		<div>
			게임 타이틀 : <input type="text" name="game_title" id="game_title">
			<br> 
			게임 이미지 : <input type="file" onchange="addFile(this);" name="file" multiple/> 
			<div class="file-list"></div>
			<br> 게임 가격
			: <input type="text" name="game_price" id="game_price"> <br>
			게임 장르 : <input type="text" name="game_genre" id="game_genre">
			<br> <input id="imgFormBtn" type="submit" value="작성">
		</div>
	</form>
	</div>
	<jsp:include page="../include/page_bottom.jsp" flush="false" />
	<script type="text/javascript" src="${path}/resources/js/gameInsert.js"></script>
</body>
</html>