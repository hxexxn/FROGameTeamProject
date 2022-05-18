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
<title>GameInfo - Civilization</title>
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
					<img class="imgfull" src="${path}/resources/img/civilization/CivilizationImg8.jpg" />
				</div>
				<div>
					<img class="imgfull" src="${path}/resources/img/civilization/CivilizationImg7.jpg" />
				</div>
				<div>
					<img class="imgfull" src="${path}/resources/img/civilization/CivilizationImg6.jpg" />
				</div>
			</div>
			<div class="margin-left">
				<h1 class="">Civilization</h1>
				<p>문명 VI 에서는 새로운 방식으로 세상과 소통하고, 제국의 영토를 확장시키며, 문화를 발전시키고, 역사속
					위대한 지도자들에 맞서 오래도록 지속될 나만의 문명을 건설해볼 수 있습니다. 클레오파트라를 비롯한 20명의 역사 속
					지도자들 중 한명으로 플레이 해보세요.</p>
				<a class="btn btn-primary" href="#!">장바구니 담기</a>
			</div>
		</div>
		<!-- Call to Action-->
		<div class="card bg-secondary margin-top">
			<p class="text-center">- 시스템 요구사항 -</p>
			<div class="justify-content-center card-body">

				<span class="card-span"> 최소:<br> 운영체제: Windows 7x64 / Windows 8.1x64 / Windows 10x64 <br>
					프로세서: Intel Core i3 2.5 Ghz or AMD Phenom II 2.6 Ghz or greater<br> 메모리: 4 GB RAM
					<br>그래픽: 1 GB & AMD 5570 or nVidia 450 or Intel Integrated Graphics 530
					<br> DirectX: 버전 11<br> 저장공간: 12 GB 사용 가능 공간<br>
					사운드카드: Windows Compatible Audio Device<br>
				</span> <span class="card-span">권장:<br> 운영체제: Windows 7x64 / Windows 8.1x64 / Windows 10x64<br>
					프로세서: Fourth Generation Intel Core i5 2.5 Ghz or AMD FX8350 4.0 Ghz or greater<br> 메모리: 8 GB
					RAM<br> 그래픽: 2GB & AMD 7970 or nVidia 770 or greater
					<br> DirectX: 버전 11<br> 저장공간: 12 GB 사용 가능 공간<br>
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
