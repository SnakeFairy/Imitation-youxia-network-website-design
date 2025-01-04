/**
 * 游侠网【新闻】内页统计用的
 */
var channelID = 1 , entityID = typeof(newsid) == 'undefined' ? undefined : newsid, referer = window.parent.document.referrer || '';
if (entityID && !isNaN(entityID)){
	$.getJSON('//click.ali213.net/general_raw_hits_data.php?channelID='+channelID+'&entityID='+entityID+'&referer='+referer+'&callback=?',function(result){
		if ($("#totalhits").get(0) != undefined) $("#totalhits").html(result['hits']);
	});
}