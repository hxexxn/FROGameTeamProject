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


<div class="layout_content_head">건의 제안</div>

<div class="layout_content">

    <div class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>건의 사항이 있는데 문의하는 방법을 알려주세요.</summary><br><br>
            <div class="details_content">
                FroGame을 이용하시면서 불편사항이나 개선이 필요하다고 생각되는 부분이 있으시다면 <br>

1:1문의를 통해 요청주시는 내용을 상세히 기재하여 문의 접수 부탁드립니다.<br><br>


            </div>

        </details>

    </div>  </div>

</body>
</html>