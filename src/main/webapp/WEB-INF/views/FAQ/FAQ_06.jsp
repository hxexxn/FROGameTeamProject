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

<div class="layout_content_head">결제 환불</div>

<div class="layout_content">

    <div class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>결제내역을 확인하고 싶어요.</summary><br><br>
            <div class="details_content">
                결제 사용내역은 5년(60개월)동안 보관되며,
로그인 시 마이페이지에서 직접 확인할 수 있습니다.  : )<br><br>
            </div>

        </details>

    </div>

    <div  class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>구매를 취소하고싶어요.</summary><br><br>
            <div class="details_content">
               구매내역의 [결제취소] 버튼을 눌러서 원하지 않는 구매 건의 취소를 진행하실 수 있습니다.<br><br>
 

            </div>

        </details>
        
    </div>

    <div  class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>환불 하고 싶어요.</summary><br><br>
            <div class="details_content">
                
                환불 페이지에서 환불을 클릭하여 환불하실 수 있습니다.

<br><br>
 

            </div>

        </details>  
        
    </div>
</div>
<jsp:include page="../include/page_bottom.jsp" flush="false" />

</body>
</html>