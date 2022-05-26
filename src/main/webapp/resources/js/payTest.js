
var IMP = window.IMP; // 생략 가능
IMP.init("imp19597628"); // 예: imp00000000

var totalPrice = $("#totalPrice").val();
var nick = $("#nick").val();
var size = $("#size").val()-1;
var game_title = $("#game_title").val();

function requestPay() {
	// IMP.request_pay(param, callback) 결제창 호출
	IMP.request_pay({ // param
		pg: "kakaopay",
		pay_method: "trans",
		merchant_uid: "ss-015",
		name: game_title + " 외 " + size + "종",
		amount: totalPrice,
		buyer_email: "1",
		buyer_name: nick
	}, function(rsp) { // callback
		if (rsp.success) {
			// jQuery로 HTTP 요청
			alert('결제성공');
			location.href();
		} else {
			alert('결제실패');
		}
	});
}


function certification() {
	var test = false;
	// IMP.certification(param, callback) 호출
	IMP.certification({ // param
		merchant_uid: "COS-0000013", // 주문 번호
		popup: true // PC환경에서는 popup 파라메터가 무시되고 항상 true 로 적용됨
	}, function(rsp) { // callback
		if (rsp.success) {
			// jQuery로 HTTP 요청
			test = true;
			$.ajax({
				url: "", // 예: https://www.myservice.com/certifications
				method: "post",
				headers: { "Content-Type": "application/json" },
				data: { 
					imp_uid: rsp.imp_uid,
					test : test
				}
			});
		} else {
			alert('인증실패');

		}
	});
}

