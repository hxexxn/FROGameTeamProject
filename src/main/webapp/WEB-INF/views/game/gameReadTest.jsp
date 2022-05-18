<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리 -->
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
</head>
<body>
<script type="text/javascript">
	$(function(){

		$.ajax({

			url: "/gameRead",
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