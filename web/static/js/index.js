$(function () {

    (function () {


		//火爆新游点击后加载图片
		$('body').on('click','.change4',function(){
			$('.channel-type3').find('img').each(function(){
				if(typeof($(this).attr('data-tb-original'))!='undefined'){
					$(this).attr('src',$(this).attr('data-tb-original'));
					$(this).removeAttr('data-tb-original');
				}
			});
		});
		//游戏前瞻、数据助手点击后加载图片
		$('body').on('click','.s1-l-2 .toggle-style1-ul .toggle-li',function(){
			if($(this).index()>0){
				$('.s1-l-2 .toggle-con-ul').find('img').each(function(){
					if(typeof($(this).attr('data-tb-original'))!='undefined'){
						$(this).attr('src',$(this).attr('data-tb-original'));
						$(this).removeAttr('data-tb-original');
					}
				});
			}
		});
		//最新汉化、最新攻略点击后加载图片
		$('body').on('click','.s1-m-1 .toggle-style1-ul .toggle-li',function(){
			if($(this).index()>0){
				$('.s1-m-li').find('img').each(function(){
					if(typeof($(this).attr('data-tb-original'))!='undefined'){
						$(this).attr('src',$(this).attr('data-tb-original'));
						$(this).removeAttr('data-tb-original');
					}
				});
			}
		});
		
    })();
    // 公共切换
    $('.toggle-li').on('click', function () {
        if (!$(this).hasClass('active') && !$(this).hasClass('link-li')) {
            var i = $(this).index();
            $(this).parent().children('.toggle-li').removeClass('active').eq(i).addClass('active');
            $(this).parent().next().children('.toggle-con-li').hide().eq(i).show();
        }
    });
    $('.section2-right .toggle-li').on('mouseover', function () {
        if (!$(this).hasClass('active') && !$(this).hasClass('link-li')) {
            var i = $(this).index();
            $(this).parent().children('.toggle-li').removeClass('active').eq(i).addClass('active');
            $(this).parent().next().children('.toggle-con-li').hide().eq(i).show();
        }
    });
    $('.s1-l-2 .toggle-li').on('mouseover', function () {
        if (!$(this).hasClass('active') && !$(this).hasClass('link-li')) {
            var i = $(this).index();
            $(this).parent().children('.toggle-li').removeClass('active').eq(i).addClass('active');
            $(this).parent().next().children('.toggle-con-li').hide().eq(i).show();
        }
    });

    hoverDisplay('.s1-r-newdown-li');
    hoverDisplay('.s3-p3-r-li');
    hoverDisplay('.ranking-li');
    hoverDisplay('.s1-l-2');

	// 背景适配

    threePoint('rdzx');
    threePoint('dxh');
    threePoint('zxhh');

    var pos1 = {
        left: 0,
        width: '100px',
        height: '100px',
        top: 0
    };
    var pos2 = {
        left: '120px',
        width: '76',
        height: '76',
        top: '12px'
    };
    var pos3 = {
        left: '216px',
        width: '66px',
        height: '66px',
        top: '17px'
    };
    var pos4 = {
        left: '282px',
        width: '40px',
        height: '40px',
        top: '30px'
    };
    var posTime = 500;
    var mobileCanClick=true;
    $('.m-g-toggle').on('click', '.m-g-toggle-li', function () {
        if(!mobileCanClick){
            return false;
        }
        mobileCanClick=false;
        var i = $(this).index();
        if (i == 1) {
            $('.m-g-toggle .m-g-toggle-li').eq(i - 1).animate({left: '-100px'}, posTime, function () {
                $(this).css(pos4);
                $('.m-g-toggle').append($(this));
            });
            $('.m-g-toggle .m-g-toggle-li').eq(i).animate(pos1, posTime);
            $('.m-g-toggle .m-g-toggle-li').eq(i + 1).animate(pos2, posTime);
            $('.m-g-toggle .m-g-toggle-li').eq(i + 2).animate(pos3, posTime);
        } else if (i == 2) {
            $('.m-g-toggle .m-g-toggle-li').eq(i - 2).animate({left: '-100px'}, posTime / 2, function () {
                $(this).css(pos4);
                $('.m-g-toggle').append($(this));

            });
            $('.m-g-toggle .m-g-toggle-li').eq(i - 1).animate(pos1, posTime / 2, function () {
                $(this).animate({left: '-100px'}, posTime / 2, function () {
                    $(this).css(pos4);
                    $('.m-g-toggle').append($(this));
                });
            });
            $('.m-g-toggle .m-g-toggle-li').eq(i).animate(pos2, posTime / 2, function () {
                $(this).animate(pos1, posTime / 2)
            });
            $('.m-g-toggle .m-g-toggle-li').eq(i + 1).animate(pos3, posTime / 2, function () {
                $(this).animate(pos2, posTime / 2)
            });
            $('.m-g-toggle .m-g-toggle-li').eq(i + 2).animate(pos4, posTime / 2, function () {
                $(this).animate(pos3, posTime / 2)
            });
        }
        $('.m-g-ul .m-g-li').fadeOut().eq($(this).attr('data-id')).fadeIn();
        setTimeout(function () {
            mobileCanClick=true;
        },1000)
    });

});

// 悬浮切换
function hoverDisplay(el) {
    $(el).on('mouseenter', function () {
        if (!$(this).hasClass('active')) {
            if(typeof($(this).find('img').attr('data-tb-original'))!='undefined'){
				$(this).find('img').attr('src',$(this).find('img').attr('data-tb-original'));
				$(this).find('img').removeAttr('data-tb-original');
			}
			$(this).parent().find(el).removeClass('active');
            $(this).addClass('active');
        }
    })
}
// 三个切换
function threePoint(con) {
    var threePage = $('#s1-m-' + con + ' .s1-bottom-toggle').attr('data-page');

    function toggle() {
        $("html,body").animate({scrollTop: $(".section1-middle").offset().top + 60});
        $('.' + con + '-li').hide().eq(threePage).show();
        $('#s1-m-' + con + ' .s1-bottom-toggle').attr('data-page', threePage);
        $('#s1-m-' + con + ' .s1-bottom-toggle .s1-bottom-li').removeClass('active').eq(threePage).addClass('active');
    }

    $('#s1-m-' + con).on('click', '.s1-bottom-li', function () {
        threePage = $(this).index();
        toggle();
    });
    $('#s1-m-' + con).on('click', '.s1-bottom-left', function () {
        threePage = $(this).parents('.s1-bottom-toggle').attr('data-page');
        threePage--;
        if (threePage < 0) {
            threePage = 2;
        }
        toggle();
    });
    $('#s1-m-' + con).on('click', '.s1-bottom-right', function () {
        threePage = $(this).parents('.s1-bottom-toggle').attr('data-page');
        threePage++;
        if (threePage == 3) {
            threePage = 0;
        }
        toggle();
    })
}
