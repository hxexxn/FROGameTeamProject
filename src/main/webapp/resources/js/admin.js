$(function(){

    $('.mainBox').hide();
    $('.oneBox').hide();
    $('.twoBox').hide();
    $('.threeBox').hide();
    $('.fourBox').hide();
    $('.fiveBox').hide();

    $('.homeLogo').on('click', function(){
        $('.mainBox').show();

        $('.oneBox').hide();
        $('.twoBox').hide();
        $('.threeBox').hide();
        $('.fourBox').hide();
        $('.fiveBox').hide();
    })

    $('.one').on('click', function(){
        $('.oneBox').show();

    })
    
    $('.two').on('click', function(){

        $('.twoBox').show();

        $('.mainBox').hide();
        $('.oneBox').hide();
        $('.threeBox').hide();
        $('.fourBox').hide();
        $('.fiveBox').hide();
        
    })

    $('.three').on('click', function(){

        $('.threeBox').show();

        $('.mainBox').hide();
        $('.oneBox').hide();
        $('.twoBox').hide();
        $('.fourBox').hide();
        $('.fiveBox').hide();
    })

    $('.four').on('click', function(){

        $('.fourBox').show();

        $('.mainBox').hide();
        $('.oneBox').hide();
        $('.twoBox').hide();
        $('.threeBox').hide();
        $('.fiveBox').hide();
    })

    $('.five').on('click', function(){

        $('.fiveBox').show();

        $('.mainBox').hide();
        $('.oneBox').hide();
        $('.twoBox').hide();
        $('.threeBox').hide();
        $('.fourBox').hide();
    })

})