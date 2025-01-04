$(function(){
	$('.t1c_c').hover(function(){
		$('.t1c_h').css('display','block');
	},function(){
		$('.t1c_h').css('display','none');
	});
	$('.t1c_h').hover(function(){
		$('.t1c_h').css('display','block');
	},function(){
		$('.t1c_h').css('display','none');
	});
});
if(window.location.href.indexOf('www.ali213.net/zt/')>-1){
	setTimeout(function () {
		$('.ali-comment-hf-container').css({
			'border':0,
			'background':'transparent'
		})
	},2000)
}
// (function(){
// 	var getH = function(d){
// 		return d.offsetHeight || d.clientHeight;
// 	}
// 	var index = 0,
// 		ntesannouce = document.getElementById('ntes'),
// 		ul = ntesannouce.getElementsByTagName('ul')[0],
// 		len = ul.getElementsByTagName('li').length,
// 		as = ul.getElementsByTagName('a'),
// 		height = getH(ul),
// 		step = height / len;
// 	var move = function(d,c){
// 		d.style.top = -step*index + 'px';
// 		var texta = as[index],
// 			text = texta.innerHTML,
// 			textlen = text.length,
// 			tcount = 1;
// 		texta.innerHTML = '';
// 		var inter = setInterval(function(){
// 			tcount++;
// 			texta.innerHTML = text.substring(0,tcount);
// 			if(tcount > textlen){
// 				clearInterval(inter); 
// 				index++
// 				c();
// 				return;
// 			}
// 		},60)
// 	}
	
// 	if(ntesannouce.length <= 0) return;
// 	var ex = function(){
// 		setTimeout(function(){
// 			if(index >= len) {ntesannouce.style.top = 0;index = 0;}
// 			move(ntesannouce,function(){
// 				ex();
// 			});
// 		},3000)
// 	}
// 	move(ntesannouce,function(){
// 		ex();
// 	});
// })();