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
    <title>Dashboard - 게임 목록</title>
    <link rel="stylesheet" href="${path}/resources/css/gameList_admin.css">
    <!-- 폰트 어썸 5.0 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <!-- 구글 웹 폰트 -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka&family=Noto+Sans+KR:wght@300&family=Roboto:wght@300&display=swap');
        </style>
</head>

<body>

                <div class="oneBox">
                    <h1>Game List</h1>
                    
                    <!-- 회원 리스트 -->
				<div id="siteGuide">
					
					<div id="tableWarp">
		
		        <table>
		
		            <tr>
		                <th>no</th>
		                <th>image</th>
		                <th>game title</th>
		                <th>price</th>
		                <th>genre</th>
		                <th>regdate</th>
		                <th>sellcount</th>
		                <th>adultcheck</th>
		            </tr>
		
		
			<c:forEach var="gameList" items="${gameList}">
			
				<tr>
					<td>${gameList.game_no}</td>
					<td>${gameList.file}</td>
					<td>${gameList.game_title}</td>
					<td>${gameList.game_price}</td>
					<td>${gameList.game_genre_no}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${gameList.game_regdate}"/></td>
					<td>${gameList.game_sellcount}</td>
					<td>${gameList.game_adultcheck}</td>
					<td>삭제</td>
				</tr>
				
			</c:forEach>
		
		        </table>
			
					</div>


					</div>
				</div>
 
</body>

</html>