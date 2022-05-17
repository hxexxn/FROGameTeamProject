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
<title>GameInfo - Diablo III</title>
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
						src="${path}/resources/img/Diablo/Diabloimg3.jpg" />
				</div>
				<div>
					<img class="imgfull"
						src="${path}/resources/img/Diablo/Diabloimg2.jpg" />
				</div>
				<div>
					<img class="imgfull"
						src="${path}/resources/img/Diablo/Diabloimg1.jpg" />
				</div>
			</div>
			<div class="margin-left">
				<h1 class="">Diablo III</h1>
				<p>디아블로 III는 성역과 음울한 환상의 세계에서 펼쳐지는 액션 롤플레잉 게임입니다. 여러분은 성역의 영웅이
					되어 빠른 속도로 펼쳐지는 전투에 뛰어들어야 합니다. 촉감을 곤두세우고 전략적인 판단을 내려야만 살아 남을 수 있습니다.
					수많은 괴물과 무시무시한 우두머리들을 처치하는 동안 경험을 쌓고 실력을 키우는 영웅만이 새로운 기술을 배우고 믿을 수
					없을 만큼 강력한 아이템을 획득할 수 있습니다.</p>
				<a class="btn btn-primary" href="#!">장바구니 담기</a>
			</div>
		</div>
		<!-- Call to Action-->
		<div class="card bg-secondary margin-top">
			<p class="text-center">- 시스템 요구사항 -</p>
			<div class="justify-content-center card-body">

				<span class="card-span"> 최소:<br> 운영체제: Windows 10 64비트,
					Windows 8 64비트, Windows 7 64비트 서비스 팩 1 <br> 프로세서: 인텔® 코어 2 듀오
					또는 AMD Athlon™ 64 X2<br> 메모리: 4 GB RAM<br> 그래픽: NVIDIA®
					GeForce® 8800GT 또는 ATI Radeon™ HD 2900 XT 또는 Intel® HD Graphics
					4000 <br> DirectX: 버전 10<br> 저장공간: 25 GB 사용 가능 공간<br>
					사운드카드: Windows Compatible Audio Device<br>
				</span> <span class="card-span">권장:<br> 운영체제: Windows 10 64비트,
					<br> 프로세서: 인텔® 코어 2 듀오 2.4 GHz 또는 AMD Athlon™ 64 X2 5600+
					2.8GHz<br> 메모리: 6 GB RAM<br> 그래픽: NVIDIA® GeForce® GTX™
					260 또는 ATI Radeon™ HD 4870 또는 그 이상<br> DirectX: 버전 10<br>
					저장공간: 25 GB 사용 가능 공간<br> 사운드카드: Windows Compatible Audio
					Device<br>
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
