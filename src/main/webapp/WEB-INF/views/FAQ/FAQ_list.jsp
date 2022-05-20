<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ_list</title>
    <link rel="stylesheet" href="${path}/resources/css/indexstyle.css">
    <link rel="stylesheet" href="${path}/resources/css/FAQ01.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR:wght@300&display=swap');
        </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<<<<<<< HEAD
    <!-- 이미지 슬라이드 -->
    <script>
        $(document).ready(function(){
            $('.sildeGameImg').bxSlider({
            auto: true,
            speed: 500,
            captions: true,
            });
        });
    </script>
    <!-- 이미지 슬라이드 CSS (오버라이딩)-->
    <style>
        /* 슬라이드 박스 */
        .bx-wrapper {
        border: 0;
        background: #fbfbfb;
        box-shadow: none;
        }
        /* 캡션 디자인 */
        .bx-wrapper .bx-caption {
        position: absolute;
        bottom: 0;
        left: 0;
        background: rgb(178, 178, 178);
        background: rgba(80, 80, 80, 0.532);
        width: 100%;
        height: 50px;
        text-align: center;
        line-height: 30px;
        }
        .bx-wrapper .bx-caption:hover {
            background-color: #07553b72;
        }
        .bx-wrapper .bx-caption span {
        color: #fff;
        font-family: Arial;
        display: block;
        font-size: .85em;
        padding: 10px;
        }
    </style>
    <!-- 폰트 어썸 5.0 -->
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />
</head>
    <!-- 폰트 어썸 -->
    <script src="https://kit.fontawesome.com/3636334fb2.js" 
    crossorigin="anonymous"></script>

<jsp:include page="../include/page_top.jsp" flush="false"/>
=======
     <jsp:include page="../include/page_top.jsp" flush="false"/>
        

>>>>>>> branch 'master' of https://github.com/hxexxn/FROGameTeamProject.git

<div  class="headFQA">
    <div class="headFQA_box1">FroGame 고객센터</div>

    
    <div class="search_bar">
        
                  
    <form action="FAQSearch" autocomplete="off">
        <div class="searchBar">  
            <div> <input class="basic-input" type="text" name="search" id="search" placeholder="검색어를 입력하세요" > </div>
            <div> <button type="submit" class="icon" ><i class="fa-solid fa-magnifying-glass" style="color:lightgray"></i></button>   </div>
        </div>
    </form>    

    </div>
</div>



	
		
	<div class="layout_content_head">찾으시는 질문이 있으신가요?</div>

	<c:forEach var="list" items="${list}">

    <div class="layout_content_box">

      <details>   
            <summary><span class="QQ">Q. </span>${list.FAQ_title}</summary><br><br>
           <div class="details_content"> 
               ${list.FAQ_content}
 </div>
        </details>   

		</div>
</c:forEach>


<br><br>


<jsp:include page="../include/page_bottom.jsp" flush="false" />

</body>
</html>