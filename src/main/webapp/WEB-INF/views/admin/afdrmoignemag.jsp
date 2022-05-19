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
    <link rel="stylesheet" href="${path}/resources/css/admin.css">
    <link rel="stylesheet" href="${path}/resources/css/admin_userList.css">
    <link rel="stylesheet" href="${path}/resources/css/admin_gameList.css">
    <link rel="stylesheet" href="${path}/resources/css/admin_game_insert.css">
    <!-- 폰트 어썸 5.0 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <!-- 구글 웹 폰트 -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka&family=Noto+Sans+KR:wght@300&family=Roboto:wght@300&display=swap');
        </style>
</head>

<body>

<c:if test="${searchEnd}">

</c:if>

    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/3636334fb2.js" 
    crossorigin="anonymous"></script>

    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/3636334fb2.js" crossorigin="anonymous"></script>

    <div id="wrap">

        <div id="sideBar">

            <div class="homeLogo">
                <a href="/"><i class="fa-solid fa-frog fa-bounce"></i></a>
            </div>

            <div class="menuIcon">
            
            	<!-- 유저 목록 -->
                <div class="user_list" data-tab="tab-1">
                    <i class="fa-solid fa-user-check"></i>
                </div>
                
                <!-- 게임 목록 -->
                <div class="game_list" data-tab="tab-2">
                    <i class="fa-solid fa-list-ul"></i>
                </div>
                
                <!-- 게임 등록 -->
                <div class="game_insert" data-tab="tab-3">
                    <i class="fas fa-edit"></i>
                </div>
                
                <!-- 유저 목록 -->
                <div class="three" data-tab="tab-4">
                    <i class="fa-solid fa-bullhorn"></i>
                </div>
                
                <!-- 유저 목록 -->
                <div class="four" data-tab="tab-5">
                    <i class="fas fa-question"></i>
                </div>
                
                <!-- 유저 목록 -->
                <div class="five" data-tab="tab-6">
                    <i class="fas fa-comment"></i>
                </div>
            </div>

        </div>

        <div id="content">

            <div class="contentTop">

                <div class="dashboard_main">
                    <span>Dashboard</span>
                </div>

                <div class="topLeftBox">
                    <div class="searchBar">
                        <input type="search" id="admin_search" name="admin_search">
                    </div>
                </div>
                
                <div class="topRightBox">
                    <div class="profile">

                    </div>

                    <div class="adminInfo">
                        <span></span>
                    </div>
                </div>
                

            </div>

            <div class="main">

                <div class="mainBox">
                    <h1>main page</h1>
                </div>
                
                <!-- 회원 목록 -->
                <div class="user_list_box" id="tab-1">
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
					            <div class="user_regdate"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${userList.user_regdate}"/></div>
					            <div class="user_adult">${userList.user_adultcheck}</div>
					            <div class="user_delete"><a href="/userDelete?user_no=${userList.user_no}">Delete</a></div>
					        </div>
					        
					    </c:forEach>
					    </div>
					
					
                </div> <!--  one box div 끝. -->
    			
    			
    			<!-- 게임 목록 출력 -->
                <div class="game_list_box" id="tab-2">
                
                    <div id="wrap2">

				        <div class="bbs_title">
				            <span>현재 판매 중인 게임 목록</span>
				        </div>
				
				        <div class="list_title">
				            <div class="game_number">번호</div>
				            <div class="game_title">제목</div>
				            <div class="game_price">가격</div>
				            <div class="game_genre_no">장르</div>
				            <div class="game_regdate">등록일</div>
				            <div class="game_sellcount">판매량</div>
				            <div class="game_adult">연령</div>
				            <div class="game_delete"></div>
				        </div>
				        
				        <c:forEach var="gameList" items="${gameList}">
				        
				        	<div class="list">
					            <div class="game_number">${gameList.game_no}</div>
					            <div class="game_title">${gameList.game_title}</div>
					            <div class="game_price">${gameList.game_price}</div>
					            <div class="game_genre_no">${gameList.game_genre}</div>
					            <div class="game_regdate"><fmt:formatDate pattern="yy-MM-dd HH:mm" value="${gameList.game_regdate}"/></div>
					            <div class="game_sellcount">${gameList.game_sellcount}</div>
					            <div class="game_adult">${gameList.game_adultcheck}</div>
					            <div class="game_delete"><a href="gameDelete?game_no=${gameList.game_no}">삭제</a></div>
				        	</div>
				        
				        </c:forEach>
				        
				        <!-- 페이지 -->
				        <div class="pageInfo_wrap center">
				        
							<div class="pageInfo_area">
							
								<ul id="pageInfo" class="pageInfo">
								
									<!-- 이전페이지 버튼 -->
									<c:if test="${pageMaker.prev}">
										<li class="pageInfo_btn previous">
											<a href="${pageMaker.startPage-1}">Previous</a>
										</li>
									</c:if>
									
									<!-- 각 번호 페이지 버튼 -->
									<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
										<li class="pageInfo_btn">
											<a href="${num}">${num}</a>
										</li>
									</c:forEach>
									
									<!-- 다음페이지 버튼 -->
									<c:if test="${pageMaker.next}">
										<li class="pageInfo_btn next">
											<a href="${pageMaker.endPage + 1 }">Next</a>
										</li>
									</c:if>
								</ul>
					
							</div>
						</div>
						
						<form id="moveForm" method="get" name="moveForm">
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
							<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
						</form>
				        
				        <!-- 검색창 -->
				        <div class="search_area">
					        <input type="text" name="keyword" id="keyword" autocomplete="off">
					        <button class="search_btn">검색</button>
					    </div>
									        
				        
                    </div>
                </div>
                
                
                <!-- 게임 등록 출력 -->
                <div class="game_insert_box" id="tab-3">
                    
                    <div id="wrap2">

				        <div class="bbs_title">
				            <span>게임 등록</span>
				        </div>
				
				        <form action="/saveImage" id="test" enctype="multipart/form-data" method="post">

				        <div id="game_insert_content">
				
				                <div class="title">
				                    <div class="game_subject">
				                        <span>제목</span>
				                    </div>
				                    <div class="subject_input">
				                        <input type="text" name="game_title" id="game_title">
				                    </div>
				                </div>
				
				                <div class="img">
				                    <div class="game_img">
				                        <span>이미지 (크기는 1920 * 1080에 맞춰주세요.)</span>
				                    </div>
				                    <div class="file">
				                        <div class="file_div">
				                            <label for="file_upload" class="file_upload">이미지 선택</label>
				                            <input type="file" onchange="addFile(this);" id="file_upload" name="file" multiple/>
				                        </div>
										<div class="file-list"></div>
				                    </div>
				                </div>
				
				                <div class="price_date">
				
				                    <!-- 가격 입력 -->
				                    <div class="price">
				                        <div class="gp_title">
				                            <span>가격</span>
				                        </div>
				                        <div class="price_input">
				                            <input type="text" name="game_price" id="game_price">
				                        </div>
				                    </div>
				
				                    <!-- 출시일 입력 -->
				                    <div class="realeaseDate">
				                        <div class="gp_title">
				                            <span>출시일</span>
				                        </div>
				                        <div class="input_date">
				                            <input type="date" name="game_release" id="game_release">
				                        </div>
				                    </div>
				
				                </div>
				
				
				                
				                <div class="genre">
				                    <div class="game_genre">
				                        <span>장르</span>
				                    </div>
				
				                    <div class="radio_box">
				                        <input type="radio" name="game_genre" id="action" value="액션" class="checkbox1">
				                        <label for="action">액션</label>
				
				                        <input type="radio" name="game_genre" id="adventure" value="어드벤쳐">
				                        <label for="adventure">어드벤쳐</label>
				                        
				                        <input type="radio" name="game_genre" id="simulation" value="시뮬레이션">
				                        <label for="simulation">시뮬레이션</label>
				                        
				                        <input type="radio" name="game_genre" id="RPG" value="RPG">
				                        <label for="RPG">RPG</label>
				                        
				                        <input type="radio" name="game_genre" id="horror" value="공포">
				                        <label for="horror">공포</label><br>
				                        
				                        <input type="radio" name="game_genre" id="strategy" value="전략">
				                        <label for="strategy">전략</label>
				                        
				                        <input type="radio" name="game_genre" id="roguelike" value="로그라이크">
				                        <label for="roguelike">로그라이크</label>
				                        
				                        <input type="radio" name="game_genre" id="fps" value="FPS">
				                        <label for="fps">FPS</label>
				                        
				                        <input type="radio" name="game_genre" id="others" value="기타">
				                        <label for="others">기타</label>
				                    </div>
				                </div>
				
				                <div class="platfrom">
				                    <div class="game_platfrom">
				                        <span>플랫폼</span>
				                    </div>
				
				                    <div class="radio_box">
				                        <input type="radio" name="game_platform" id="steam" value="steam">
				                        <label for="steam">스팀</label>
				                        
				                        <input type="radio" name="game_platform" id="ubisoft" value="ubisoft">
				                        <label for="ubisoft">유비 소프트</label>
				                        
				                        <input type="radio" name="game_platform" id="epicgames" value="epicgames">
				                        <label for="epicgames">에픽 게임즈</label>
				
				                        <input type="radio" name="game_platform" id="etc_platform" value="etc_platform">
				                        <label for="etc_platform">기타</label>
				                    </div>
				                </div>
				
				                <div class="information">
				                    <div class="game_information">
				                        <span>게임 설명</span>
				                    </div>
				
				                    <div class="textarea_box">
				                        <textarea name="game_info" id="game_info" cols="50" rows="20"></textarea>
				                    </div>
				                </div> 
				
				                <div class="section_line"></div>
				
				                <div class="game_play_os">
				                    
				                    <!-- 최소 사양 -->
				                    <div class="game_play_min">
				                        <div class="os_title">최소사양</div>
				                        <div class="os">
				                            <div class="label_os"><label for="game_min_os">1. 운영체제</label></div>
				                            <div class="input_os"><input type="text" name="game_min_os" id="game_min_os"></div>
				                        </div>
				
				                        <div class="cpu">
				                            <div class="label_cpu"><label for="game_min_cpu">2. 프로세서</label></div>
				                            <div class="input_cpu"><input type="text" name="game_min_cpu" id="game_min_cpu"></div>
				                        </div>
				
				                        <div class="ram">
				                            <div class="label_ram"><label for="game_min_ram">3. 메모리</label></div>
				                            <div class="input_ram"><input type="text" name="game_min_ram" id="game_min_ram"></div>
				                        </div>
				
				                        <div class="vga">
				                            <div class="label_vga"><label for="game_min_vga">4. 그래픽 카드</label></div>
				                            <div class="input_vga"><input type="text" name="game_min_vga" id="game_min_vga"></div>
				                        </div>
				
				                        <div class="dirX">
				                            <div class="label_dirX"><label for="game_min_dirX">5. Direct X</label></div>
				                            <div class="input_dirX"><input type="text" name="game_min_dirX" id="game_min_dirX"></div>
				                        </div>
				
				                        <div class="ssd">
				                            <div class="label_ssd"><label for="game_min_ssd">6. 저장 공간</label></div>
				                            <div class="input_ssd"><input type="text" name="game_min_ssd" id="game_min_ssd"></div>
				                        </div>
				                    </div>
				
				                    <div class="os_middle_line"></div>
				
				                    <!-- 권장 사양 -->
				                    <div class="game_play_std">
				                        <div class="os_title">권장사양</div>
				                        <div class="os">
				                            <div class="label_os"><label for="game_std_os">1. 운영체제</label></div>
				                            <div class="input_os"><input type="text" name="game_std_os" id="game_std_os"></div>
				                        </div>
				
				                        <div class="cpu">
				                            <div class="label_cpu"><label for="game_std_cpu">2. 프로세서</label></div>
				                            <div class="input_cpu"><input type="text" name="game_std_cpu" id="game_std_cpu"></div>
				                        </div>
				
				                        <div class="ram">
				                            <div class="label_ram"><label for="game_std_ram">3. 메모리</label></div>
				                            <div class="input_ram"><input type="text" name="game_std_ram" id="game_std_ram"></div>
				                        </div>
				
				                        <div class="vga">
				                            <div class="label_vga"><label for="game_std_vga">4. 그래픽 카드</label></div>
				                            <div class="input_vga"><input type="text" name="game_std_vga" id="game_std_vga"></div>
				                        </div>
				
				                        <div class="dirX">
				                            <div class="label_dirX"><label for="game_std_dirX">5. Direct X</label></div>
				                            <div class="input_dirX"><input type="text" name="game_std_dirX" id="game_std_dirX"></div>
				                        </div>
				
				                        <div class="ssd">
				                            <div class="label_ssd"><label for="game_std_ssd">6. 저장 공간</label></div>
				                            <div class="input_ssd"><input type="text" name="game_std_ssd" id="game_std_ssd"></div>
				                        </div>
				                    </div>
				                </div>
				
				                <div class="regist">
				                    <button type="submit" id="registBtn" name="registBtn">등록</button>
				                </div>

					        </div>
					
					    </form>

                    </div>
                </div>

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

                <div class="fourBox" id="tab-5">
                    <h1>네번째 페이지</h1>
                </div>

                <div class="fiveBox" id="tab-6">
                    <h1>다섯번째 페이지</h1>
                </div>

            </div>
            
        </div>
    </div>

 <script type="text/javascript" src="${path}/resources/js/admin.js"></script>
  <script type="text/javascript" src="${path}/resources/js/gameInsert.js"></script>
</body>

</html>