<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - 공지사항</title>
    <link rel="stylesheet" href="${path}/resources/css/admin_notice_read.css">
    
    
    <link rel="stylesheet" 
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<jsp:include page="../admin_include/admin_top.jsp" flush="false"/>


	    <div id="read_container">
	
	        <div class="notice_title">
	        </div>
	
	        <div class="subject_box">
	            <div class="category">
	                <span>공지사항</span>
	            </div>
	            <div class="subject">${dto.notice_title}</div>
	            <div class="date">
	                <span>
	                	<fmt:formatDate value="${dto.notice_regdate}" pattern="yyyy-MM-dd" />
					</span> 
	            </div>
	        </div>
	
	        <div class="subject_writer_view">
	            <div class="writer">
	                <div>${dto.notice_writer}</div>
	            </div>
	
	            <div class="view_count">
	                <div>View : ${dto.notice_count}</div>
	                <%-- <div>번호 : ${dto.notice_no}</div> --%>
	            </div>
	        </div>
	
	        <div class="notice_main">
	
	            <span style="white-space: pre-wrap;">${dto.notice_content}</span>
	
	        </div>
	
	
	        <div class="btn_box">
	
	            <div class="btn list">
	                <a href="/admin_notice_list">
	                    <div>목록</div>
	                </a>
	            </div>
	
	            <div class="btn modify">
	                <a href="/admin_notice_modify?notice_no=${dto.notice_no}">
	                    <div>수정</div>
	                </a>
	            </div>
	
	            <div class="btn delete">
	                <a href="/noticeDelete?notice_no=${dto.notice_no}">
	                    <div>삭제</div>
	                </a>
	            </div>
	        </div>
	    </div>

   
   <jsp:include page="../admin_include/admin_bottom.jsp" flush="false"/>
    
</body>
</html>