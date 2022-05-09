<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의게시판 글쓰기</title>
</head>
<body>

	<h1>글 등록하기</h1>
	
	<form action="/questionInsert" method="post">
		글제목 : <input type="text" name="question_title" id="question_title"> <br>
		글내용 : <input type="text" name="question_content" id="question_content" ><br>
		작성자 : <input type="text" name="question_writer" id="question_writer"><br>
		문의태그 :  <input type="text" name="question_tag" id="question_tag"><br>
		
		<input type="submit" value="작성하기">
	</form>
	
	<a href="/index">목록으로</a>





</body>
</html>