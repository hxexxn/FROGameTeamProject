var nick_check = false;
var id_check = false;

$(function(){
	alert(user_info_check);
	// 아이디 중복 체크
	$('#idDupBtn').click(function(){
		
		var user_id = $('#user_id').val();
		
		$.ajax({
			url : '/userIdCheck',
			type : 'post',
			data : {user_id : user_id},
			success : function(cnt) {
				if (cnt != 1) {
					alert ('사용 가능한 아이디입니다.');
					id_check = true;
				} else {
					alert ('사용 불가능한 아이디입니다.');
				}
			}
		});
		
	})
	
	// 닉네임 중복 체크 
	$('#nickDupBtn').click(function(){
		
		var user_nick = $('#user_nick').val();
		
		$.ajax({
			url : '/userNickCheck',
			type : 'post',
			data : {user_nick:user_nick},
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
	
	
	// 회원가입 유효성 검사 
	$('#joinBtn').click(function(){
		
		var joinInsertForm = $('#joinInsertForm');
		var user_info_check = $('#user_info_check').val();
	
		var user_id = $('#user_id').val();
		var user_pw = $('#user_pw').val();
		var user_rePw = $('#user_rePw').val();
		var user_nick = $('#user_nick').val();
		var user_email = $('#user_email').val();
		
		var check_id = RegExp(/^[a-zA-Z0-9]{4,10}$/); // 아이디 유효성 검사 (영문 및 숫자 4-10글자)
		var check_pw = RegExp(/^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{4,20}$/);
		// var check_pw = RegExp(/^[a-zA-Z0-9]{4,20}$/); // 비밀번호 유효성 검사 (영문 및 숫자 4-20글자)
		var check_nick = RegExp(/^([a-zA-Z0-9ㄱ-ㅎ|ㅏ-ㅣ|가-힣]).{2,10}$/); // 닉네임 유효성 검사 (영문/한글/숫자 2-10글)
		var check_email = RegExp(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i); // 이메일 유효성 검사
		
		// 닉네임 중복 체크 여부
		if(nick_check == false) {
			alert('닉네임 중복여부를 확인해주세요.');
			return false;
		}
		
		// 아이디 중복 체크 여부
		if(id_check == false) {
			alert('아이디 중복여부를 확인해주세요.');
			return false;
		}
		
		// 아이디 공백 확인 
		if(user_id == "" || user_id == null) {
			alert ('아이디를 입력해주세요.');
			$('#user_id').focus();
			return false;
		}
		
		// 아이디 유효성 체크 
		if (!check_id.test(user_id)) {
			alert('영문 및 숫자만 4-10자리까지 입력해주세요.');
			$('#user_id').val("");
			$('#user_id').focus();
			return false;
		}
		
		// 비밀번호 공백 확인 
		if (user_pw == "" || user_pw == null) {
			alert ('비밀번호를 입력해주세요.');
			$('#user_pw').focus();
			return false;
		}
		
		// 비밀번호 유효성 체크
		if (!check_pw.test(user_pw)) {
			alert ('영문 및 숫자, 특수문자를 포함한 비밀번호를 입력해주세요.');
			$('#user_pw').val("");
			$('#user_pw').focus();
			return false;
		}
		
		// 비밀번호 일치성 체크 
		if (user_pw != user_rePw) {
			alert('비밀번호가 일치하지 않습니다. 다시 입력해주세요.');
			$('#user_pw').val("");
			$('#user_rePw').val("");
			$('#user_pw').focus();
			return false;
		}
		
		// 닉네임 공백 체크 
		if (user_nick == "" || user_nick == null) {
			alert('닉네임을 입력해주세요.');
			$('#user_nick').focus();
			return false;
		}
		
		// 닉네임 유효성 체크 
		if (!check_nick.test(user_nick)) {
			alert('닉네임은 영문과 한글, 숫자로 생성 가능합니다.');
			$('#user_nick').val("");
			$('#user_nick').focus();
			return false;
		}
		
		// 이메일 공백 체크 
		if (user_email == "" || user_email == null) {
			alert('이메일 주소를 입력해주세요.');
			$('#user_email').focus();
			return false;
		}
		
		// 이메일 유효성 체크 	
		if (!check_email.test(user_email)) {
			alert('정확한 이메일을 입력해주세요.');
			$('#user_email').val("");
			$('#user_email').focus();
			return false;
		}
		
		// 개인정보 수집 및 이용 동의 체크
		if (!user_info_check == false) {
			alert('개인정보 수집 및 이용 동의에 체크해주세요');
			$('#user_info_check').val("");
			$('#user_info_check').focus();
			return false;
		}
		alert("회원가입을 환영합니다!");
		joinInsertForm.submit();
		
		
		
	})
	
	
	
})