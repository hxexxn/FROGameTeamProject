<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>GameInfo - Elden Ring</title>
<link href="${path}/resources/css/gameRead.css" rel="stylesheet" />
   <style>
        @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR:wght@300&display=swap');
        </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <!-- 이미지 슬라이드 -->
    <script>
        $(document).ready(function(){
            $('.sildeGameImg').bxSlider({
            auto: true,
            speed: 500,
            captions: true,
            });
        });
    </script>
</head>
<body>

<jsp:include page="../include/page_top(no_jquery).jsp" flush="false" />

	<div class="container">
		<!-- Heading Row-->
		<div class="justify-content-center">
			
			<div class="sildeGameImg">
				<div><img class="imgfull" src="${path}/resources/img/subpicture4.jpg" /> </div>
				<div><img class="imgfull" src="${path}/resources/img/EldenRIngImg2.jpg"/></div>
				<div><img class="imgfull" src="${path}/resources/img/EldenRIngImg3.jpg"/></div>
			</div>
			<div class="margin-left">
				<h1 class="">Elden Ring</h1>
				<p>본 게임은 본격적인 다크 판타지 세계를 무대로 한 액션 RPG입니다. 드넓은 필드와 던전 탐험을 통해 미지의
					것들을 발견해 보세요. 앞길을 막아서는 난관과 그것을 극복했을 때의 달성감, 그리고 등장인물들의 의도가 교착하는 군상극도
					즐기실 수 있습니다.</p>
				<a class="btn btn-primary" href="#!">장바구니 담기</a>
			</div>
		</div>
		<!-- Call to Action-->
		<div class="card bg-secondary margin-top">
			<p class="text-center">- 시스템 요구사항 -</p>
			<div class="justify-content-center card-body">

				<span class="card-span"> 최소:<br> 운영체제: Windows 10 <br>
					프로세서: INTEL CORE I5-8400 or AMD RYZEN 3 3300X<br> 메모리: 12 GB
					RAM<br> 그래픽: NVIDIA GEFORCE GTX 1060 3 GB or AMD RADEON RX 580
					4 GB<br> DirectX: 버전 12<br> 저장공간: 60 GB 사용 가능 공간<br>
					사운드카드: Windows Compatible Audio Device<br>
				</span> <span class="card-span">권장:<br> 운영체제: Windows 10/11<br>
					프로세서: INTEL CORE I7-8700K or AMD RYZEN 5 3600X<br> 메모리: 16 GB
					RAM<br> 그래픽: NVIDIA GEFORCE GTX 1070 8 GB or AMD RADEON RX
					VEGA 56 8 GB<br> DirectX: 버전 12<br> 저장공간: 60 GB 사용 가능 공간<br>
					사운드카드: Windows Compatible Audio Device<br>
				</span>
			</div>
		</div>
		<br>
		<!-- Content Row-->
		<div class="justify-content-space-around">
			<div class="">
				<div class="">
					<div class="basic">
						<h2 class="">Game One</h2>
						<p class="">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt
							pariatur voluptatem sunt quam eaque, vel, non in id dolore
							voluptates quos eligendi labore.</p>
						<div class="">
							<a class="btn btn-primary" href="#!">More Info</a>
						</div>
					</div>

				</div>
			</div>
			<div class="">
				<div class="">
					<div class="basic">
						<h2 class="">Game Two</h2>
						<p class="">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt
							pariatur voluptatem sunt quam eaque, vel, non in id dolore
							voluptates quos eligendi labore.</p>
						<div class="">
							<a class="btn btn-primary" href="#!">More Info</a>
						</div>
					</div>

				</div>
			</div>
			<div class="">
				<div class="">
					<div class="basic">
						<h2 class="">Game Three</h2>
						<p class="">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt
							pariatur voluptatem sunt quam eaque, vel, non in id dolore
							voluptates quos eligendi labore.</p>
						<div class="">
							<a class="btn btn-primary" href="#!">More Info</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

<jsp:include page="../include/page_bottom.jsp" flush="false" /> 
</body>
</html>
