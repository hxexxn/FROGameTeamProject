<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="${path}/resources/css/admin_main.css">
        <!-- 폰트 어썸 5.0 -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>
    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/3636334fb2.js" 
    crossorigin="anonymous"></script>

	<c:set var="sess" value="${sessionScope.user_id}"/>

	<div id="administer">
	            <div>Hello, ${sess}!</div>
	        </div>
	
	        <div class="admin_top">
	
	            <div class="admin_dash">
	            	<a href="/testadmin">
	            		<div class="first">Dashboard</div>
	            	</a>
	                
	            </div>
	
	            <!-- 여백 -->
	            <div>
	
	            </div>
	
	            <div class="admin_title">
	                <a href="/"><i class="fa-solid fa-frog fa-bounce"></i></a>
	            </div>
	        </div>
	
	        <div class="admin_menu">
	            <div class="userlist">
	                    <div>
	                        <a href="admin_user_list">User list</a>
	                    </div>
	            </div>
	
	            <div class="gamelist">
	                <div>
	                    <a href="admin_game_list">Game list</a>
	                </div>
	            </div>
	
	            <div class="noticelist">
	                <div>
	                    <a href="#">Notice</a>
	                </div>
	            </div>
	
	            <div class="qnalist">
	                <div>
	                    <a href="#">Q&A</a>
	                </div>
	            </div>
	        </div>


</body>
</html>