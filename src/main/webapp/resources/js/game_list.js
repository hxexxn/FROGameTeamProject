$(function(){

	var moveForm = $("#moveForm");
	
	$(".pageInfo a").on("click", function(e) {

		e.preventDefault();
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		moveForm.attr("action", "game_list");
		moveForm.submit();

	})

	$(".search_area button").on("click", function(e) {
		e.preventDefault();

		let type = $("#test").val();
		let keyword = $(".search_area input[name='keyword']").val();

		moveForm.find("input[name='type']").val(type);
		moveForm.find("input[name='keyword']").val(keyword);
		moveForm.find("input[name='pageNum']").val(1);
		moveForm.submit();
	});
	
})