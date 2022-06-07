<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard - 게임 목록</title>
    <link rel="stylesheet" href="${path}/resources/css/admin_gameList.css">
    <!--  구글 웹 폰트 -->
    <style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
	</style>
</head>
<body>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>


<jsp:include page="../admin_include/admin_top.jsp" flush="false"/>

<!-- 게임 목록 출력 -->


                <div class="game_list_box">
                
                    <div id="wrap2">

				        <div class="bbs_title">
				            <div>
					            <span>현재 판매 중인 게임 목록</span>
					        </div>
					        
					        <div class="btn_box">
					            <button type="button" onClick="location.href='admin_game_list?pageNum=1&amount=6&keyword=&type=P'" class="btn">가격 순</button>
					            <button type="button" onClick="location.href='admin_game_list?pageNum=1&amount=6&keyword=&type=R'" class="btn">출시일 순</button>
					            <button type="button" onClick="location.href='admin_game_list?pageNum=1&amount=6&keyword=&type=S'" class="btn">판매량 순</button>
					        </div>
				        </div>
				
				        <div class="list_title">
				            <div class="game_number">번호</div>
				            <div class="game_title">제목</div>
				            <div class="game_price">가격</div>
				            <div class="game_genre_no">장르</div>
				            <div class="game_regdate">출시일</div>
				            <div class="game_sellcount">판매량</div>
				            <div class="game_adult">연령</div>
				            <div class="game_delete"></div>
				        </div>
				        
				        <c:forEach var="gameList" items="${gameList}">
				        
				        	<div class="list">
					            <div class="game_number">${gameList.game_no}</div>
					            <div class="game_title"><a href="gameReadTest?game_no=${gameList.game_no}">${gameList.game_title}</a></div>
					            <div class="game_price">
					            
					            	<c:if test="${gameList.game_price != 0}">
	                            		<span>₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${gameList.game_price}" /></span>
	                            	</c:if>
	                            
		                            <c:if test="${gameList.game_price == 0}">
		                            	<span>Free To Play</span>
		                            </c:if>
	                            
					           </div>
					           
					            <%-- <div class="game_price">₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${gameList.game_price}" /></div> --%>
					            <div class="game_genre_no">${gameList.game_genre}</div>
					            <div class="game_regdate"><fmt:formatDate pattern="yy-MM-dd" value="${gameList.game_release}"/></div>
					            <div class="game_sellcount">${gameList.game_sellcount}</div>
					            <div class="game_adult">${gameList.game_adultcheck}</div>
					            <div class="game_delete"><a href="gameDelete?game_no=${gameList.game_no}">삭제</a></div>
				        	
				        	</div>
	                            
				        
				        </c:forEach>
				        
				        <!-- 검색 -->
				        <div class="side_bar">
							
							<!--  게임 등록 버튼 -->
					        <div class="gameInsert">
					            <div class="insertBtn"><a href="/gameInsert" id="insertBtn"> 게임 등록 </a></div>
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
							<input type="hidden" name="type" value="${pageMaker.cri.type }">
						</form>
    					
                </div> 
            </div><!--  전체 박스 닫는 태그 -->



<jsp:include page="../admin_include/admin_bottom.jsp" flush="false"/>

<script type="text/javascript" src="${path}/resources/js/admin_gameList.js"></script>
<%-- <script type="text/javascript" src="${path}/resources/js/admin_gameList.js"></script> --%>
</body>
</html>