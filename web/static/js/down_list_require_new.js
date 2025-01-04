require.config({
    shim: {
        'hottj': {
            deps: ['yxDeps'],
            exports: 'hottj'
        },
        'bdgd':{
            exports: 'bdgd'
        }
    },
    baseUrl: "js",
    paths: {
        "yxDeps": "https://static.ali213.net/js/common/yxDeps/yxDeps",
        "hottj":"https://www.ali213.net/news/include/hottj-require",
        'bdgd':'https://cpro.baidustatic.com/cpro/ui/cm'
    },
    waitSeconds:0
});

require(['yxDeps','hottj','bdgd'], function (yxDeps){
    window.callbackAfterLogin = 'loginAfter'; //用以替换ali-sso-pc-global-version-1.js?callbackAfterLogin=loginAfter
    yxDeps.domReady(function(){

        //适配代码
        if(window.location.href.indexOf("?mobile")<0){
            try{
                if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){
                    var spurl=window.location.href;
					var spurlarr=spurl.split('/');
					if(spurlarr[3]!=undefined && spurlarr[3]!='' && spurlarr[4]!=undefined && spurlarr[4]!=''){
						window.location.href='https://3g.ali213.net/down/'+spurlarr[3]+'/'+spurlarr[4]+'/';
					}else{
						window.location.href='https://3g.ali213.net/down/';
					}
                }else if(/iPad/i.test(navigator.userAgent)){
                }else{
                }
            }catch(e){}
        }

        /*导航头搜索*/
        var soubaiduBtn=document.getElementById("soubaidu");
        var soubaiduCtt=document.getElementById("imageSearch");
        soubaiduBtn.onclick=function(){
            window.open("https://s.ali213.net/cse/search?nsid=3&s=11239596709303470718&q="+encodeURI(soubaiduCtt.value));
        }

        $('.t3c li').eq(0).removeClass('hover');if(pd=='pcgame'){$('.t3c li').eq(6).addClass('hover');}else if(pd=='mini'){$('.t3c li').eq(10).addClass('hover');}else{$('.t3c li').eq(2).addClass('hover');}

        $.getScript('https://down.ali213.net/js/jquery.lazyload.min.js', function() {
            $("#rqjxhb img").lazyload({effect : "fadeIn"});
        })

        $('.list-type').each(function () {
            var type = $(this).attr('data-type');
            var num = $(this).find('.checked').parent('span').index();
            if(type == 1){
                if(num<=7){
                    $(this).find('.list-ul').css('height', '34px');
                }else{
                    $(this).find('.load-more').html('收起');
                    $(this).find('.load-more').addClass('checked');
                }
            }else if(type == 2){
                if(num<=15){
                    $(this).find('.list-ul').css('height', '68px');
                }else{
                    $(this).find('.load-more').html('收起');
                    $(this).find('.load-more').addClass('checked');
                }
            }
        });

        $('.load-more').on('click', function () {
            if (!$(this).hasClass('checked')) {
                $(this).addClass('checked');
                $(this).html('收起');
                $(this).prev('.list-ul-box').children('.list-ul').css('height', 'auto');
            } else {
                $(this).removeClass('checked');
                $(this).html('展开');
                var type = $(this).parent('.list-type').attr('data-type');
                if(type == 1){
                    $(this).prev('.list-ul-box').children('.list-ul').css('height', '34px');
                }else if(type == 2){
                    $(this).prev('.list-ul-box').children('.list-ul').css('height', '68px');
                }
            }
        });

        $('.sbg').attr('href', 'http://www.ali213.net/');
        

        $.getScript('https://www.ali213.net/news/kx/ali213-kx-function.js');
        $.getScript('https://'+ym+'/pubjs/Fhz.js',function(){
			$.getScript('https://'+ym+'/js/513.js');
		});
        $.getScript('https://'+ym+'/js/267-require.js');
        $.getScript('https://'+ym+'/js/276.js');
        $.getScript('https://'+ym+'/js/512-require.js');
        $.getScript('https://'+ym+'/js/388-require.js');
        $.getScript('https://'+ym+'/js/199-require.js');

        /*统计*/
      
    });
});