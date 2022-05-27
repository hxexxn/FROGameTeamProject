
var title_check = false;
var price_check = false;
var release_check = false;
var genre_check = false;

$(function() {
	
	$('#registBtn').click(function(){
		
	// 게임 제목 입력 체크
	
	var title = $('#game_title').val();
	
	
	if (title == "" || title == null) {
		$('.title_result').text('제목을 입력해주세요.');
		$(this).focus();
		return false;
	} else {
		title_check = true;
	}
		
	// 게임 이미지 입력 체크
	
	// 게임 가격 입력 체크
	
	var price = $('#game_price').val();
	
	if (price == "" || price == null) {
		$('.price_result').text('가격을 입력해주세요.');
		$('#game_price').focus();
		return false;
	} else {
		price_check = true;
	}
		
	// 게임 출시일 입력 체크
	
	var release = $('#game_release').val();
	
	if (release == "" || release == null) {
		$('.price_result').text('가격을 입력해주세요.');
		$('#game_release').focus();
		return false;
	} else {
		price_check = true;
	}
		
		
	// 장르 입력 체크 
	
	if ($("input[name=game_genre]:radio:checked").length < 1) {
		$('.genre_result').text('장르를 선택해주세요.');
		return false;
	} else {
		genre_check = true;
	}
		
	// 플랫폼 입력 체크
	
	if ($("input[name=game_platform]:radio:checked").length < 1) {
		$('.genre_result').text('장르를 선택해주세요.');
		return false;
	} else {
		genre_check = true;
	}
		
		
		
	})
	
})