$('.tesemore').attr('href',$('.tesetab span.active').attr('data-href'));
var swiper_tab = new Swiper(".swiper_s1_tab", {
    spaceBetween: 30,
    slidesPerView: 3,
    watchSlidesProgress: true,
    onlyExternal:true
});
var swiper_bg = new Swiper(".swiper_s1_bg", {
    spaceBetween: 0,
    thumbs: {
        swiper: swiper_tab,
    },
    effect: 'fade',
    speed: 1000,
    parallax: true,
});
var swiper_yc = new Swiper(".ycswiper", {
    pagination: {
        el: ".ycswiper-pagination",
        clickable: true,
    },
    navigation: {
        nextEl: ".ycswiper-next",
        prevEl: ".ycswiper-prev",
    },
    autoplay: {
        delay: 3000,
    },
});

$("img.lazy").lazyload({effect: "fadeIn"});




$('.tesetab span').click(function(){
    if(!$(this).hasClass('active')){
        var num = $(this).index();
        var href = $(this).attr('data-href');
        $('.tesemore').attr('href',href);
        $('.tesetab span').removeClass('active');
        $(this).addClass('active');
        $('.tesemain .blockbox').removeClass('active');
        $('.tesemain .blockbox').eq(num).addClass('active');
        $(window).trigger('scroll');
    }
});

$('.go-top').on('click', function () {
    $("html,body").animate({scrollTop: 0});
});

var ww = $(window).width();/*屏幕宽度*/
if(ww > 1730){
    var wz = (ww - 1690)/2;/*距离左边或者右边的距离*/
}else{
    var wz = (ww - 1208)/2;/*距离左边或者右边的距离*/
}
var toptop = parseInt($('#tjwd').offset().top);/*容器距顶部距离*/
var boxobj = $('#tjwd');
var allow = true;
var page = 1;
var navtotop = $('.s2').offset().top;/*导航条距离*/
$(window).bind("scroll", function () {
    var wtop = parseInt($(document).scrollTop());/*滚动距离*/

    if (wtop >= navtotop) {
        $('.s2').addClass('fudong');

        if(wtop >= $('#tszl').offset().top && wtop < $('#yxpc').offset().top){
            $('.s2 a').removeClass('active');
            $('.s2 a').eq(1).addClass('active');
        }else if(wtop >= $('#yxpc').offset().top && wtop < $('#ycsp').offset().top){
            $('.s2 a').removeClass('active');
            $('.s2 a').eq(2).addClass('active');
        }else if(wtop >= $('#ycsp').offset().top && wtop < $('#rmjx').offset().top){
            $('.s2 a').removeClass('active');
            $('.s2 a').eq(4).addClass('active');
        }else if(wtop >= $('#rmjx').offset().top){
            $('.s2 a').removeClass('active');
            $('.s2 a').eq(5).addClass('active');
        }

    } else {
        $('.s2').removeClass('fudong');

        $('.s2 a').removeClass('active');
        $('.s2 a').eq(0).addClass('active');
    }

    if (wtop >= 600) {
        $('.go-top').fadeIn();
    } else {
        $('.go-top').fadeOut();
    }

    if(wtop>=toptop){
        boxobj.css('position', 'fixed');
        boxobj.css('top', '0');
        boxobj.css('right', wz+'px');
    }else{
        boxobj.css('position', 'unset');
        boxobj.css('top', 'unset');
        boxobj.css('right', 'unset');
    }

    if (typeof ($('.loading').get(0)) == 'undefined') return false;
    if (allow && $(window).height() + window.pageYOffset >= $('.loading').offset().top) {
        allow = false;
        // 实际
        page++;
        if(page > 100){
            $('.loading').remove();
        }
        setTimeout(function(){
            $('.block5 .item.page'+page).css('display', 'block');
            allow = true;
        },600);
    }
});