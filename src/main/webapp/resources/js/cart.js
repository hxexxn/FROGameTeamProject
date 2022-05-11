$(function(){
	
	

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
					alert('성공');
				}else{
					alert('실패');
				}
			}
		})
	});
	
	
})

