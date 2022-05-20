$(".pageInfo a").on("click", function(e) {
	var moveForm = $("#moveForm");
	e.preventDefault();
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	moveForm.attr("action", "questionList");
	moveForm.submit();

});

/*
$(function(){	
	
	$('#questionInsertBtn').click(function(){		
		
		var questionInsertBtn = $('#questionInsertBtn');
		
		var question_writer = $('#question_writer').val();
	
		if (question_writer == null || question_writer.trim() == "" ) {
			alert('회원이아닙니다.');
			return false;
		}	
	
			questionInsertBtn.submit();
	});	
	
})

*/
