<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시판 글쓰기</title>
</head>
<body>

	<h1>글 등록하기</h1>
	
	<form action="/noticeInsert" method="post">
		글제목 : <input type="text" name="notice_title" id="notice_title"> <br>
		글내용 : <input type="text" name="notice_content" id="notice_content" ><br>
		작성자 : <input type="text" name="notice_writer" value="admin" readonly="readonly"><br>
		<input type="submit" value="작성하기">
	</form>
	
	<a href="/noticeList">목록으로</a>





</body>
</html>