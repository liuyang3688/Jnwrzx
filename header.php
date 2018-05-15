<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<title><?php echo $this->_seoTitle?></title>
<meta name="author" content="liuyang" />
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="always" name="referrer">
<meta name="keywords" content="<?php echo $this->_seoKeywords?>">
<meta name="description" content="<?php echo $this->_seoDescription?>">
<link rel="stylesheet" href="<?php echo $this->_theme->baseUrl?>/css/style.css">
<?php Yii::app()->clientScript->registerCoreScript('jquery',CClientScript::POS_END); ?>
<script type="text/javascript" src="<?php echo $this->_baseUrl?>/static/js/jquery.SuperSlide.2.1.js"></script>
<script type="text/javascript" src="<?php echo $this->_baseUrl?>/static/js/g_alert.js"></script>
<script type="text/javascript" src="<?php echo $this->_baseUrl?>/static/js/marquee.js"></script>
<style>
#header
{
	margin-bottom:10px;
}
#header .inner
{
	width:987px;
	margin: 0 auto;
}	
#header .head_up_1
{
	height:100px;
	margin-bottom:20px;
}
#header .head_up_2 ul
{
	border-radius: 5px;
}
#header .head_up_2 ul li
{
	/*width: 164px;*/
	width: 140px;
	height:40px;
	line-height:40px;
	font-family: "微软雅黑";
	text-align:center;
	float:left;
	font-size:14px;
	color:#fff;
	background:#C721BB;
	cursor:pointer;
	border-left:1px solid #eee;
	margin-left:-1px;
	border-radius:5px;
	list-style:none;
}
#header .head_up_2 ul li:hover,#header .head_up_2 ul li .cur
{
	background:#F726E8
}
#header .head_up_3
{
	margin-top:5px;
}
</style>
</head>
<body>
<div class="container">
	<div id="header">
		<div class="inner">
			<div class="head_up_1"><img src="/static/images/logo.png" width="987" height="100"/></div>
			<div class="head_up_2">
				<ul class="clearfix">
					<li onclick="javascript:window.location.href='/'">首页</li>
					<li onclick="javascript:window.location.href='<?php echo $this->createUrl('page/show',array('name'=>'about'))?>'">蔚然中心</li>
					<li onclick="javascript:window.location.href='<?php echo $this->createUrl('post/index',array('catalog'=>'news'))?>';">蔚然动态</li>
					<li onclick="javascript:window.location.href='<?php echo $this->createUrl('post/index',array('catalog'=>'videos'))?>';">沟通视频</li>
					<li onclick="javascript:window.location.href='<?php echo $this->createUrl('post/index',array('catalog'=>'share'))?>';">学员分享</li>
					<li onclick="javascript:window.location.href='<?php echo $this->createUrl('site/course',array());?>';">课程介绍</li>
					<li onclick="javascript:window.location.href='<?php echo $this->createUrl('site/recruit',array());?>';">中心招聘</li>
				</ul>
			</div>
			<div class="head_up_3">
				<table class="up" width="980px" border="0" cellSpacing="0" cellspacing="0">
	  				<tr>
	    				<td valign="middle" width="20px" align="left"><img src="/static/images/guangbo.jpg"/></td>
	    				<td valign="middle" width="180px" style=" font-size:13px; overflow:hidden; text-align:center; vertical-align:middle;"><font color="#8e1d6b">心灵顾问:&nbsp;</font></td>
	    				<td align="left" style="font-size:13px; overflow:hidden; text-align:center; vertical-align:middle;">
	      					<div id="guwen_link" style="overflow:hidden; line-height:22px; height:22px;"> 
	       						<!-- <span style="color:#F71A1A">杨萧蔚：138-0531-1479 微信号：jnwrzx&nbsp; &nbsp; &nbsp; &nbsp;申娟：135-7310-0078 微信号：Juanjuan503703&nbsp; &nbsp; &nbsp;&nbsp;小光：13688638848 微信号：gxgwxt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> -->
	       						<span style="color:#A93993">杨萧蔚：138-0531-1479 微信号：jnwrzx&nbsp; &nbsp; &nbsp; &nbsp;李凌：151-6919-5752 微信号：15169195752&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;温大姐：139-9650-3779 微信号：13996503779&nbsp;&nbsp;&nbsp;&nbsp;
	      					</div>
	    				</td>
	  				</tr>
					<script>new Marquee("guwen_link",2,1,880,22,20,0,0)</script>
				</table>
			</div>
		</div>
	</div>
