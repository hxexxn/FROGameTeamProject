<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript">
   

	$(function(){

		$.ajax({

			url: "/game_read",
			type: "post",
			data: { game_no: ${game_no} },
			success: function(data) {
				$('body').append(data);
			}, error: function(err) {
				console.log(err);
			}
		})
	})
</script>


	<script type="text/javascript" src="${path}/resources/js/gamepage.js"></script>
</body>
</html>