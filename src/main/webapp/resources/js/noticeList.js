

$(".pageInfo a").on("click", function(e) {
	var moveForm = $("#moveForm");
	e.preventDefault();
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	moveForm.attr("action", "noticeList");
	moveForm.submit();

});


$(function(){	
	
	$('#contentSubmitBtnBox').click(function(){		
		
		var contentSubmitBtnBox = $('#contentSubmitBtnBox');
		var notice_writer = $('#notice_writer').val();
	
		if (notice_writer == null || notice_writer.trim() == "" ) {
			alert('회원이아닙니다.');
			return false;
		}	
		else{
			contentSubmitBtnBox.submit();
			
		}
	
			
	});	
	
})
























