/*
var IMP = window.IMP; // 생략 가능
IMP.init("imp19597628"); // 예: imp00000000

var totalPrice = $("#totalPrice").val();
var nick = $("#nick").val();
var size = $("#size").val() - 1;
var game_title = $("#game_title").val();
var order_no = $("#cart_no").val();
var user_email = $("#user_email").val();


function requestPay() {
	if (size > 0) {
		name = game_title + " 외 " + size + "종"
	} else {
		name = game_title
	}
	// IMP.request_pay(param, callback) 결제창 호출
	IMP.request_pay({ // param
		pg: "kakaopay",
		pay_method: "trans",
		merchant_uid: "order-" + order_no,
		name: name,
		amount: totalPrice,
		buyer_email: user_email,
		buyer_name: nick
	}, function(rsp) { // callback
		if (rsp.success) {
			// jQuery로 HTTP 요청
			alert("결제 성공");
			$.ajax({
				url: "/paySuccess", // 예: https://www.myservice.com/payments/complete
				method: "POST",
				data: {
					imp_uid: rsp.imp_uid,
					merchant_uid: rsp.merchant_uid,
					size: size
				}
			})
		} else {
			alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		}
	});
}
*/

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
				data: {
					imp_uid: rsp.imp_uid,
					test: test
				}
			});
		} else {
			alert('인증실패');

		}
	});
}


