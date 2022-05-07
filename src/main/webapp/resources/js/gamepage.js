$(function(){
	
	$('#gameInsertBtn').click(function(){
		
		var gameInsertForm = $('#gameInsertForm');
		
		
		var title = $('#game_title').val();
		var price = $('#game_price').val();
		var genre = $('#game_genre_no').val();
		
		if (title == null || title == "") {
			alert('Title Error');
			$('#game_title').focus();
			return false;
			
		}
		
		if (price == null || price == "") {
			alert ('Price Error');
			$('#game_price').focus();
			return false;
		}
		
		if (genre == null || genre == "") {
			alert('Genre Error');
			$('#game_genre_no').focus();
			return false;
		}
		
		gameInsertForm.submit();
		
	})
	
	
})