<?php $this->renderPartial('/_include/header')?>
<div id="main">
<style>
#banner {
    width: 985px;
    height: 214px;
    overflow: hidden;
    position: relative;
    cursor:pointer;
    margin:0 auto;
    margin-bottom: 10px;
}
#banner ul
{
  position: relative;
  width: 3940px;
}
#banner ul li.box
{
    float: left;
    width: 985px;
}
#banner ol
{
    position: absolute;
    bottom: .5em;
    width: 100%;
    text-align: center;
    z-index: 300;
    padding: 0;
}
#banner ol li
{
  display: inline-block;
  margin: 0.25em;
}
#banner ol li a
{
    display: block;
    width: 11px;
    height: 11px;
    text-indent: 100%;
    overflow: hidden;
    white-space: nowrap;
    border: 1px solid #eee;
    border-radius: 7px;
    opacity: .7;
    -webkit-box-shadow: inset 0 0 2px #333;
    box-shadow: inset 0 0 2px 2px #333;
    margin: 0 3px;
}
#banner ol li a.cur
{
  background: #000;
}
</style>
<div id="banner">
  <ul class="clearfix">
    <!-- <li class="box"><img src="/static/images/home/c_1.jpg" alt="轮播大图A" width="985" height="214"/></li> -->
    <li class="box"><img src="/static/images/home/c_2.jpg" alt="轮播大图B" width="985" height="214"/></li>
    <li class="box"><img src="/static/images/home/c_3.jpg" alt="轮播大图C" width="985" height="214"/></li>
    <li class="box"><img src="/static/images/home/c_4.jpg" alt="轮播大图D" width="985" height="214"/></li>
  </ul>
  <ol>
    <li><a link="#" class="cur"></a></li>
    <li><a link="#"></a></li>
    <li><a link="#"></a></li>
    <!-- <li><a link="#"></a></li> -->
  </ol>
</div>
<script>
// 轮播图片自动切换
  var i=0;
  setInterval(function(){
  	i++;
  	$('#banner ul').animate({left:985*(-1)*(i%3)+'px'},'slow','swing');
  	$('#banner ol a:eq('+(i%3)+')').addClass('cur');
  	$('#banner ol a:eq('+((i+2)%3)+')').removeClass('cur');
  },5000);
 </script>
<?php $bagecmsAbout = Bagecms::getItem('page','index_about', array('where'=>"title_alias='about'"));?>
<!--首页模块-->
<div class="module clear">
  <div class="wrap">
    <div class="moduleBox about">
      <div class="col">
        <div>
          <h2>蔚然中心<em>ABOUT</em></h2>
          <a href="<?php echo $this->createUrl('page/show',array('name'=>'about'))?>" class="move" target="_blank">更多</a>
        </div>
      </div>
      <div class="con">
        <?php if($bagecmsAbout['attach_file']):?>
        <img src="<?php echo $this->_baseUrl?>/<?php echo $bagecmsAbout['attach_file']?>"  />
        <?php endif?>
        <p><?php echo $bagecmsAbout['intro']?></p>
        <!-- <p><a href="<?php echo $this->createUrl('page/show',array('name'=>'about'))?>" class="link floatR" target="_blank">了解更多</a></p> -->
      </div>
    </div>
    <div class="moduleBox post">
      <div class="col">
        <h2>蔚然动态<em>NEWS</em></h2>
        <a href="<?php echo $this->createUrl('post/index',array('catalog'=>'company-news'))?>" class="move" target="_blank">更多</a> </div>
      <div class="con">
        <ul>
          <?php foreach((array)Bagecms::getList('post','index_news',array('where'=>"status_is='Y' AND catalog_id=1",'order'=>'id DESC', 'limit'=>10)) as $newsKey=>$newsRow):?>
          <li><em class="date"><?php echo date('m-d',$newsRow['create_time'])?></em><a href="<?php if($newsRow['redirect_url']):?><?php echo XUtils::convertHttp($newsRow['redirect_url'])?><?php else:?><?php echo $this->createUrl('post/show',array('id'=>$newsRow['id']))?><?php endif?>" target="_blank"><?php echo $newsRow['title']?></a></li>
          <?php endforeach?>
        </ul>
      </div>
    </div>
    <div class="moduleBox cultural">
      <div class="col">
        <h2>蔚然文化<em>CULTURAL</em></h2>
        <a href="<?php echo $this->createUrl('page/show',array('name'=>'cultural'))?>" class="move" target="_blank">更多</a> </div>
      <div class="con">
        <h3>愿景:</h3>
        <p>愿迷惑者得以清明；<br/>愿痛苦者得以安康；<br/>愿我们的生命得以完整。</p>
        <h3>使命:</h3>
        <p>协助个人的生命觉醒；<br/>推动人类的意识转化；<br/>显化社会的幸福丰盛。</p>
      </div>
    </div>
  </div>
</div>
<!--/首页模块--> 
<!--商品-->
<div class="wrap clear ">
  <div class="indexGoods">
    <div class="col">
      <h2>沟通视频<em>VIDEOS</em></h2>
      <a href="<?php echo $this->createUrl('post/index',array('catalog'=>'new-arrival'))?>" class="move" target="_blank">更多</a> </div>
    <div class="scrollBox">
      <div class="goodsImage">
        <ul class="list" >
          <?php foreach((array)Bagecms::getList('post','index_goods',array('where'=>"status_is='Y' AND catalog_id=4",'order'=>'id DESC', 'limit'=>8)) as $goodsKey=>$goodsRow):?>
          <li style="float: left; width: 170px; "><a href="<?php echo $this->createUrl('post/show',array('id'=>$goodsRow['id']))?>" target="_blank" title="<?php echo $goodsRow['title']?>"><img src="<?php echo $this->_baseUrl ?>/<?php echo $goodsRow['attach_file']?>" width="170" height="120" alt="<?php echo $goodsRow['title']?>"><span><?php echo $goodsRow['title']?></span></a></li>
          <?php endforeach?>
        </ul>
         </div>
    </div>
  </div>
</div>
<script type="text/javascript">
jQuery(".indexGoods").slide({ mainCell:"ul", effect:"leftMarquee", vis:5, autoPlay:true, interTime:50, switchLoad:"_src" });	
</script> 
<?php $this->renderPartial('/_include/footer')?>


