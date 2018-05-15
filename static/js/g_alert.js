/*
 * 
 */
function g_alert_url(type,cont,url)
{
	//html	
	var html = '<div id="g_all"></div><div id="g_box" style="z-index:1; position:fixed"><div id="g_title">提示</div><div id="g_cont" class="clearfix"><div style="float:left;width:40px;height:40px;"><img width="40px" height="40px"></div><span id="g_msg" class="float:right;">'+cont+'</span></div><div id="g_bottom"><div id="g_button"><a class="butt" id="ok">确定</a> <a class="butt" id="false">取消</a></div></div></div>';
	$('body').append(html);
	//css
	var css = "<style id='g_css'>#g_title{height:40px; background:#fff;border-radius:5px 5px 0 0; border-bottom:1px solid #eef0f1;line-height:40px;padding-left:25px; font-size:15px; font-weight:600; color:#535e66}";
	css += "#g_cont{height:60px; background:#fff;padding:20px 20px 20px 50px;}";
	css += "#g_all{width:100%; height:100%; z-index:1; position:fixed;filter:Alpha(opacity=50); background:#666666;top:0;left:0;opacity: 0.6}";
	css += "#g_msg{display:block;top:-30px; font-size:15px;margin-left:60px;}";
	css += "#g_bottom{height:40px; border-top:1px solid #eef0f1; border-radius:0px 0px 5px 5px; background:#fff; line-height:40px;}";
	css += "#g_button{width:140px; height:100%; margin-right:10px; float:right;}";
	css += ".butt{display:block; margin-top:5px;cursor:pointer; float:left;width:65px;height:30px;line-height:30px;text-align:center;color:#FFFFFF;border-radius:5px;}"
	css += "#ok{background:#0095d9; color:#FFFFFF; float:right;}";
	css += "#false{background:#546a79; color:#FFFFFF; float:left;}";
	css += "#g_box{width:400px;}</style>";	
	/*
	var html = '<div id="g_all"></div><div id="g_box" style="z-index:1; position:fixed"><div id="g_title">提示</div><div id="g_cont"><img width="60px" height="60px"><span id="g_msg">'+cont+'</span></div><div id="g_bottom"><div id="g_button"><a class="butt" id="ok">确定</a> <a class="butt" id="false">取消</a></div></div></div>';
	$('body').append(html);
	//css
	var css = "<style id='g_css'>#g_title{height:40px; background:#fff;border-radius:5px 5px 0 0; border-bottom:1px solid #eef0f1;line-height:40px;padding-left:25px; font-size:15px; font-weight:600; color:#535e66}";
	css += "#g_cont{height:80px; background:#fff;padding:20px 50px;}";
	css += "#g_all{width:100%; height:100%; z-index:1; position:fixed;filter:Alpha(opacity=50); background:#666666;top:0;left:0;opacity: 0.6}";
	css += "#g_msg{position:relative; top:-30px; font-size:15px;margin-left:30px;}";
	css += "#g_bottom{height:40px; border-top:1px solid #eef0f1; border-radius:0px 0px 5px 5px; background:#fff; line-height:40px;}";
	css += "#g_button{width:140px; height:100%; margin-right:10px; float:right;}";
	css += ".butt{display:block; margin-top:5px;cursor:pointer; float:left;width:65px;height:30px;line-height:30px;text-align:center;color:#FFFFFF;border-radius:5px;}"
	css += "#ok{background:#0095d9; color:#FFFFFF; float:right;}";
	css += "#false{background:#546a79; color:#FFFFFF; float:left;}";
	css += "#g_box{width:400px;}</style>";	*/
	$('head').append(css);
	//类型为alert
	if(type == 'success'){
		$('#g_cont img').attr('src','/static/images/g_alert/ok.png');
		$('#false').hide();
	}
	if(type == 'error'){
		$('#g_cont img').attr('src','/static/images/g_alert/fail.png');
		$('#false').hide();
	}
	//类型为confirm
	if(type == 'warn'){
		$('#g_cont img').attr('src','/static/images/g_alert/warn.jpg');
		$('#false').hide();
	}
	//类型为confirm
	if(type == 'confirm'){
		$('#g_cont img').attr('src','/static/images/g_alert/confirm.jpg');
	}
	//点击OK
	$('#ok').click(function(){
		$('#g_all').remove();
		$('#g_box').remove();
		$('#g_css').remove();
		if(url){
			window.location = url;
		}
		return true;
	});

	//点击false
	$('#false').click(function(){
		$('#g_all').remove();
		$('#g_box').remove();
		$('#g_css').remove();
		if(type != 'confirm'){
			if(url){
				window.location = url;
			}
		}
		return false;
	});


	//居中
	var _widht = document.documentElement.clientWidth; //屏幕宽
    var _height = window.screen.availHeight; //屏幕高

    var boxWidth = $("#g_box").width();
    var boxHeight = $("#g_box").height();

     $("#g_box").css({ top: (_height - boxHeight) / 2 + "px", left: (_widht - boxWidth) / 2 + "px" });
}

function g_alert(type,cont)
{
	//html	
	var html = '<div id="g_all"></div><div id="g_box" style="z-index:1; position:fixed"><div id="g_title">提示</div><div id="g_cont" class="clearfix"><div style="float:left;width:40px;height:40px;"><img width="40px" height="40px"></div><span id="g_msg" class="float:right;">'+cont+'</span></div><div id="g_bottom"><div id="g_button"><a class="butt" id="ok">确定</a> <a class="butt" id="false">取消</a></div></div></div>';
	$('body').append(html);
	//css
	var css = "<style id='g_css'>#g_title{height:40px; background:#fff;border-radius:5px 5px 0 0; border-bottom:1px solid #eef0f1;line-height:40px;padding-left:25px; font-size:15px; font-weight:600; color:#535e66}";
	css += "#g_cont{height:60px; background:#fff;padding:20px 20px 20px 50px;}";
	css += "#g_all{width:100%; height:100%; z-index:1; position:fixed;filter:Alpha(opacity=50); background:#666666;top:0;left:0;opacity: 0.6}";
	css += "#g_msg{display:block;top:-30px; font-size:15px;margin-left:60px;}";
	css += "#g_bottom{height:40px; border-top:1px solid #eef0f1; border-radius:0px 0px 5px 5px; background:#fff; line-height:40px;}";
	css += "#g_button{width:140px; height:100%; margin-right:10px; float:right;}";
	css += ".butt{display:block; margin-top:5px;cursor:pointer; float:left;width:65px;height:30px;line-height:30px;text-align:center;color:#FFFFFF;border-radius:5px;}"
	css += "#ok{background:#0095d9; color:#FFFFFF; float:right;}";
	css += "#false{background:#546a79; color:#FFFFFF; float:left;}";
	css += "#g_box{width:400px;}</style>";	
	$('head').append(css);
	//类型为alert
	if(type == 'success'){
		$('#g_cont img').attr('src','/static/images/g_alert/ok.png');
		$('#false').hide();
	}
	if(type == 'error'){
		$('#g_cont img').attr('src','/static/images/g_alert/fail.png');
		$('#false').hide();
	}
	//类型为confirm
	if(type == 'warn'){
		$('#g_cont img').attr('src','/static/images/g_alert/warn.png');
		$('#false').hide();
	}
	//类型为confirm
	if(type == 'confirm'){
		$('#g_cont img').attr('src','/static/images/g_alert/confirm.png');
	}
	//点击OK
	$('#ok').click(function(){
		$('#g_all').remove();
		$('#g_box').remove();
		$('#g_css').remove();
		return true;
	});

	//点击false
	$('#false').click(function(){
		$('#g_all').remove();
		$('#g_box').remove();
		$('#g_css').remove();
		return false;
	});


	//居中
	var _widht = document.documentElement.clientWidth; //屏幕宽
    var _height = window.screen.availHeight; //屏幕高

    var boxWidth = $("#g_box").width();
    var boxHeight = $("#g_box").height();

     $("#g_box").css({ top: (_height - boxHeight) / 3 + "px", left: (_widht - boxWidth) / 2 + "px" });
}
function g_alert_callback(type,cont,callback,para)
{
	//html	
	var html = '<div id="g_all"></div><div id="g_box" style="z-index:1; position:fixed"><div id="g_title">提示</div><div id="g_cont" class="clearfix"><div style="float:left;width:40px;height:40px;"><img width="40px" height="40px"></div><span id="g_msg" class="float:right;">'+cont+'</span></div><div id="g_bottom"><div id="g_button"><a class="butt" id="ok">确定</a> <a class="butt" id="false">取消</a></div></div></div>';
	$('body').append(html);
	//css
	var css = "<style id='g_css'>#g_title{height:40px; background:#fff;border-radius:5px 5px 0 0; border-bottom:1px solid #eef0f1;line-height:40px;padding-left:25px; font-size:15px; font-weight:600; color:#535e66}";
	css += "#g_cont{height:60px; background:#fff;padding:20px 20px 20px 50px;}";
	css += "#g_all{width:100%; height:100%; z-index:1; position:fixed;filter:Alpha(opacity=50); background:#666666;top:0;left:0;opacity: 0.6}";
	css += "#g_msg{display:block;top:-30px; font-size:15px;margin-left:60px;}";
	css += "#g_bottom{height:40px; border-top:1px solid #eef0f1; border-radius:0px 0px 5px 5px; background:#fff; line-height:40px;}";
	css += "#g_button{width:140px; height:100%; margin-right:10px; float:right;}";
	css += ".butt{display:block; margin-top:5px;cursor:pointer; float:left;width:65px;height:30px;line-height:30px;text-align:center;color:#FFFFFF;border-radius:5px;}"
	css += "#ok{background:#0095d9; color:#FFFFFF; float:right;}";
	css += "#false{background:#546a79; color:#FFFFFF; float:left;}";
	css += "#g_box{width:400px;}</style>";	
	$('head').append(css);
	//类型为alert
	if(type == 'success'){
		$('#g_cont img').attr('src','/static/images/g_alert/ok.png');
		$('#false').hide();
	}
	if(type == 'error'){
		$('#g_cont img').attr('src','/static/images/g_alert/fail.png');
		$('#false').hide();
	}
	//类型为confirm
	if(type == 'warn'){
		$('#g_cont img').attr('src','/static/images/g_alert/warn.png');
		$('#false').hide();
	}
	//类型为confirm
	if(type == 'confirm'){
		$('#g_cont img').attr('src','/static/images/g_alert/confirm.png');
	}
	//点击OK
	$('#ok').click(function(){
		$('#g_all').remove();
		$('#g_box').remove();
		$('#g_css').remove();
		callback(para);
		return true;
	});

	//点击false
	$('#false').click(function(){
		$('#g_all').remove();
		$('#g_box').remove();
		$('#g_css').remove();
		return false;
	});


	//居中
	var _widht = document.documentElement.clientWidth; //屏幕宽
    var _height = window.screen.availHeight; //屏幕高

    var boxWidth = $("#g_box").width();
    var boxHeight = $("#g_box").height();

     $("#g_box").css({ top: (_height - boxHeight) / 3 + "px", left: (_widht - boxWidth) / 2 + "px" });
}