
$(function(){

	/*首张大图延时加载*/
	if($('#yxtp').length>0){
		var bimg=new Image();
		bimg.src=$('.loader').attr('data-src');
		bimg.onload=function(){
			$('.xs-c2-c-l').html('<a href="'+bimg.src+'" target="_blank" title="'+$('.loader').attr('alt')+'"><img src="'+bimg.src+'" data-src="'+bimg.src+'" alt="'+$('.loader').attr('alt')+'" /></a>');
		}
	}
	/*图片视频下拉框加载*/
	$('#yxtp').jscroll(".jscroll-c",".jscroll-e",".jscroll-h");
	$('#yxsp').jscroll(".jscroll-c",".jscroll-e",".jscroll-h");

	/*游戏简介展开阅读*/
	if($('.xs-c1-c-con').height()>96){
		$('.xs-c1-c-con').css('height','96px');
		$('.xs-c1-c-con').after('<div class="xs-c1-c-more"><span>展开</span></div>');
	}
	$('.xs-c1-c-more span').live("click",function(){
		if($(this).html()=='展开'){
			$(this).html('收起');
			$('.xs-c1-c-con').css('height','auto');
		}else{
			$(this).html('展开');
			$('.xs-c1-c-con').css('height','96px');
		}
	});

	/*图片视频导航切换*/
	$('.xs-c2-c-r-t li').click(function(){
		$(this).addClass('curr').siblings().removeClass('curr');
		$('.xs-c2-c-r-c').eq($(this).index()).show().siblings('.xs-c2-c-r-c').hide();
		if($(this).index()==0){
			$('.jscroll-c').eq(0).children('ul').children('li').eq(0).addClass('curr').siblings().removeClass('curr');
			$('.xs-c2-c-l').html('<a href="'+$('.jscroll-c').eq(0).children('ul').children('li').eq(0).children('img').attr('src').replace('120X90_','')+'" title="'+$('.jscroll-c').eq(0).children('ul').children('li').eq(0).children('img').attr('alt')+'" target="_blank"><img src="'+$('.jscroll-c').eq(0).children('ul').children('li').eq(0).children('img').attr('src').replace('120X90_','')+'" alt="'+$('.jscroll-c').eq(0).children('ul').children('li').eq(0).children('img').attr('alt')+'" /></a>');
		}else if($(this).index()==1){
			$('.jscroll-c').eq(1).find('.yxsp-o').eq(0).addClass('curr').siblings().removeClass('curr');
			$('.xs-c2-c-l').html('<iframe src="//player.bilibili.com/player.html?bvid='+$('.jscroll-c').eq(1).find('.yxsp-l').eq(0).children('img').attr('data-src')+'&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true" style="height:100%;visibility:inherit;width:100%;z-index:1;overflow:visible;"></iframe>');
		}
	});
	/*图片切换*/
	$('.jscroll-c').eq(0).children('ul').children('li').click(function(){
		$(this).addClass('curr').siblings().removeClass('curr');
		$('.xs-c2-c-l').html('<div class="loader"><div class="loader-inner ball-spin-fade-loader"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div></div>');
		var pic=$(this).children('img').attr('src').replace('120X90_','');
		var tit=$(this).children('img').attr('alt');
		var img=new Image();
		img.src=pic;
		img.onload=function(){
			$('.xs-c2-c-l').html('<a href="'+pic+'" title="'+tit+'" target="_blank"><img src="'+pic+'" alt="'+tit+'" /></a>');
		}
	});
	/*视频切换*/
	$('.jscroll-c').find('.yxsp-o').click(function(){
		$(this).addClass('curr').siblings().removeClass('curr');
		var vid=$(this).find('.yxsp-l').children('img').attr('data-src');
		$('.xs-c2-c-l').html('<iframe src="//player.bilibili.com/player.html?bvid='+ vid +'&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true" style="height:100%;visibility:inherit;width:100%;z-index:1;overflow:visible;"></iframe>');
	});

})