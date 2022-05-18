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
<title>GameInfo - MONSTER HUNTER RISE</title>
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
						src="${path}/resources/img/MONSTER HUNTER RISE/MONSTER HUNTER RISE Img1.jpg" />
				</div>
				<div>
					<img class="imgfull"
						src="${path}/resources/img/MONSTER HUNTER RISE/MONSTER HUNTER RISE Img2.jpg" />
				</div>
				<div>
					<img class="imgfull"
						src="${path}/resources/img/MONSTER HUNTER RISE/MONSTER HUNTER RISE Img3.jpg" />
				</div>
			</div>
			<div class="margin-left">
				<h1 class="">MONSTER HUNTER RISE</h1>
				<p>역동하는 사냥 본능! 사냥에 새로운 바람을 불러일으킬, 종횡무진으로 도약하는 액션. 마음 가는 대로 달릴 수
					있는 필드. 미지의 흥분과 놀라움을 선사할 새로운 몬스터들. 이제껏 없었던 사냥 체험이 「MONSTER HUNTER
					RISE」에서 헌터들을 기다린다!</p>
				<a class="btn btn-primary" href="#!">장바구니 담기</a>
			</div>
		</div>
		<!-- Call to Action-->
		<div class="card bg-secondary margin-top">
			<p class="text-center">- 시스템 요구사항 -</p>
			<div class="justify-content-center card-body">

				<span class="card-span"> 최소:<br> 운영체제: Windows 10 64비트,
					<br> 프로세서: Intel® Core™ i3-4130 or Core™ i5-3470 or AMD
					FX™-6100<br> 메모리: 8 GB RAM<br> 그래픽: NVIDIA® GeForce® GT
					1030 (DDR4) or AMD Radeon™ RX 550 <br> DirectX: 버전 12<br>
					저장공간: 36 GB 사용 가능 공간<br> 사운드카드: Windows Compatible Audio
					Device<br>
				</span> <span class="card-span">권장:<br> 운영체제: Windows 10 64비트,
					<br> 프로세서: Intel® Core™ i5-4460 or AMD FX™-8300<br> 메모리:
					8 GB RAM<br> 그래픽: NVIDIA® GeForce® GTX 1060 (VRAM 3GB) or AMD
					Radeon™ RX 570 (VRAM 4GB)<br> DirectX: 버전 12<br> 저장공간: 36
					GB 사용 가능 공간<br> 사운드카드: Windows Compatible Audio Device<br>
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
