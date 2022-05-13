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
        @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR&family=Playfair+Display:wght@500&display=swap');
    </style>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

   <script src="https://kit.fontawesome.com/3636334fb2.js" 
    crossorigin="anonymous"></script>

<!-- 최상단 -->
    <div class="topBanner">
        <span><a href="#" class="bannerText"> 🌏 지구의 날 기념! 최대 90% 할인! 🌏 </a></span>
    </div>

<!-- 타이틀 및 유저박스 -->
    <div id="wrapper">
        <div id="titleLogo">
            <span class="iTag"><i class="fa-solid fa-frog fa-bounce fa-lg"></i></span>
        </div>
        <div class="mainTitle">
            <a href="#" class="froGame">FROGame</a>
        </div>
        <div class="userBox">
            <span><i class="fa-solid fa-user-check"></i></span>
            <span><i class="fa-solid fa-user-plus"></i></span>
            <span><i class="fa-solid fa-cart-arrow-down"></i></span>
        </div>
    </div>

    <!-- 메인 메뉴 -->
    <div id="mainMenu">
        <div class="menuBox">
            <div class="gameDropDownMenu">
            <div><span>게임</span></div>
            <div><span>같이 해용</span></div>
            <div><span>공지사항</span></div>
            <div><span>고객센터</span></div>
        </div>
    </div>
</div>


<div  class="headFQA">
    <div class="headFQA_box1"><a href="/indexFAQ">FroGame 고객센터</a></div>

    
    <div class="search_bar">
        <em class="top-search-tit">
            <span>도움말 검색</span> 
        </em>
      
        <div class="top-search-form">
            <i class="fa fa-search" aria-hidden="true"></i>
            <input class="search-bar__input" type="search" placeholder="검색어를 입력하세요" id="searchKey" />
        </div>
        <input type="submit" value="Search" class="search-bar_search">
        
    </div>
</div>



<div class="layout_content_head">설치/실행</div>

<div class="layout_content">

    <div class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>게임이 진행 중 갑자기 종료되었습니다. 에러 메세지도 없어요.</summary><br><br>
            <div class="details_content">
                해당 증상은 회원분의 PC에 작동하고 있는 특정 프로그램과 충돌이 일어나 발생할 수 있습니다.<br><br>

번거로우시더라도 아래 절차를 진행해주시기 바랍니다.<br><br>



※ 제어판 → 프로그램 추가/제거 → [INKA ENTWORKS] 프로그램 삭제<br><br>

            </div>

        </details>

    </div>

    <div  class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>게임 최소 사양을 알려주세요.</summary><br><br>
            <div class="details_content">
                로스트아크를 구동하기 위한 최소 사양 및 권장 사양은 홈페이지 내 다운로드 카테고리의 클라이언트 항목에서 확인하실 수 있습니다.<br><br>

아래 안내해드리는 페이지에서 위 내용 뿐만 아니라 모험가님의 PC 사양을 함께 비교하여 확인하실 수 있으니 참고 부탁 드립니다.<br><br>
 

            </div>

        </details>
        
    </div>

    <div  class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>외장하드에 설치했는데 괜찮나요?</summary><br><br>
            <div class="details_content">
                
                설치 파일을 외장 하드에 설치하여 게임 이용을 하실 수는 있습니다.<br><br>

게임 설치 시에는 단순 게임 파일만이 PC에 설치되는 것이 아니며,<br>
게임 실행에 필요한 다양한 데이터를 포함하여 OS 내 일부 파일의 설정이 변경될 수 있기 때문입니다.<br><br>
 

            </div>

        </details>
     
        
    </div>

    <div  class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>외국에서 접속할 수 있나요?</summary><br><br>
            <div class="details_content">
                
                현재 한국에서만 접속 및 실행이 가능합니다.<br><br>



때문에, 한국에서 이미 생성된 계정이 있더라도

외국에서는 접속하지 못할 수 있습니다.<br><br>
 

            </div>

        </details>
     
        
    </div>

    <div  class="layout_content_box">

        <details> 
            <summary><span class="QQ">Q. </span>정상적으로 설치하고 실행했는데 도중에 자꾸 튕겨요.</summary><br><br>
            <div class="details_content">
                
                튕김 현상은 다양한 요인에 의해 발생할 수 있으나 대체로 설치 과정에서

특정 파일이 누락되거나 손상되었을 때 발생할 수 있습니다.<br><br>



※ 누락 현상 : 일시적인 네트워크 장애로 인해 설치 파일 다운로드 과정에서 일부 파일이 누락될 수 있습니다.<br>
※ 손상 현상 : 사용 중인 하드 디스크가 손상되거나 배드 섹터가 존재할 경우 설치 과정에서 문제가 발생할 수 있습니다.<br>



문제 개선을 위해 아래 방법을 안내해드리니 확인해주시기 바랍니다.<br><br>
 

            </div>

        </details>
     
        
    </div>

    

   

    

</div>



</body>
</html>