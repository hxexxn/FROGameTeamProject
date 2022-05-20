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


<div class="layout_content_head">버그 제보</div>

<div class="layout_content">

    <div class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>게임에서 버그를 발견한 것 같아요.</summary><br><br>
            <div class="details_content">
                게임 이용 중 버그로 의심 가는 현상을 확인하셨다면,
문의를 통해 현상을 제보해주시기 바랍니다.<br><br>

버그 해당 현상에 대한 기재와 스크린샷을 첨부하시어 접수를 부탁드립니다.<br><br>
</div>
        </details>

    </div>
 </div>
 
<jsp:include page="../include/page_bottom.jsp" flush="false" />

</body>
</html>