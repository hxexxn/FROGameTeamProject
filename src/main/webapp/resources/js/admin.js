
$(function(){	
	
	var moveForm = $("#moveForm");
	
    $('.mainBox').show();
    $('.user_list_box').hide();
    $('.game_list_box').hide();
    $('.game_insert_box').hide();

	$('.threeBox').hide();
    $('.fourBox').hide();
    $('.fiveBox').hide();

    $('.dashboard_main').on('click', function(){
        $('.mainBox').show();

        $('.user_list_box').hide();
        $('.game_list_box').hide();
        $('.game_insert_box').hide();
		$('.threeBox').hide();
        $('.fourBox').hide();
        $('.fiveBox').hide();
    })

    $('.user_list').on('click', function(){
        $('.user_list_box').show();

		$('.mainBox').hide();
        $('.game_list_box').hide();
        $('.game_insert_box').hide();
		$('.threeBox').hide();
        $('.fourBox').hide();
        $('.fiveBox').hide();
    })
    
    $('.game_list').on('click', function(){

        $('.game_list_box').show();
		
        $('.mainBox').hide();
        $('.user_list_box').hide();
        $('.game_insert_box').hide();
		$('.threeBox').hide();
        $('.fourBox').hide();
        $('.fiveBox').hide();
        
    })

    $('.game_insert').on('click', function(){

        $('.game_insert_box').show();

        $('.mainBox').hide();
        $('.user_list_box').hide();
        $('.game_list_box').hide();
		$('.threeBox').hide();
        $('.fourBox').hide();
        $('.fiveBox').hide();
    })

    $('.four').on('click', function(){

        $('.fourBox').show();

        $('.mainBox').hide();
        $('.user_list_box').hide();
        $('.game_list_box').hide();
        $('.game_insert_box').hide();
		$('.threeBox').hide();	
        $('.fiveBox').hide();
    })

    $('.five').on('click', function(){

        $('.fiveBox').show();

        $('.mainBox').hide();
        $('.user_list_box').hide();
        $('.game_list_box').hide();
        $('.game_insert_box').hide();
		$('.threeBox').hide();
        $('.fourBox').hide();
    })

	
		// 게임 페이지
		
		$(".pageInfo a").on("click", function() {
	
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.attr("action", "gameList");
			moveForm.submit();
		
			alert(1);
		})
	
		// 게임 목록 검색창 
			
		$(".search_btn").on("click", function() {
			
			let keyword = $(".search_area input[name='keyword']").val();
	
			moveForm.find("input[name='keyword']").val(keyword);
			moveForm.find("input[name='pageNum']").val(1);
			moveForm.submit();
		
			
			
		});



})

