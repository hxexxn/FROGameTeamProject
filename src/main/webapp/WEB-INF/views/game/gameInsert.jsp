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
	<form action="/saveImage" enctype="multipart/form-data" method="post">
		게임 타이틀 : <input type="text" name="game_title" id="game_title"> <br>
		게임 이미지 : <input type="file" name="file"/>  <br>
		게임 가격 : <input type="text" name="game_price" id="game_price"> <br>
		게임 장르 : <input type="text" name="game_genre_no" id="game_genre_no"> <br>
		<input type="submit" value="작성">
	</form>
</body>
</html>