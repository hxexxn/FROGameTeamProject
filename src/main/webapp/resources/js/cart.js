$(function(){
	
	// 게임 정보 및 사양 탭 버튼
	
	$('.menu2').hide();

    $('.tab_menu1').click(function(){
        $('.menu').show("fast");

        $('.menu2').hide();
    })

    $('.tab_menu2').click(function(){
        $('.menu2').show("fast");

        $('.menu').hide();
    })
	

		// 장바구니 추가 
	$('#cartBtn2').click(function(){
		
		var cart_game_no = $('#cart_game_no').val();
		var cart_user_id = $('#cart_user_id').val();
		
		$.ajax({
			url: '/addCart2',
			type: 'post',
			data: {cart_game_no : cart_game_no, cart_user_id : cart_user_id},
			success : function(result) {
				if(result == 'success'){
					alert('장바구니 담기 성공');
				}else{
					alert('실패');
				}
			}
		})
	});
	
	
})

