<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - 공지사항 등록</title>
<link rel="stylesheet" href="${path}/resources/css/admin_notice_insert.css">

	<!--  섬머 노트 -->
	<%-- <link rel="stylesheet" href="${path}/resources/summernote/summernote-lite.css">
	<script src="${path}/resources/summernote/summernote-lite.js"></script>
	<script src="${path}/resources/summernote/summernote-ko-KR.js"></script> --%>
	
	      <!-- include libraries(jQuery, bootstrap) -->
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
		<!-- include summernote css/js -->
		<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

</head>
<body>
    
    <jsp:include page="../admin_include/admin_top.jsp" flush="false"/>
    
    <c:set var="sess" value="${sessionScope.user_nick}"/>
    
    <form action="/noticeInsert" id="test" enctype="multipart/form-data" method="post">

        <div id="notice_insert_content">

                <div class="n-title">
                    <div class="notice_head_subject">
                        <span>제목</span>
                    </div>
                    <div class="subject_input">
                        <input type="text" name="notice_title" id="notice_title">
                    </div>
                </div>

                <div class="information">
                    <div class="notice_information">
                        <span>공지사항 입력</span>
                    </div>

                    <div class="textarea_box">
                        <textarea name="notice_content" id="notice_content" cols="50" rows="20"></textarea>
                    </div>
                    
                    <div>
                    	<input type="hidden" name="notice_writer" id="notice_wirter" value="${sess}">
                    </div>
                </div> 

                <div class="regist">
                    <button type="submit" id="registBtn" name="registBtn">등록</button>
                </div>

            </div>
    
        </form>
        
        <!--  섬머 노트 -->
		<!-- <script>
		$('#notice_content').summernote({
			
			placeholder: '공지사항을 입력해주세요.',
            tabsize: 2,
            height: 300
       
        });
		</script> -->
		<script>
$(document).ready(function() {

	var toolbar = [
		    // 글꼴 설정
		    ['fontname', ['fontname']],
		    // 글자 크기 설정
		    ['fontsize', ['fontsize']],
		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    // 글자색
		    ['color', ['forecolor','color']],
		    // 표만들기
		    ['table', ['table']],
		    // 글머리 기호, 번호매기기, 문단정렬
		    ['para', ['ul', 'ol', 'paragraph']],
		    // 줄간격
		    ['height', ['height']],
		    // 그림첨부, 링크만들기, 동영상첨부
		    ['insert',['picture','link','video']],
		    // 코드보기, 확대해서보기, 도움말
		    ['view', ['codeview','fullscreen', 'help']]
		  ];

	var setting = {
            height : 300,
            minHeight : null,
            maxHeight : null,
            focus : true,
            lang : 'ko-KR',
            toolbar : toolbar,
            callbacks : { //여기 부분이 이미지를 첨부하는 부분
            onImageUpload : function(files, editor,
            welEditable) {
            for (var i = files.length - 1; i >= 0; i--) {
            uploadSummernoteImageFile(files[i],
            this);
            		}
            	}
            }
         };

        $('#notice_content').summernote(setting);
        });
</script>
        
        <jsp:include page="../admin_include/admin_bottom.jsp" flush="false"/>

</body>
</html>