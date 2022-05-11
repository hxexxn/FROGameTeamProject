var nick_check = false;

$(function() {

	// 닉네임 중복 체크 
	$('#nickDupBtn').click(function(){
		
		var new_user_nick = $('#new_user_nick').val();
		
		$.ajax({
			url : '/myPageNickCheck',
			type : 'post',
			data : {new_user_nick:new_user_nick},
			success :function(nickCnt) {
				if (nickCnt != 1) {
					alert ('사용 가능한 닉네임입니다.');
					nick_check = true;
				} else {
					alert ('사용 불가능한 닉네임입니다.');
				}
			}
		});
		
	})
	
	$('#updateBtn').click(function() {

		var userUpdateForm = $('#userUpdateForm');

		var old_user_pw = $('#new_user_pw').val();
		var new_user_pw = $('#new_user_pw').val();
		var new_user_rePw = $('#new_user_rePw').val();
		var new_user_nick = $('#new_user_nick').val();
		var new_user_email = $('#new_user_email').val();
		
		var check_pw = RegExp(/^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{4,20}$/); // 비밀번호 유효성 검사 (영문 및 숫자 4-20글자)
		var check_nick = RegExp(/^([a-zA-Z0-9ㄱ-ㅎ|ㅏ-ㅣ|가-힣]).{2,10}$/); // 닉네임 유효성 검사 (영문/한글/숫자 2-10글)
		var check_email = RegExp(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i); // 이메일 유효성 검사

		// 닉네임 중복 체크 여부
		if(nick_check == false) {
			alert('닉네임 중복여부를 확인해주세요.');
			return false;
		}

		// 비밀번호 공백 확인 
		if (old_user_pw == "" || old_user_pw == null) {
			alert ('기존 비밀번호를 입력해주세요.');
			$('#old_user_pw').focus();
			return false;
		}

		// 비밀번호 공백 확인 
		if (new_user_pw == "" || new_user_pw == null) {
			alert ('변경할 비밀번호를 입력해주세요.');
			$('#new_user_pw').focus();
			return false;
		}
		
		// 비밀번호 유효성 체크
		if (!check_pw.test(new_user_pw)) {
			alert ('영문 및 숫자, 특수문자를 포함한 비밀번호를 입력해주세요.');
			$('#new_user_pw').val("");
			$('#new_user_pw').focus();
			return false;
		}
		
		// 비밀번호 일치성 체크 
		if (new_user_pw != new_user_rePw) {
			alert('비밀번호가 일치하지 않습니다. 다시 입력해주세요.');
			$('#new_user_pw').val("");
			$('#new_user_rePw').val("");
			$('#new_user_pw').focus();
			return false;
		}
		
		// 닉네임 공백 체크 
		if (new_user_nick == "" || new_user_nick == null) {
			alert('닉네임을 입력해주세요.');
			$('#new_user_nick').focus();
			return false;
		}
		
		// 닉네임 유효성 체크 
		if (!check_nick.test(new_user_nick)) {
			alert('닉네임은 영문과 한글, 숫자로 생성 가능합니다.');
			$('#new_user_nick').val("");
			$('#new_user_nick').focus();
			return false;
		}
		
		// 이메일 공백 체크 
		if (new_user_email == "" || new_user_email == null) {
			alert('이메일 주소를 입력해주세요.');
			$('#new_user_email').focus();
			return false;
		}
		
		// 이메일 유효성 체크 	
		if (!check_email.test(new_user_email)) {
			alert('정확한 이메일을 입력해주세요.');
			$('#new_user_email').val("");
			$('#new_user_email').focus();
			return false;
		}
		
		userUpdateForm.submit();
	})

})