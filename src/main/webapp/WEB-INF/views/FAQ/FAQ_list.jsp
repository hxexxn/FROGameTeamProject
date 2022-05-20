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
</head>
    

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