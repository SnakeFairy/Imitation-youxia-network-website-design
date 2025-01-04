var ym;
var pn = parseInt(Math.random()*2+1);
switch(pn){
	case 1:
		ym='pbmp.ali213.net';
		break;
	case 2:
		ym='pbmp.ali213.net';
		break;
}
function getsite(siteid,sitetype){
	if(siteid!=''){
		if(sitetype==1){
			document.write('<script type="text/javascript" src="//'+ym+'/pubjs/'+siteid+'.js"></script>');
		}else{
			document.write('<script type="text/javascript" src="//'+ym+'/js/'+siteid+'.js"></script>');
		}
	}
}
function setsite(siteid,sitetype,id){
	if(siteid!=''){
		if(sitetype==1){
		   url = '//'+ym+'/pubjs/'+siteid+'.js';
		}else{
		   url = '//'+ym+'/js/'+siteid+'.js';
		}
		/*
		var dom = document.getElementById(id);
		var sc = document.createElement("script");
		sc.setAttribute("type","text/javascript");
		sc.setAttribute("src",url);
				sc.setAttribute("async","true");
				sc.setAttribute("id","defer");
				

		dom.appendChild(sc);
		*/
		$.getScript(url, function() {
		 //  insert();
		});
		
	}
}



