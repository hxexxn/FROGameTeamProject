

	var selFile = document.querySelector("input[type=file]");

	/* 첨부파일 추가 */
	function addFile(obj) {
		var files = obj.files;
		let htmlData = '';
		for (var i = 0; i < files.length; i++) {
			const file = files[i];
			// 목록 추가
			htmlData += '<div id="file' + i + '" class="filebox">';
			htmlData += '   <div class="name">' + file.name;
			htmlData += '   <a class="delete" onclick="deleteFile(' + i + ');"><i class="far fa-minus-square"></i></a></div>';
			htmlData += '</div>';
		}

		document.querySelector('.file-list').innerHTML = htmlData;
	}

	/* 첨부파일 삭제 */
	function deleteFile(num) {
		var dt = new DataTransfer()
		var { files } = selFile;

		for (var i = 0; i < files.length; i++) {
			var file = files[i];
			if (num !== i) dt.items.add(file);
			selFile.files = dt.files;
		}

		document.querySelector("#file" + num).remove();
	}


/* 폼 전송 */
	function submitForm() {
		// 폼데이터 담기
		var form = document.querySelector("form");
		var formData = new FormData(form);
		for (var i = 0; i < filesArr.length; i++) {
			// 삭제되지 않은 파일만 폼데이터에 담기
			if (!filesArr[i].is_delete) {
				formData.append("attach_file", filesArr[i]);
			}
		}

		$.ajax({
			method: 'POST',
			url: '/saveImage',
			dataType: 'json',
			data: formData,
			async: true,
			timeout: 30000,
			cache: false,
			headers: { 'cache-control': 'no-cache', 'pragma': 'no-cache' },
			success: function() {
				alert("파일업로드 성공");
			},
			error: function(xhr, desc, err) {
				alert('에러가 발생 하였습니다.');
				return;
			}
		})
	}

