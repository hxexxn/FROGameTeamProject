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
<title>GameInfo - Grand Theft Auto V</title>
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
						src="${path}/resources/img/Grand Theft Auto V/Grand Theft Auto V Img1.jpg" />
				</div>
				<div>
					<img class="imgfull"
						src="${path}/resources/img/Grand Theft Auto V/Grand Theft Auto V Img2.jpg" />
				</div>
				<div>
					<img class="imgfull"
						src="${path}/resources/img/Grand Theft Auto V/Grand Theft Auto V Img3.jpg" />
				</div>
			</div>
			<div class="margin-left">
				<h1 class="">Grand Theft Auto V</h1>
				<p>PC용 Grand Theft Auto V는 각종 수상에 빛나는 로스 산토스와 블레인 카운티의 거대한 세상을
					최대 4K 이상의 해상도로 둘러볼 수 있는 기회를 플레이어에게 제공하며, 초당 60프레임으로 게임을 실행할 수도
					있습니다.</p>
				<a class="btn btn-primary" href="#!">장바구니 담기</a>
			</div>
		</div>
		<!-- Call to Action-->
		<div class="card bg-secondary margin-top">
			<p class="text-center">- 시스템 요구사항 -</p>
			<div class="justify-content-center card-body">

				<span class="card-span"> 최소:<br> 운영체제: Windows 8.1 64비트,
					Windows 8 64비트, Windows 7 64비트 서비스 팩 1 <br> 프로세서: 인텔 코어 2 쿼드
					CPU Q6600 @ 2.40GHz (4 CPU) / AMD Phenom 9850 쿼드코어 프로세서(4 CPU) @
					2.5GHz<br> 메모리: 4 GB RAM<br> 그래픽: NVIDIA 9800 GT 1GB /
					AMD HD 4870 1GB (DX 10, 10.1, 11) <br> DirectX: 버전 12<br>
					저장공간: 72 GB 사용 가능 공간<br> 사운드카드: Windows Compatible Audio
					Device<br>
				</span> <span class="card-span">권장:<br> 운영체제: Windows 8.1 64비트,
					Windows 8 64비트, Windows 7 64비트 서비스 팩 1 <br> 프로세서: 인텔 코어 i5
					3470 @ 3.2GHZ (4 CPU) / AMD X8 FX-8350 @ 4GHZ (8 CPU)<br> 메모리:
					8 GB RAM<br> 그래픽: NVIDIA GTX 660 2GB / AMD HD7870 2GB<br>
					DirectX: 버전 12<br> 저장공간: 72 GB 사용 가능 공간<br> 사운드카드:
					Windows Compatible Audio Device<br>
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
