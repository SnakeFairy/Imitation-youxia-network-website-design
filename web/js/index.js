$(function () {
    // // 头部轮播
    (function () {

		var i = 0;
        var len = $('.s1-toggle span').length;
        var timer;
        var t = 5000;
        var _this = $('.s1-l-con');
        var _thisCon = $('.s1-toggle');
        var isFirst=true;
        function rightMove() {
            _thisCon.animate({'left': '-70px'}, 500, function () {
                _thisCon.css('left', 0);
                _thisCon.append(_thisCon.find('span:first-child'));
            })
        }

        function leftMove() {
            _thisCon.prepend(_thisCon.find('span:last-child'));
            _thisCon.css('left', '-70px');
            _thisCon.animate({'left': '0'}, 500);
        }


        function showHide() {
            i++;
            if (i >= len) {
                i = 0;
            }
            isFirst=false;
            _this.animate({'left': '-370px'}, 500, function () {
                _this.css('left', 0);
                _this.append(_this.find('a:first-child'));
            })
        }

        function indexShow() {
            $('.s1-toggle span').removeClass('active');
            $('.s1-toggle [data-id="'+i+'"]').addClass('active');
        }

        function playAuto() {
            if(isFirst){
                setTimeout(function () {
                    showHide();
                    indexShow();
                    rightMove();
                    timer = setTimeout(playAuto, t);
                },t)
            }else{
                showHide();
                indexShow();
                rightMove();
                timer = setTimeout(playAuto, t);
            }
        }

        playAuto();
        $('.section1').on('click', '.s1-right', function () {
            showHide();
            indexShow();
            rightMove();
        });

        $('.section1').on('click', '.s1-left', function () {
            i--;
            if (i < 0) {
                i = len - 1;
            }
            _this.prepend(_this.find('a:last-child'));
            _this.css('left', '-370px');
            _this.animate({'left': '0'}, 500);
            indexShow();
            leftMove();
        });

        $('.s1-toggle').on('click', 'span', function () {
            var index = $('.s1-toggle .active').attr('data-id') - $(this).attr('data-id');
            i = $(this).attr('data-id');
            if (index > 0) {
                for (var j = 0; j < Math.abs(index); j++) {
                    _this.prepend(_this.find('a:last-child'));
                }
                _this.css('left', -index * 370 + 'px');
                _this.animate({'left': '0'}, 500);
            } else if (index < 0) {
                _this.animate({'left': index * 370 + 'px'}, 500, function () {
                    _this.css('left', 0);
                    for (var k = 0; k < Math.abs(index); k++) {
                        _this.append(_this.find('a:first-child'));
                    }
                })
            } else {
                return false;
            }
            indexShow();
        });
        $('.section1').on('mouseover', '.s1-l-1', function () {
            clearTimeout(timer);
            timer = null;
        });

        $('.section1').on('mouseleave', '.s1-l-1', function () {
            timer = setTimeout(playAuto, t);
        });
    })();

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
		//大侠号、最新汉化、最新攻略点击后加载图片
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
    $(".sjzs-b").on("mouseenter", function () {
        $(this).addClass("hide").siblings(".sjzs-b").removeClass("hide");
        $(this).prev().addClass("active").siblings(".sjzs").removeClass("active");
    });
    $("#con_yxpc_3 form").each(function (i) {
        // var val = $(this).find("input.nickname").val(),
        // dval = $(this).find("input.nickname").attr("default-val");
        this.onsubmit = function () {
            var c = $(this).attr("class");
            var cReg = new RegExp("csgo");
            if ($(this).find("input.input").val() == "" || $(this).find("input.input").val() == $(this).find("input.input").attr("default-val")) {
                alert("输入不能为空！");
                return false;
            }
            if (cReg.test(c)) {
                var steamReg = /^7\d{16}$/;
                var steamid = $(this).find("input.input").val();
                if (!steamReg.test(steamid)) {
                    $.getJSON('http://csgo.ali213.net/site/nicknametosteamidcallback?nickname=' + steamid + '&callback=?', function (result) {
                        if (result['steamid'] == 0) {
                            alert("你的昵称有误！");
                            return false;
                        } else {
                            location.href = 'http://csgo.ali213.net/site/overview?steamID=' + result['steamid'];
                        }
                    });
                    return false;
                }
            }
            return true;
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
	// 回到顶部
    $(window).scroll(function () {
        if ($('html,body').scrollTop() >= 600) {
            $('.go-top').show();
        } else {
            $('.go-top').hide();
        }

        if ($('html,body').scrollTop() <=50) {
            $('.ali-index-bg span').css('top',55-$('html,body').scrollTop()+'px');
        }else{
            $('.ali-index-bg span').css('top','5px');
        }
    });
    $('.go-top').on('click', function () {
        $("html,body").animate({scrollTop: 0});
    });
	//关闭广告
    $('.ali-index-bg span').on('click',function () {
        $('.ali-index-bg').remove();
    })
	if ($(".deadline").length > 0) {
		$.each($(".deadline"), function (i, v) {
			timeProgress($(v));
		});
	}
	/*$('.top-deng').on('click', function () {
		if ($(this).hasClass('active')) {
			$('.index-container .bottom-bg').remove();
			$(this).removeClass('active');
			$('#change-style').attr('href', 'css/zsqf_index_gray.css');
			$(this).removeClass('active');
			$('.index-container').prepend('<div class="bottom-bg"><img class="ls" src="//img.fhyx.com/zsqf/images/ls.png" alt=""><img class="ls1" src="//img.fhyx.com/zsqf/images/sztop.png" alt=""></div>')
			$(".ls").addClass('lsdh');
			$(".ls1").addClass('lsdh1');
			$('.bottom-bg').fadeIn();
			$('.to-other-game').hide().eq(1).show();
			$('.ali-index-bg').hide().eq(1).show();
			setTimeout(function () {
				$('.index-container .bottom-bg').remove();
			}, 5000);
		} else {
			$('.index-container .bottom-bg').remove();
			$(this).addClass('active');
			$('#change-style').attr('href', 'css/zsqf_index_black.css');
			$(this).addClass('active');
			$('.to-other-game').hide().eq(0).show();
			$('.ali-index-bg').hide().eq(0).show();
		}
	});*/
});

function timeProgress(timeobj) {
	if (typeof showtime == "undefined") {
		var showtime = function () {
			var oDate = new Date();
			var iTime = oDate.getTime();
			if (timeobj.attr("data-id") * 1000 - iTime > 0) {
				timeobj.html(getlocalTime((timeobj.attr("data-id") * 1000 - iTime) / 1000));
			} else {
				timeobj.html(getlocalTime(0));
				clearInterval(timer);
			}
		}
	}
	showtime();
	var timer = setInterval(showtime, 1000);

}

function getlocalTime(oTime) {
	var k = {
		D: oTime / 3600 / 24,
		H: oTime / 3600 % 24,
		M: oTime / 60 % 60,
		S: oTime % 60
	};
	var returnstr = '';
	returnstr += '还剩<label>' + (k.D < 10 ? "0" + parseInt(k.D) : parseInt(k.D)) + '</label>天<label>' + (k.H < 10 ? "0" + parseInt(k.H) : parseInt(k.H)) + '</label>小时<label>' + (k.M < 10 ? "0" + parseInt(k.M) : parseInt(k.M)) + '</label>分<label>' + (k.S < 10 ? "0" + parseInt(k.S) : parseInt(k.S)) + '</label>秒';
	return returnstr;

}

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

//网页游戏开服文字
function web_kaifu_wz() {
    document.write('<div style="height:35px;">');
	document.write('<em><a href="https://g.ieeod0.com/s/1/683/109036.html?uid=504726&" target="_blank"><font color="#ff493b">战神觉醒BT</font></a></em>');
    var iii = 0;
    //今日开服当前时间段置顶
    var len = json_top1.length;
    var array = new Array();
    for (var i = 0; ; i++) {
        if (array.length < len) {
            generateRandom(len);
        } else {
            break;
        }
    }
    function generateRandom(count) {
        var rand = parseInt(Math.random() * count);
        for (var i = 0; i < array.length; i++) {
            if (array[i] == rand) {
                return false;
            }
        }
        array.push(rand);
    }

    for (var i = 0; i < array.length; i++) {
        iii++;
        var a1 = json_top1[array[i]]['gamename'];
        document.write('<em><a href="' + json_top1[array[i]]["url"] + '&w=' + (iii) + '&s=ali213_index" target="_blank" title="' + a1 + '">' + a1.substring(0, 5) + '</a></em>');
    }
    //今日开服置顶（不包括当前时间段）
    var len2 = json_top2.length;
    var array2 = new Array();
    for (var i = 0; ; i++) {
        if (array2.length < len2) {
            generateRandom2(len2);
        } else {
            break;
        }
    }
    function generateRandom2(count2) {
        var rand2 = parseInt(Math.random() * count2);
        for (var i = 0; i < array2.length; i++) {
            if (array2[i] == rand2) {
                return false;
            }
        }
        array2.push(rand2);
    }

    for (var i = 0; i < array2.length; i++) {
        iii++;
        var a2 = json_top2[array2[i]]['gamename'];
        document.write('<em><a href="' + json_top2[array2[i]]["url"] + '&w=' + (iii) + '&s=ali213_index" target="_blank" title="' + a2 + '">' + a2.substring(0, 5) + '</a></em>');
    }
    //今日开服不置顶的
    var len3 = json_top3.length;
    var array3 = new Array();
    for (var i = 0; ; i++) {
        if (array3.length < len3) {
            generateRandom3(len3);
        } else {
            break;
        }
    }
    function generateRandom3(count3) {
        var rand3 = parseInt(Math.random() * count3);
        for (var i = 0; i < array3.length; i++) {
            if (array3[i] == rand3) {
                return false;
            }
        }
        array3.push(rand3);
    }

    for (var i = 0; i < array3.length; i++) {
        iii++;
        var a3 = json_top3[array3[i]]['gamename'];
        document.write('<em><a href="' + json_top3[array3[i]]["url"] + '&w=' + (iii) + '&s=ali213_index" target="_blank" title="' + a3 + '">' + a3.substring(0, 5) + '</a></em>');
    }
    document.write('</div>');
}

//网页游戏开服列表
function web_kaifu_list() {

    var iii = 0;

    //今日开服当前时间段置顶

    var len = json_top1.length;
    var array = new Array();
    for (var i = 0; ; i++) {
        if (array.length < len) {
            generateRandom(len);
        } else {
            break;
        }
    }
    function generateRandom(count) {
        var rand = parseInt(Math.random() * count);
        for (var i = 0; i < array.length; i++) {
            if (array[i] == rand) {
                return false;
            }
        }
        array.push(rand);
    }

    for (var i = 0; i < array.length; i++) {
        iii++;

        var a1 = json_top1[array[i]]['gamename'];

        document.write('<li class="gifts-con">');
        document.write('<span>' + json_top1[array[i]]["dates"] + '</span>');
        document.write('<span><a class="normal" href="' + json_top1[array[i]]["url"] + '&w=' + (iii) + '&s=ali213_index" target="_blank" title="' + a1 + '">' + a1.substring(0, 5) + '</a></span>');
        document.write('<span>' + json_top1[array[i]]["changshang"] + '</span>');
        document.write('<span><a href="' + json_top1[array[i]]["url"] + '&w=' + (iii) + '&s=ali213_index" target="_blank">进入</a></span>');
        document.write('</li>');

        if (iii == 9) {
            return false;
        }


    }


    //今日开服置顶（不包括当前时间段）

    var len2 = json_top2.length;
    var array2 = new Array();
    for (var i = 0; ; i++) {
        if (array2.length < len2) {
            generateRandom2(len2);
        } else {
            break;
        }
    }
    function generateRandom2(count2) {
        var rand2 = parseInt(Math.random() * count2);
        for (var i = 0; i < array2.length; i++) {
            if (array2[i] == rand2) {
                return false;
            }
        }
        array2.push(rand2);
    }

    for (var i = 0; i < array2.length; i++) {
        iii++;

        var a2 = json_top2[array2[i]]['gamename'];
        document.write('<li class="gifts-con">');
        document.write('<span>' + json_top2[array2[i]]["dates"] + '</span>');
        document.write('<span><a class="normal" href="' + json_top2[array2[i]]["url"] + '&w=' + (iii) + '&s=ali213_index" target="_blank" title="' + a2 + '">' + a2.substring(0, 5) + '</a></span>');
        document.write('<span>' + json_top2[array2[i]]["changshang"] + '</span>');
        document.write('<span><a href="' + json_top2[array2[i]]["url"] + '&w=' + (iii) + '&s=ali213_index" target="_blank">进入</a></span>');
        document.write('</li>');
        if (iii == 9) {
            return false;
        }

    }

    //今日开服不置顶的

    var len3 = json_top3.length;
    var array3 = new Array();
    for (var i = 0; ; i++) {
        if (array3.length < len3) {
            generateRandom3(len3);
        } else {
            break;
        }
    }
    function generateRandom3(count3) {
        var rand3 = parseInt(Math.random() * count3);
        for (var i = 0; i < array3.length; i++) {
            if (array3[i] == rand3) {
                return false;
            }
        }
        array3.push(rand3);
    }

    for (var i = 0; i < array3.length; i++) {
        iii++;

        var a3 = json_top3[array3[i]]['gamename'];
        document.write('<li class="gifts-con">');
        document.write('<span>' + json_top3[array3[i]]["dates"] + '</span>');
        document.write('<span><a class="normal" href="' + json_top3[array3[i]]["url"] + '&w=' + (iii) + '&s=ali213_index" target="_blank" title="' + a3 + '">' + a3.substring(0, 5) + '</a></span>');
        document.write('<span>' + json_top3[array3[i]]["changshang"] + '</span>');
        document.write('<span><a href="' + json_top3[array3[i]]["url"] + '&w=' + (iii) + '&s=ali213_index" target="_blank">进入</a></span>');
        document.write('</li>');
        if (iii == 9) {
            return false;
        }

    }


}

