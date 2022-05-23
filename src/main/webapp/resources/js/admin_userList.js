
$(function() {

	var moveForm = $("#moveForm");

	$(".pageInfo a").on("click", function(e) {

		e.preventDefault();
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		moveForm.attr("action", "admin_user_list");
		moveForm.submit();

	});
	
	$(".search_btn").on("click", function(e) {
	
		e.preventDefault();
		
		let keyword = $(".search_area input[name='keyword']").val();

		moveForm.find("input[name='keyword']").val(keyword);
		moveForm.find("input[name='pageNum']").val(1);
		moveForm.submit();
		
	});

})

