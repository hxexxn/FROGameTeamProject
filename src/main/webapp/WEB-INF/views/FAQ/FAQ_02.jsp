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

<div class="layout_content_head">구 매</div>

<div class="layout_content">

    <div class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>상품권 결제가 안돼요.</summary><br><br>
            <div class="details_content">
                상품권으로 결제하려는 도중 오류가 발생했나요?<br><br>

오류가 발생할 경우 오류메세지에서 사유와 해결방법이 안내되고 있는데요.<br><br>

이 중 8771, 8772, 8773 등의 오류는 결제대행업체 KCP에서
회원님의 결제를 차단한 것입니다. <br><br>

그렇기에 차단된 사유 확인 및 해제를 위해서는
번거로우시더라도 KCP(1544-8661)로 문의 필요합니다.<br><br>

감사합니다. <br><br>
            </div>

        </details>

    </div>

    <div  class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>아이템을 구매할 수 없어요.</summary><br><br>
            <div class="details_content">
                캐시샵에서 아이템 구매 중 오류가 발생한다면
1:1문의 부탁드립니다.<br><br>

신속히 확인하여 안내해 드리겠습니다.<br><br>
 

            </div>

        </details>
        
    </div>

    <div  class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>아이템을 잘못 샀어요.</summary><br><br>
            <div class="details_content">
               상품을 잘못 구매하셨다면 마이 페이지에서 [청약철회]하실 수 있습니다.<br><br>

청약철회는 구매 후 7일 이내의 상품을 플레이 하지 않은 경우에만 가능합니다.<br><br>
 

            </div>

        </details>
     
        
    </div>

</div>


</body>
</html>