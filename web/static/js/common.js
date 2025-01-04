define(['jquery','domReady'],function($,domReady){
	domReady(function(){
		
		$.getJSON('//comment.ali213.net/ali-comment-renotice.php?callback=?',function(result){
			if (parseInt(result['msg'])){
				if ($(".side-reminder").get(0) == undefined){
					$(".u_comment").parent().append("<i class=\"side-reminder\">"+(parseInt(result['msg'])>99 ? "99+" : result['msg'])+"</i>");
				}else{
					$(".side-reminder").html(parseInt(result['msg'])>99 ? "99+" : result['msg']);
				}
				if ($(".comment-commented-of-mine").get(0) != undefined) $(".comment-commented-of-mine").append("<em></em>");
			}
		});
		
	});
});