$(function() {

	$('#gameInsertBtn').click(function() {

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
			alert('Price Error');
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


	$(".pageInfo a").on("click", function(e) {
		var moveForm = $("#moveForm");
		e.preventDefault();
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		moveForm.attr("action", "gameList");
		moveForm.submit();

	})
})

