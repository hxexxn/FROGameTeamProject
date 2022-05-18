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
<title>GameInfo - Total War: THREE KINGDOMS</title>
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
						src="${path}/resources/img/THREE KINGDOMS/THREE KINGDOMS img1.jpg" />
				</div>
				<div>
					<img class="imgfull"
						src="${path}/resources/img/THREE KINGDOMS/THREE KINGDOMS img2.jpg" />
				</div>
				<div>
					<img class="imgfull"
						src="${path}/resources/img/THREE KINGDOMS/THREE KINGDOMS img3.jpg" />
				</div>
			</div>
			<div class="margin-left">
				<h1 class="">Total War: THREE KINGDOMS</h1>
				<p>Total War: THREE KINGDOMS은 지금껏 수많은 수상 경력을 자랑하는 전략 게임 시리즈가
					처음으로 고대 중국을 배경으로 벌어진 신화적인 전쟁을 재현하고자 하는 게임입니다. Total War: THREE
					KINGDOMS에서는 턴 기반으로 진행되는 재미있는 제국 건설 및 발전과 실시간 전투를 통해 진행되는 매력적인 정복
					활동을 융합하여, 영웅과 전설의 시대를 주제로 한 Total War 시리즈의 새로운 장을 열 것입니다.</p>
				<a class="btn btn-primary" href="#!">장바구니 담기</a>
			</div>
		</div>
		<!-- Call to Action-->
		<div class="card bg-secondary margin-top">
			<p class="text-center">- 시스템 요구사항 -</p>
			<div class="justify-content-center card-body">

				<span class="card-span"> 최소:<br> 운영체제: Windows 7 64 Bit
					<br> 프로세서: Intel Core 2 Duo 3.00Ghz<br> 메모리: 4 GB RAM<br>
					그래픽: GTX 650 Ti 1GB|HD 7850 1GB|Intel UHD Graphics 620 <br>
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
