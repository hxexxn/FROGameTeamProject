

$(function() {

	var moveForm = $("#moveForm");

	$(".pageInfo a").on("click", function(e) {

		e.preventDefault();
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		moveForm.attr("action", "noticeList");
		moveForm.submit();

	});
	
	$(".search_area button").on("click", function(e) {
		e.preventDefault();

		let keyword = $(".search_area input[name='keyword']").val();

		moveForm.find("input[name='keyword']").val(keyword);
		moveForm.find("input[name='pageNum']").val(1);
		moveForm.submit();
	});



	$('#contentSubmitBtnBox').click(function() {

		var contentSubmitBtnBox = $('#contentSubmitBtnBox');
		var notice_writer = $('#notice_writer').val();

		if (notice_writer == null || notice_writer.trim() == "") {
			alert('회원이아닙니다.');
			return false;
		}
		else {
			contentSubmitBtnBox.submit();

		}


	});

})






