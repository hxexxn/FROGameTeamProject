$(".pageInfo a").on("click", function(e) {
	var moveForm = $("#moveForm");
	e.preventDefault();
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	moveForm.attr("action", "questionList");
	moveForm.submit();

});


/*댓글 기능*/


$(function(){
	
	questionCommentShow();
	questionCommentDelete(question_comment_no);
})


$('#questionCommentRegistBtn').click(function(){
	
	var question_board_no = $('#question_board_no').val(); //value값을 가져와주세요
	var question_comment_writer = $('#question_comment_writer').val();
	var question_comment_content = $('#question_comment_content').val();
	
	
	//유효성검사
	
	if (question_comment_writer == null || question_comment_writer.trim() == "" ) {
			alert('회원이아닙니다.');
			return false;
		}	
		
	if(question_comment_content == ""){
		alert('내용을 작성해 주세요');
		return;
	}
	
	  $.ajax({
         
         url : '/questionCommentInsert',
         type : 'post',
         data : {
				question_board_no : question_board_no,
				question_comment_writer : question_comment_writer,
				question_comment_content : question_comment_content
				//앞이 이름 뒤가 값	
},
         success: function(data){ //data 값이 controller 에 있는 return "success" ; 로 나옴 
            if(data == 'success'){
			alert('댓글 등록 완료');
			questionCommentShow();
}
         },
         error:function(request,status,error){ 
        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
       } 
      });
	
})

function questionCommentShow(){
	var question_board_no = $('#question_board_no').val();
	var question_comment_writer = $('#question_comment_writer').val();
	
	$.ajax({
         
         url : '/questionCommentShow',
         type : 'post',
         data : {
				question_board_no : question_board_no
				
				//앞이 이름 뒤가 값	
},
         success: function(data){ 
			console.log(data);
			
			
				var questionCommentTBL = "<div>";
                    
            $(data).each(function(){	
							questionCommentTBL += "<div class='adminReplybox'><span class='adminReply'>"+this.question_comment_writer+"</span><span>"
                  + this.question_comment_content +  "</span><span>" +
						"<span class='adminReplyDelete'><input type='button' value='삭제' class='questionCommentDeleteBtn' onclick='questionCommentDelete(" + this.question_comment_no + ")'></span></div>";
                 
                  });

		questionCommentTBL += "</div>"; 
			
			
        		  $('#questionCommentZone').html(questionCommentTBL); 
		},
         error:function(request,status,error){ 
        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
       } 
 });

}


function questionCommentDelete(question_comment_no){
	
	 $.ajax({
         
         url : '/questionCommentDelete',
         type : 'post',
         data : {
				question_comment_no : question_comment_no
				
				//앞이 이름 뒤가 값	
},
         success: function(data){ //data 값이 controller 에 있는 return "success" ; 로 나옴 
            if(data == 'success'){
			
			/*alert('댓글 삭제 완료');*/
			  $('#questionCommentZone').html('');
				questionCommentShow();
			
}
         },
         error:function(request,status,error){ 
        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
       } 
      });



	
}


































