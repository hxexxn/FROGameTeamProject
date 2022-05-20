<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="${path}/resources/css/indexFAQ.css">
<html>
<body>
   

  <jsp:include page="../include/page_top.jsp" flush="false" />
        

<div  class="headFQA">
    <div class="headFQA_box1">FroGame 고객센터</div>

    
    	<div class="search_bar">
        
                  
    <form action="FAQSearch" autocomplete="off">
        <div class="searchBar">  
            <div> <input class="basic-input" type="text" name="search" id="search" placeholder="검색어를 입력하세요" > </div>
            <div> <button type="submit" class="icon" id="FAQsubmit" ><i class="fa-solid fa-magnifying-glass" style="color:lightgray"></i></button>   </div>
        </div>
    </form>

     

   		 </div>
</div>

<div class="layout_content">

    <div class="titleFQA">
        <h3>자주 찾는 도움말</h3>
    </div>

    <div class="titleFQA_wrap">
        <div class="titleFQA_wrap1">
            
                <div class="nav_item" onclick="location.href='/FAQ_01'">
                   <div class="card_count">01</div>
                   <div class="nav_item_text"> 게임 이용 문의</div>
                </div> 
              <div class="nav_item" onclick="location.href='/FAQ_02'"> 
                   <div class="card_count">02</div>
                   <div class="nav_item_text"> 구매</div>
                </div>
              <div class="nav_item" onclick="location.href='/FAQ_03'">
                   <div class="card_count">03</div>
                   <div class="nav_item_text"> 나의 계정</div>
                </div>
               <div class="nav_item" onclick="location.href='/FAQ_04'">
                   <div class="card_count">04</div>
                   <div class="nav_item_text"> 설치/실행</div>
                </div>
               
          

        </div>
    
        <div class="titleFQA_wrap2">            
           
           <div class="nav_item" onclick="location.href='/FAQ_05'">
                <div class="card_count">05</div>
                <div class="nav_item_text">버그 제보</div>
            </div>
          
            
          <div class="nav_item" onclick="location.href='/FAQ_06'">
                <div class="card_count">06</div>
                <div class="nav_item_text">결제/환불</div>
            </div>
            
           <div class="nav_item" onclick="location.href='/FAQ_07'">
                <div class="card_count">07</div>
                <div class="nav_item_text">건의 제안</div>
            </div>
            <div class="nav_item" onclick="location.href='/FAQ_08'">
                <div class="card_count">08</div>
                <div class="nav_item_text">보안</div>
            </div>
        </div>

    </div>

</div>



<jsp:include page="../include/page_bottom.jsp" flush="false" />

<script type="text/javascript" src="${path}/resources/js/FQA.js"></script>
</body>
</html>