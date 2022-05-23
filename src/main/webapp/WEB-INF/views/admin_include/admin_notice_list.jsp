<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<div class="threeBox" id="tab-4">
                    <h1>세번째 페이지</h1>
                    
                    	    <div id="wrap2">

					        <div class="bbs_title">
					            <span>현재 등록된 유저 목록</span>
					        </div>
					
					        <div class="list_title">
					            <div class="notice_no">번호</div>
					            <div class="notice_title">제목</div>
					            
					            <div class="notice_regdate">등록일</div>
					           
					            <div class="notice_delete"></div>
					        </div>
					        
					   <c:forEach var="noticeList" items="${noticeList}">
					
					        <div class="list">
					            <div class="notice_no">${noticeList.notice_no}</div>
					            <div class="notice_title">${noticeList.notice_title}</div>
					            
					            <div class="notice_regdate"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${noticeList.notice_regdate}"/></div>
					          
					            <div class="notice_delete"><a href="/noticeDelete?notice_no=${noticeList.notice_no}">Delete</a></div>
					        </div>
					        
					    </c:forEach>
					    </div>
                </div>

</body>
</html>