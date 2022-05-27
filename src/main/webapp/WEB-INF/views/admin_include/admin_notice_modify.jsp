<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<link rel="stylesheet" href="${path}/resources/css/admin_notice_modify.css">
</head>
<body>
    
    <jsp:include page="../admin_include/admin_top.jsp" flush="false"/>
    
    <c:set var="sess" value="${sessionScope.user_nick}"/>
    
    <form action="/noticeInsert" id="test" enctype="multipart/form-data" method="post">

        <div id="notice_insert_content">

                <div class="title">
                    <div class="notice_head_subject">
                        <span>제목</span>
                    </div>
                    <div class="subject_input">
                        <input type="text" name="notice_title" id="notice_title">
                    </div>
                </div>

                <div class="information">
                    <div class="notice_information">
                        <span>공지사항 입력</span>
                    </div>

                    <div class="textarea_box">
                        <textarea name="notice_content" id="notice_content" cols="50" rows="20"></textarea>
                    </div>
                    
                    <div>
                    	<input type="hidden" name="notice_writer" id="notice_wirter" value="${sess}">
                    </div>
                </div> 

                <div class="regist">
                    <button type="submit" id="registBtn" name="registBtn">수정</button>
                </div>

            </div>
    
        </form>
        
        <jsp:include page="../admin_include/admin_bottom.jsp" flush="false"/>

</body>
</html></html>