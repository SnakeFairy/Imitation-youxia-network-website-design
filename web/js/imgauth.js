define(['jquery','jqueryui'],function($){
	$("head").append("<link rel=\"stylesheet\" href=\"/css/ali-img-auth-pc-global-version-1.css\">");
	
	var aliImgAuthPcGlobal = function aliImgAuthPcGlobal(privateKey,scene,holderSelector,callbackFun,closeBtn){
		$.getJSON('//api2.ali213.net/imagedragauth/generator?callback=?',function(result){
			if ($(holderSelector+" > .imgDragAuthShield").get(0) != undefined) $(holderSelector+" > .imgDragAuthShield").remove();
			var closeBtnStr = closeBtn ? '<div class="imgDragAuthCloseBtn"></div>' : '';
			$(holderSelector).append('<div class="imgDragAuthShield"><div class="imgDragAuthHolder">'+closeBtnStr+'<div class="imgDragAuthInstructionTips">拖动底部滑块完成拼图以完成验证</div><div class="reflectStage"><div class="imgDragAuthRefreshBtn"></div><img ondragstart="return false;" class="bgimg bgimg'+scene+'" src="//api2.ali213.net/imagedragauth/backgroundimg" /><img ondragstart="return false;" class="reflectimg reflectimg'+scene+'" src="//api2.ali213.net/imagedragauth/dragableimg" style="top:'+result['y']+'px;" /></div><div class="dragBarHolder dragBarHolder'+scene+'"><div class="bgborder1"></div><div class="bgborder2 bgborder'+scene+'"></div><div class="draggablebtn draggablebtn'+scene+' draggable ui-widget-content"></div></div></div></div>');
			$( ".draggablebtn"+scene ).draggable({
	    		containment: ".dragBarHolder"+scene,
	    		axis: "x",
	    		start: function( event, ui ) {
	    			$( ".draggablebtn"+scene ).removeClass("draggablebtnFail draggablebtnSuccess").addClass("draggablebtnMove");
	    			$(".bgborder"+scene).removeClass("bgborderFail bgborderSuccess").addClass("bgborderMove");
	    		},
	    		drag: function( event, ui ) {
	    			$(".reflectimg"+scene).css({"left":$( ".draggablebtn"+scene ).css("left")});
	    			$(".bgborder"+scene).css({"width":$( ".draggablebtn"+scene ).css("left")});
	    			$(".bgborder"+scene).width($( ".draggablebtn"+scene ).css("left"));
	    		},
	    		stop: function() {
	            	$.getJSON('//api2.ali213.net/imagedragauth/authvalid?x='+parseInt($( ".draggablebtn"+scene ).css("left"))+'&y='+parseInt($( ".reflectimg"+scene ).css("top"))+'&privateKey='+privateKey+'&type='+scene+'&callback=?',function(result){
	            		if (result['status']){
	            			$( ".draggablebtn"+scene ).removeClass("draggablebtnMove draggablebtnFail").addClass("draggablebtnSuccess");
	            			$( ".bgborder"+scene ).removeClass("bgborderMove bgborderFail").addClass("bgborderSuccess");
	            		}else{
	            			$( ".draggablebtn"+scene ).removeClass("draggablebtnMove draggablebtnSuccess").addClass("draggablebtnFail");
	            			$( ".bgborder"+scene ).removeClass("bgborderMove bgborderSuccess").addClass("bgborderFail");
	            		}
	            		window[callbackFun].call(this,result);
	            	});
	            }
	    	});
		});
		if (closeBtn){
			$(holderSelector).undelegate(".imgDragAuthCloseBtn","click");
			$(holderSelector).delegate(".imgDragAuthCloseBtn","click",function(){
				$(holderSelector+" > .imgDragAuthShield").remove();
			});
		}
		$(holderSelector).undelegate(".imgDragAuthRefreshBtn","click");
		$(holderSelector).delegate(".imgDragAuthRefreshBtn","click",function(){
			$.getJSON('//api2.ali213.net/imagedragauth/generator?callback=?',function(result){
				$(".bgimg"+scene).attr("src","//api2.ali213.net/imagedragauth/backgroundimg?r="+Math.random());
				$(".reflectimg"+scene).attr("src","//api2.ali213.net/imagedragauth/dragableimg?r="+Math.random());
				$(".draggablebtn"+scene).css({"left":"0px"});
				$(".reflectimg"+scene).css({"left":"0px","top":result['y']});
				$( ".draggablebtn"+scene ).draggable( "enable" );
				$(".bgborder"+scene).removeClass("bgborderFail bgborderSuccess bgborderMove").width(0);
				$( ".draggablebtn"+scene ).removeClass("draggablebtnFail draggablebtnSuccess draggablebtnMove");
			});
		});
	}
	
	var passportlogincallback = function passportlogincallback(result){
		var scene = 'login';
		if (!result['status']){
			setTimeout(function(){
				$.getJSON('//api2.ali213.net/imagedragauth/generator?callback=?',function(result){
					$(".bgimg"+scene).attr("src","//api2.ali213.net/imagedragauth/backgroundimg?r="+Math.random());
					$(".reflectimg"+scene).attr("src","//api2.ali213.net/imagedragauth/dragableimg?r="+Math.random());
					$(".draggablebtn"+scene).css({"left":"0px"}).removeClass("draggablebtnFail draggablebtnSuccess draggablebtnMove");
					$(".reflectimg"+scene).css({"left":"0px","top":result['y']});
					$( ".bgborder"+scene ).removeClass("bgborderFail bgborderSuccess bgborderMove").width(0);
				});
			},500);
		}else{
			$( ".draggablebtn"+scene ).draggable( "disable" );
			$("#input_yzm").val(result['y']);
			$("#signin").submit();
		}
	}
	
	var encashmentDragcallback = function encashmentDragcallback(result){
		var scene = 'encashment';
		if (!result['status']){
			setTimeout(function(){
				$.getJSON('//api2.ali213.net/imagedragauth/generator?callback=?',function(result){
					$(".bgimg"+scene).attr("src","//api2.ali213.net/imagedragauth/backgroundimg?r="+Math.random());
					$(".reflectimg"+scene).attr("src","//api2.ali213.net/imagedragauth/dragableimg?r="+Math.random());
					$(".draggablebtn"+scene).css({"left":"0px"}).removeClass("draggablebtnFail draggablebtnSuccess draggablebtnMove");
					$(".reflectimg"+scene).css({"left":"0px","top":result['y']});
					$( ".bgborder"+scene ).removeClass("bgborderFail bgborderSuccess bgborderMove").width(0);
				});
			},500);
		}else{
			$("body > .imgDragAuthShield").remove();
			$.getJSON('/ajax.html?action=encashment-msg&mobile='+$(".encashment-mobile").val()+'&yzm='+encodeURIComponent(result['y']),function(msgResult){
				if ($(".encashment-msg-yzm").next("em").get(0) != undefined) $(".encashment-msg-yzm").next("em").remove();
				if (msgResult['status']){
					$(".encashment-msg-yzm").after('<em style="color:#0a8de3;">验证码已发送至您的手机，请注意查收</em>');
					window['smsCountDown'].call(this,60); //开启倒计时60秒
					$(".encashment-submit").attr("disabled",false).addClass("encashment-submit-ready"); //把提交按钮开启
				}else{
					$(".encashment-msg-yzm").after('<em>'+msgResult['msg']+'</em>');
				}
			});
		}
	}
	
	var unbindDragcallback = function unbindDragcallback(result){
		var scene = 'unbind';
		if (!result['status']){
			setTimeout(function(){
				$.getJSON('//api2.ali213.net/imagedragauth/generator?callback=?',function(result){
					$(".bgimg"+scene).attr("src","//api2.ali213.net/imagedragauth/backgroundimg?r="+Math.random());
					$(".reflectimg"+scene).attr("src","//api2.ali213.net/imagedragauth/dragableimg?r="+Math.random());
					$(".draggablebtn"+scene).css({"left":"0px"}).removeClass("draggablebtnFail draggablebtnSuccess draggablebtnMove");
					$(".reflectimg"+scene).css({"left":"0px","top":result['y']});
					$( ".bgborder"+scene ).removeClass("bgborderFail bgborderSuccess bgborderMove").width(0);
				});
			},500);
		}else{
			$("body > .imgDragAuthShield").remove();
			$.getJSON('/ajax.html?action=unbind-msg&yzm='+encodeURIComponent(result['y'])+'&type='+$("[name='unbind']").val(),function(msgResult){
				if (msgResult['status']){
					alert(msgResult['msg']);
					window['smsCountDown'].call(this,60); //开启倒计时60秒
				}else{
					alert(msgResult['msg']);
					$(".unbindtips").html('滑动验证失败');
				}
			});
		}
	}

	var destroyDragcallback = function destroyDragcallback(result){
		var scene = 'destroy';
		if (!result['status']){
			setTimeout(function(){
				$.getJSON('//api2.ali213.net/imagedragauth/generator?callback=?',function(result){
					$(".bgimg"+scene).attr("src","//api2.ali213.net/imagedragauth/backgroundimg?r="+Math.random());
					$(".reflectimg"+scene).attr("src","//api2.ali213.net/imagedragauth/dragableimg?r="+Math.random());
					$(".draggablebtn"+scene).css({"left":"0px"}).removeClass("draggablebtnFail draggablebtnSuccess draggablebtnMove");
					$(".reflectimg"+scene).css({"left":"0px","top":result['y']});
					$( ".bgborder"+scene ).removeClass("bgborderFail bgborderSuccess bgborderMove").width(0);
				});
			},500);
		}else{
			$("body > .imgDragAuthShield").remove();
			$.getJSON('/ajax.html?action=destroymsg&mobile='+$(".destory-key-holder > .line1 > .span3").attr("data-src")+'&yzm='+encodeURIComponent(result['y']),function(msgResult){
				if (msgResult['status']){
					$(".destroyWindow1Holder .msg-send-tips").html("发送成功，请查收！")
					window['smsCountDown'].call(this,60); //开启倒计时60秒
				}else{
					$(".destroyWindow1Holder .msg-send-tips").html(msgResult['msg'])
				}
			});
		}
	}

	var mobileFirstDragcallback = function mobileFirstDragcallback(result){
		var scene = 'mobilefirst';
		if (!result['status']){
			setTimeout(function(){
				$.getJSON('//api2.ali213.net/imagedragauth/generator?callback=?',function(result){
					$(".bgimg"+scene).attr("src","//api2.ali213.net/imagedragauth/backgroundimg?r="+Math.random());
					$(".reflectimg"+scene).attr("src","//api2.ali213.net/imagedragauth/dragableimg?r="+Math.random());
					$(".draggablebtn"+scene).css({"left":"0px"}).removeClass("draggablebtnFail draggablebtnSuccess draggablebtnMove");
					$(".reflectimg"+scene).css({"left":"0px","top":result['y']});
					$( ".bgborder"+scene ).removeClass("bgborderFail bgborderSuccess bgborderMove").width(0);
				});
			},500);
		}else{
			$("body > .imgDragAuthShield").remove();
			$.getJSON('/ajax.html?action=mobilefirst&mobile='+$("[name='mobile']").val()+'&yzm='+encodeURIComponent(result['y']),function(msgResult){
				if (msgResult['status']){
					$("[name='msgsent']").val("1");
					window['smsCountDown'].call(this,60); //开启倒计时60秒
				}else{
					$("[name='msgsent']").val("0");
					alert(msgResult['msg']);
				}
			});
		}
	}

	return {
		aliImgAuthPcGlobal: aliImgAuthPcGlobal,
		passportlogincallback: passportlogincallback,
		encashmentDragcallback: encashmentDragcallback,
		unbindDragcallback: unbindDragcallback,
		destroyDragcallback: destroyDragcallback,
		mobileFirstDragcallback: mobileFirstDragcallback
    };
});