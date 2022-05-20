<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ page</title>
<link rel="stylesheet" href="/resources/css/FAQ01.css">

<style>
    @import
        url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR&family=Playfair+Display:wght@500&display=swap')
        ;
    </style>
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script
        src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    </head>
    
    <body>
        
        <c:set var="sess" value="${sessionScope.user_id}"/>
    
        <jsp:include page="../include/page_top.jsp" flush="false"/>
        
     


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

<div class="layout_content_head">보안</div>

<div class="layout_content">

    <div class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>제 최근 로그인 기록을 확인할 수 없나요?</summary><br><br>
            <div class="details_content">
                로그인 기록은 확인하실 수 없습니다!<br><br>
               
            </div>

        </details>

    </div>

    <div class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>접속한 ID로 잠시 동안 이용할 수 없다는 메세지가 나와요</summary><br><br>
            <div class="details_content">
                ‘접속하신 ID로 잠시 동안 이용할 수 없습니다.’라는 메시지가 나타났나요?<br><br>
 
                이용하시는 ID 내에서 확인이 필요한 부분이 있어<br>
                임시적으로 차단이 된 상황입니다.<br><br>
                 
                번거로우시더라도 고객센터로 문의해주실 경우 <br>
                어떤 이유로 임시차단 되었는지 빠르게 안내해드리겠습니다.<br><br>
               
            </div>

        </details>

    </div>   
    
</div>


<jsp:include page="../include/page_bottom.jsp" flush="false" />


</body>
</html>