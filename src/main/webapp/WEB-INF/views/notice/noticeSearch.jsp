<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 검색 목록</title>
<link rel="stylesheet" href="/resources/css/noticeList.css">
<style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR&family=Playfair+Display:wght@500&display=swap');
    </style>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

</head>
<body>

<jsp:include page="../include/page_top.jsp" flush="false" />

<div class="noticeList">
    <div class="notice_head">공지사항</div>
            
    <div class="noticeBox1">
    <table class="notice_table">
      <thead>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>글쓴이</th>
          <th>날짜</th>
          <th>조회수</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach var="search" items="${search}">
        <tr>
            <td class="td1">${search.notice_no}</td>
            <td class="td2"><a href="/noticeRead?notice_no=${search.notice_no}">${search.notice_title}</a> </td>
            <td class="td3">글쓴이2</td>
            <td class="td4">${search.notice_regdate}</td>
            <td class="td5">조회수2</td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
</div>
</div>



<div class="Btn"> <a href="/noticeInsert" class="noticeInsertBtn">글쓰기</a> </div>



<jsp:include page="../include/page_bottom.jsp" flush="false" />


</body>
</html>