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
<title>GameInfo - God of War</title>
<link href="${path}/resources/css/gameRead.css" rel="stylesheet" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Noto+Sans+KR:wght@300&display=swap')
	;
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!-- 이미지 슬라이드 -->
<script>
	$(document).ready(function() {
		$('.sildeGameImg').bxSlider({
			auto : true,
			speed : 500,
			captions : true,
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
				<div>
					<img class="imgfull"
						src="${path}/resources/img/God of War/God of War img1.jpg" />
				</div>
				<div>
					<img class="imgfull"
						src="${path}/resources/img/God of War/God of War img2.jpg" />
				</div>
				<div>
					<img class="imgfull"
						src="${path}/resources/img/God of War/God of War img3.jpg" />
				</div>
			</div>
			<div class="margin-left">
				<h1 class="">God of War</h1>
				<p>올림푸스 신들을 향한 복수심을 뒤로하고 크레토스는 이제 북유럽 신과 괴물의 땅에 살고 있습니다. 항상 생존을
					위해 싸워야 하는 이 혹독하고 가차 없는 세상에서, 그는 생존을 위해 싸우고… 아들에게도 그 방식을 가르쳐야 합니다.</p>
				<a class="btn btn-primary" href="#!">장바구니 담기</a>
			</div>
		</div>
		<!-- Call to Action-->
		<div class="card bg-secondary margin-top">
			<p class="text-center">- 시스템 요구사항 -</p>
			<div class="justify-content-center card-body">

				<span class="card-span"> 최소:<br> 운영체제: Windows 10 64-bit
					<br> 프로세서: Intel i5-2500k (4 core 3.3 GHz) or AMD Ryzen 3 1200 (4 core 3.1 GHz)<br> 메모리: 8 GB RAM<br>
					그래픽: NVIDIA GTX 960 (4 GB) or AMD R9 290X (4 GB) <br>
					DirectX: 버전 11<br> 저장공간: 60 GB 사용 가능 공간<br> 사운드카드:
					Windows Compatible Audio Device<br>
				</span> <span class="card-span">권장:<br> 운영체제: Windows 10 64 Bit
					<br> 프로세서: Intel i5-6600 | Ryzen 5 2600X<br> 메모리: 8 GB
					RAM<br> 그래픽: GTX 970 | R9 Fury X 4GB VRAM<br> DirectX: 버전
					11<br> 저장공간: 60 GB 사용 가능 공간<br> 사운드카드: Windows Compatible
					Audio Device<br>
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
