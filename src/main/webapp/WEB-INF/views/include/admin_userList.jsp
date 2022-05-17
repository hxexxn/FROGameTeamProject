<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${path}/resources/css/userList.css">
    <!-- 폰트 어썸 5.0 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <!-- 구글 웹 폰트 -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka&family=Noto+Sans+KR:wght@300&family=Roboto:wght@300&display=swap');
        </style>
</head>

<body>

                <div class="oneBox">
                    <h1>첫번째 페이지</h1>
                    
                    <!-- 회원 리스트 -->
				<div id="siteGuide">
					
					<div id="tableWarp">
		
		        <table>
		
		            <tr>
		                <th>no</th>
		                <th>id</th>
		                <th>nick-name</th>
		                <th>email</th>
		                <th>regdate</th>
		                <th>adult</th>
		                <th>edit</th>
		            </tr>
		
		
			<c:forEach var="userList" items="${userList}">
			
				<tr>
					<td>${userList.user_no}</td>
					<td>${userList.user_id}</td>
					<td>${userList.user_nick}</td>
					<td>${userList.user_email}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${userList.user_regdate}"/></td>
					<td>${userList.user_adultcheck}</td>
					<td><a href="/userDelete?user_no=${userList.user_no}">삭제</a></td>
				</tr>
				
			</c:forEach>
		
		        </table>
			
					</div>


					</div>
				</div>
 
</body>

</html>