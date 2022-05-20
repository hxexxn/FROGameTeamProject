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

<div class="layout_content_head">나의 계정</div>

<div class="layout_content">

    <div class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>계정을 보호할 수 있는 방법은 무엇이 있나요?</summary><br><br>
            <div class="details_content">
                소중한 개인 정보 보호를 위해 아래와 같이 관리하시는 것을 추천해 드립니다.<br><br>

■ 계정 보안 관리 방법<br>
1. 정기적인 비밀번호 변경<br>
- 로그인 비밀번호, 2차 비밀번호를 주기적으로 변경해주세요.<br>
- 로그인 비밀번호 설정 시 영문, 숫자, 특수기호 등을 혼합하여 사용해주세요.<br>
- 타인이 예측하기 어려운 비밀번호를 사용해주세요.<br><br>

2. 보안 서비스 이용<br>
- 지정 PC 서비스를 이용해보세요.<br><br>

3. 게임 이용 환경 관리<br>
- 백신 프로그램 사용 및 정기적인 바이러스, 악성코드 검사를 진행해주세요.<br><br>

4. 계정 공유 및 양도 행위 금지<br>
- 계정 정보 또는 비밀번호를 타인에게 제공하여 발생한 피해는 계정 도용 피해로 인정되지 않으며,<br>
  도움을 받으실 수 없습니다.<br><br>
            </div>

        </details>

    </div>

    <div  class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>비밀번호를 잊어버렸어요.</summary><br><br>
            <div class="details_content">
                비밀번호를 잊어버리셨다면 '비밀번호 인증' 창에서 '비밀번호 재설정' 버튼을 클릭하시어<br>
홈페이지로 이동하신 후, 휴대폰 본인 인증을 통해 비밀번호를 다시 설정하실 수 있습니다.<br><br>

현재 로스트아크 서비스는 본인 인증된 회원만 이용하실 수 있으며,<br>
본인 인증 수단으로는 휴대폰 인증만을 이용하고 있기 때문에 2차 비밀번호 재설정 시에도 휴대폰 본인 인증이 필요합니다.<br><br>
 

            </div>

        </details>
        
    </div>

    <div  class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>탈퇴 하고 싶어요.</summary><br><br>
            <div class="details_content">
                
                탈퇴 신청 후 유예기간인 15일이 지나야만 완전히 탈퇴됩니다.<br>
                (유예기간 내 로그인 후 탈퇴 취소가 가능하며, 탈퇴 완료 시 복구 불가합니다.)<br><br>
 

            </div>

        </details>
     
        
    </div>
</div>
<jsp:include page="../include/page_bottom.jsp" flush="false" />

</body>
</html>