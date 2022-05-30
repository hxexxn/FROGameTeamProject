<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/admin_noticeList.css">
</head>
<body>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>


<jsp:include page="../admin_include/admin_top.jsp" flush="false"/>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<c:set var="sess" value="${sessionScope.user_nick}"/>

                    <div id="wrap2">

						        <div class="bbs_title">
						            <span>공지사항</span>
						        </div>
						
						        <div class="list_title">
					                <div class="notice_no">번호</div>
					                <div class="notice_head">제목</div>
					                <div class="notice_regdate">작성일</div>
					                <div class="notice_writer">작성자</div>
					                <div class="notice_delete"></div>
					            </div>
						        
						   <c:forEach var="noticeList" items="${noticeList}">
						
						        <div class="list">
						            <div class="notice_no">${noticeList.notice_no}</div>
						            <div class="notice_head"><a href="/admin_notice_read?notice_no=${noticeList.notice_no}">${noticeList.notice_title}</a></div>
						            <div class="notice_regdate"><fmt:formatDate pattern="yy-MM-dd HH:mm" value="${noticeList.notice_regdate}"/></div>
						          	<div class="notice_writer">${noticeList.notice_writer}</div>
						            <div class="notice_delete"><a href="/noticeDelete?notice_no=${noticeList.notice_no}">삭제</a></div>
						        </div>
						        
						    </c:forEach>
						    
						    <!-- 검색 -->
				        <div class="side_bar">
							
							<!--  공지사항 등록 버튼 -->
					        <div class="gameInsert">
					            <div class="insertBtn"><a href="admin_notice_insert" id="insertBtn"> 공지사항 등록 </a></div>
					        </div>
					        
					        <!-- 페이징 -->
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
					    	
					    	<!-- 게임 검색 창 -->
					        <div class="search_area">
					            <input type="text" name="keyword" id="keyword" autocomplete="off" value="${pageMaker.cri.keyword }">
					            <button class="search_btn" type="submit">검색</button>
							 </div>
    					</div>
				        
				       <%-- <div class="search_area">
							<input class="basic-input" type="text" name="keyword" id="keyword"
								value="${pageMaker.cri.keyword}" autocomplete="off">
							<button class="icon">
								<i class="fa-solid fa-magnifying-glass" style="color: lightgray"></i>
							</button>
						</div> --%>
                    
                    	
						
						<form id="moveForm" method="get">
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
							<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
						</form>
					</div>
					
<script type="text/javascript" src="${path}/resources/js/admin_noticeList.js"></script>
<jsp:include page="../admin_include/admin_bottom.jsp" flush="false"/>


</body>
</html>