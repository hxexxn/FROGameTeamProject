<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeBoard</title>
</head>
<link href="${path}/resources/css/admin_game_insert.css" rel="stylesheet" />
<body>
	<jsp:include page="../include/page_top.jsp" flush="false" />
	
	
    <h1>게임 등록</h1>
    <form action="/saveImage" id="test" enctype="multipart/form-data" method="post">

        <div id="game_insert">

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
                        <label for="horror">공포</label>
                        
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
                        <input type="radio" name="game_platform" value="steam">
                        <label for="steam">스팀</label>
                        
                        <input type="radio" name="game_platform" value="ubisoft">
                        <label for="ubisoft">유비 소프트</label>
                        
                        <input type="radio" name="game_platform" value="epicgames">
                        <label for="epicgames">에픽 게임즈</label>

                        <input type="radio" name="game_platform" value="etc_platform">
                        <label for="etc_platform">기타</label>
                    </div>
                </div>

                <div class="information">
                    <div class="game_information">
                        <span>게임 설명</span>
                    </div>

                    <div class="textarea_box">
                        <textarea name="game_info" id="game_info" cols="50" rows="20" wrap="hard" style="white-space:pre-wrap;"></textarea>
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
    
	
	
	
	
	
	
	
	
	
	
	
	<!-- <div class="insert">
	<form action="/saveImage" id="test" enctype="multipart/form-data" method="post">
		<div>
			게임 타이틀 : <input type="text" name="game_title" id="game_title">
			<br> 
			게임 이미지 : <input type="file" onchange="addFile(this);" name="file" multiple/> 
			<div class="file-list"></div>
			<br> 게임 가격
			: <input type="text" name="game_price" id="game_price"> <br>
			게임 장르 : <input type="text" name="game_genre" id="game_genre">
			<br> <input id="imgFormBtn" type="submit" value="작성">
		</div>
	</form>
	</div> -->
	<jsp:include page="../include/page_bottom.jsp" flush="false" />
	<script type="text/javascript" src="${path}/resources/js/gameInsert.js"></script>
</body>
</html>