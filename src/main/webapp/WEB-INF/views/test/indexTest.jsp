<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="${path}/resources/css/indexstyle.css">
</head>
<body>

<jsp:include page="indexTop.jsp" flush="false"/>

<div id="section">
            <p class="bestGameTitle">인기 게임</p>  

            <!-- 인기 게임 -->
            <div class="bestGameSection">

                <!-- 박스 하나 -->
                <div class="bestGame-contentBox">
                    <div class="bestGame-ImgBox">
                        <img src="${path}/resources/img/sale1.png">
                    </div>
                    <div class="bestGame-infoBox">
                        <div class="bestGame-titleBox">
                            <span>Watch Dogs : LEGION</span>
                        </div>
                        <div class="bestGame-info">
                            <span>₩ 54,800</span>
                        </div>
                    </div>
                </div>

                <!-- 박스 하나 -->
                <div class="bestGame-contentBox">
                    <div class="bestGame-ImgBox">
                        <img src="${path}/resources/img/sale1.png">
                    </div>
                    <div class="bestGame-infoBox">
                        <div class="bestGame-titleBox">
                            <span>Watch Dogs : LEGION</span>
                        </div>
                        <div class="bestGame-info">
                            <span>₩ 54,800</span>
                        </div>
                    </div>
                </div>

                <!-- 박스 하나 -->
                <div class="bestGame-contentBox">
                    <div class="bestGame-ImgBox">
                        <img src="${path}/resources/img/sale1.png">
                    </div>
                    <div class="bestGame-infoBox">
                        <div class="bestGame-titleBox">
                            <span>Watch Dogs : LEGION</span>
                        </div>
                        <div class="bestGame-info">
                            <span>₩ 54,800</span>
                        </div>
                    </div>
                </div>

                <!-- 박스 하나 -->
                <div class="bestGame-contentBox">
                    <div class="bestGame-ImgBox">
                        <img src="${path}/resources/img/sale1.png">
                    </div>
                    <div class="bestGame-infoBox">
                        <div class="bestGame-titleBox">
                            <span>Watch Dogs : LEGION</span>
                        </div>
                        <div class="bestGame-info">
                            <span>₩ 54,800</span>
                        </div>
                    </div>
                </div>

                <!-- 박스 하나 -->
                <div class="bestGame-contentBox">
                    <div class="bestGame-ImgBox">
                        <img src="${path}/resources/img/sale1.png">
                    </div>
                    <div class="bestGame-infoBox">
                        <div class="bestGame-titleBox">
                            <span>Watch Dogs : LEGION</span>
                        </div>
                        <div class="bestGame-info">
                            <span>₩ 54,800</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 할인 게임 -->
            <p class="saleGameTitle">할인 게임</p>

            <div class="saleGameSection">

                <!-- 박스 하나 -->
                <div class="saleGame-contentBox">
                    <div class="saleGame-ImgBox">
                        <img src="${path}/resources/img/sale1.png">
                    </div>
                    <div class="saleGame-infoBox">
                        <div class="saleGame-titleBox">
                            <span>Watch Dogs : LEGION</span>
                        </div>
                        <div class="saleGame-info">
                            <div class="salePercent">
                                <span>50%</span>
                            </div>
                            <div class="originPrice">
                                <span>₩ 50,000</span>
                            </div>
                            <div class="salePrice">
                                <span>₩ 25,000</span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 박스 하나 -->
                <div class="bestGame-contentBox">
                    <div class="bestGame-ImgBox">
                        <img src="${path}/resources/img/sale1.png">
                    </div>
                    <div class="bestGame-infoBox">
                        <div class="bestGame-titleBox">
                            <span>Watch Dogs : LEGION</span>
                        </div>
                        <div class="bestGame-info">
                            <span>₩ 54,800</span>
                        </div>
                    </div>
                </div>

                <!-- 박스 하나 -->
                <div class="bestGame-contentBox">
                    <div class="bestGame-ImgBox">
                        <img src="${path}/resources/img/sale1.png">
                    </div>
                    <div class="bestGame-infoBox">
                        <div class="bestGame-titleBox">
                            <span>Watch Dogs : LEGION</span>
                        </div>
                        <div class="bestGame-info">
                            <span>₩ 54,800</span>
                        </div>
                    </div>
                </div>

                <!-- 박스 하나 -->
                <div class="bestGame-contentBox">
                    <div class="bestGame-ImgBox">
                        <img src="${path}/resources/img/sale1.png">
                    </div>
                    <div class="bestGame-infoBox">
                        <div class="bestGame-titleBox">
                            <span>Watch Dogs : LEGION</span>
                        </div>
                        <div class="bestGame-info">
                            <span>₩ 54,800</span>
                        </div>
                    </div>
                </div>

                <!-- 박스 하나 -->
                <div class="bestGame-contentBox">
                    <div class="bestGame-ImgBox">
                        <img src="${path}/resources/img/sale1.png">
                    </div>
                    <div class="bestGame-infoBox">
                        <div class="bestGame-titleBox">
                            <span>Watch Dogs : LEGION</span>
                        </div>
                        <div class="bestGame-info">
                            <span>₩ 54,800</span>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="anotherGameListBox">

                <div id="anotherGameList">
                    <div class="recentGameTitle">신규 출시</div>
                    <div class="recentPlusBtn">더 보기</div>
                    
                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">₩ 52,600</div>
                            </div>
                    </div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">₩ 52,600</div>
                            </div>
                    </div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">₩ 52,600</div>
                            </div>
                    </div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">₩ 52,600</div>
                            </div>
                    </div>
                </div>

                <div id="anotherGameList">
                    <div class="releaseGameTitle">출시 예정</div>
                    <div class="recentPlusBtn">더 보기</div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">₩ 52,600</div>
                            </div>
                    </div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">₩ 52,600</div>
                            </div>
                    </div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">₩ 52,600</div>
                            </div>
                    </div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">₩ 52,600</div>
                            </div>
                    </div>
                </div>

                <div id="anotherGameList">
                    <div class="freeGameTitle">무료 게임</div>
                    <div class="recentPlusBtn">더 보기</div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">Free To Play</div>
                            </div>
                    </div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">Free To Play</div>
                            </div>
                    </div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">Free To Play</div>
                            </div>
                    </div>

                    <div class="recentGameList">
                        <div class="recent-img">
                            <img src="${path}/resources/img/sale2.png" alt="" srcset="">
                        </div>
                        <div class="recent-subject">
                            <span>타이틀 A</span>
                        </div>
                            <div class="recent-price">
                                <div class="price">Free To Play</div>
                            </div>
                    </div>
                </div>
                
            </div>



            <div id="footBar">
                <div class="findGame">
                    <p>취향에 맞는 게임들을 더 찾으신다면</p>
                    <p>지금 바로 로그인하세요.</p>
                </div>
            </div>

        </div>

<jsp:include page="indexBottom.jsp" flush="false"/>

</body>
</html>