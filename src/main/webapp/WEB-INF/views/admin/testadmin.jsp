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
    <link rel="stylesheet" href="${path}/resources/css/admin_main.css">
        <!-- 폰트 어썸 5.0 -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

</head>
<body>
    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/3636334fb2.js" 
    crossorigin="anonymous"></script>

	<c:set var="sess" value="${sessionScope.user_id}"/>
	
    <div id="container">

        <div id="administer">
            <div>Hello, ${sess}!</div>
        </div>

        <div class="admin_top">

            <div class="admin_dash">
            	<a href="/testadmin">
            		<div class="fisrt">Dashboard</div>
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
        
        <div class="content section">

            <div class="first_section">

                <div class="user_section">

                    <div class="user_title">
                        <div>
                            <a href="admin_user_list">user list</a>
                        </div>
                    </div>

                    <div class="user_subject">
                        <div class="id">아이디</div>
                        <div class="nickname">닉네임</div>
                        <div class="regdate">가입일</div>
                    </div>

				<c:forEach var="userList" items="${userList}" varStatus="status" end="6">
				
                    <div class="user_content">
                        <div class="id">${userList.user_id}</div>
                        <div class="nickname">${userList.user_nick}</div>
                        <div class="regdate"><fmt:formatDate pattern="yyyy-MM-dd"
							value="${userList.user_regdate}" /></div>
                    </div>
                    
				</c:forEach>

                    <div class="moreBtn">
                        <div>
                            <a href="admin_user_list">more</a>
                        </div>
                    </div>

                </div>
    
                <div class="game_section">
                    <div class="user_title">
                        <div>
                            <a href="admin_game_list">game list</a>
                        </div>
                    </div>

                    <div class="user_subject">
                        <div class="id">게임명</div>
                        <div class="nickname">가격</div>
                        <div class="regdate">판매량</div>
                    </div>
				
				<c:forEach var="gameList" items="${gameList}" varStatus="status" end="6">
				
                    <div class="user_content">
                        <div class="id">${gameList.game_title}</div>
                        <div class="nickname">${gameList.game_price}</div>
                        <div class="regdate">${gameList.game_sellcount}</div>
                    </div>
                    
				 </c:forEach>

                    <div class="moreBtn">
                        <div>
                            <a href="admin_game_list">more</a>
                        </div>
                    </div>
                </div>

            </div>

            <div class="second_section">

                <div class="notice_section">
                
                </div>
    
                <div class="qna_section">
                    
                </div>

            </div>


        </div>

        <div class="footer">
            <span>
                <a href="#">go to the top</a>
            </span>

        </div>


    </div>


</body>
</html>