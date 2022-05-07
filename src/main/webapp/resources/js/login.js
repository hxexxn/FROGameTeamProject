$(function(){
	
	
	
	$('#loginBtn').click(function(){

		
		var userLoginForm = $('#userLoginForm');
		
		var user_id = $('#user_id').val();
		var user_pw = $('#user_pw').val();
		
		if (user_id == null || user_id.trim() == "") {
			alert('아이디를 입력해주세요.');
			return false;
		} 
		
		if (user_pw == null || user_pw.trim() == "") {
			alert('비밀번호를 입력해주세요.');
			return false;
		}
		
		userLoginForm.submit();
		
	});
	
	
	
})