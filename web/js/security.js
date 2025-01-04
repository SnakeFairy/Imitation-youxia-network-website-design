/**
 *
 */

require.config({
	baseUrl: "/js",
	paths: {
		"domReady": "domReady",
		"jquery": "jquery-1.12.1.min",
		"jqueryui": "jquery-ui.min",
		"imgauth": "imgauth",
		"common": "common"
	}
});

require(['web/js/domReady','jquery','imgauth','jqueryui','common'], function (domReady, $, imgauth){
	window.unbindDragcallback = imgauth['unbindDragcallback'];

	domReady(function(){
		$(".ucenter_index_left_bottom_li").hover(function(){
			$(this).find("span").addClass("active");
		},function(){
			$(this).find("span").removeClass("active");
		});

		$(".trigger > div").click(function(){
			$(this).addClass("active").siblings().removeClass("active");
			$(".formholder").eq($(this).index()).addClass("active").siblings().removeClass("active");
		});

	});
});