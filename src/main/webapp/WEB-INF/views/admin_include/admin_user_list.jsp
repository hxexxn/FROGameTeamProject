<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
<link rel="stylesheet" href="${path}/resources/css/admin_userList.css">
<!-- 폰트 어썸 5.0 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <!-- 구글 웹 폰트 -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka&family=Noto+Sans+KR:wght@300&family=Roboto:wght@300&display=swap');
        </style>

<jsp:include page="../admin_include/admin_top.jsp" flush="false"/>

	<div class="user_list_box">
		<div id="wrap2">

			<div class="bbs_title">
				<span>현재 가입한 유저 목록</span>
			</div>

			<div class="list_title">
				<div class="user_number">번호</div>
				<div class="user_id">아이디</div>
				<div class="user_nick">닉네임</div>
				<div class="user_regdate">가입일</div>
				<div class="user_adult">연령</div>
				<div class="user_delete"></div>
			</div>

			<c:forEach var="userList" items="${userList}">

				<div class="list">
					<div class="user_number">${userList.user_no}</div>
					<div class="user_id">${userList.user_id}</div>
					<div class="user_nick">${userList.user_nick}</div>
					<div class="user_regdate">
						<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
							value="${userList.user_regdate}" />
					</div>
					<div class="user_adult">${userList.user_adultcheck}</div>
					<div class="user_delete">
						<a href="/userDelete?user_no=${userList.user_no}">Delete</a>
					</div>
				</div>

			</c:forEach>
			
			<!-- 검색 -->
			<div class="side_bar">
				
				<div class="pageInfo_wrap center">
							<div class="pageInfo_area">
								<ul id="pageInfo" class="pageInfo">
									<!-- 이전페이지 버튼 -->
									<c:if test="${pageMaker.prev}">
										<li class="pageInfo_btn previous"><a
											href="${pageMaker.startPage-1}">Previous</a></li>
									</c:if>
									<!-- 각 번호 페이지 버튼 -->
									<c:forEach var="num" begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}">
										<li class="pageInfo_btn"><a href="${num}">${num}</a></li>
									</c:forEach>
									<!-- 다음페이지 버튼 -->
									<c:if test="${pageMaker.next}">
										<li class="pageInfo_btn next"><a
											href="${pageMaker.endPage + 1 }">Next</a></li>
									</c:if>
								</ul>
					
							</div>
				</div>

				<div class="search_area">
					  <input type="text" name="keyword" id="keyword" autocomplete="off" value="${pageMaker.cri.keyword }">
					   <button class="search_btn" type="submit">검색</button>
					   
				</div>

						<form id="moveForm" method="get">
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
							<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
						</form>

    		</div>
    		
		</div>
	</div>
	
	<script type="text/javascript" src="${path}/resources/js/admin_userList.js"></script>
<jsp:include page="../admin_include/admin_bottom.jsp" flush="false"/>

</body>
</html>