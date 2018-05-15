<?php $this->renderPartial('/_include/header')?>
  <div class="mainWrap">
    <div class="topDesc">
      <div class="desc"><!-- 
        <p style=" margin-top:40px;">致力于提升客户品牌形象、实现客户商业目标!</p>
        <p>Commitment to enhance customer brand image,customer business goals!</p> -->
      </div>
    </div>
    <div class="global goods">
      <div class="loc clear">
        <h2 class="floatL">视频分享</h2>
        <div class="floatR position"> <span>您的位置：</span> <a href="<?php echo Yii::app()->homeUrl?>">首页</a> <em></em><span>视频分享</span></div>
      </div>
      <div class="listBox clear">
        <ul>
         <?php foreach((array)$bagecmsDataList as $bagecmsKey=>$bagecmsRow):?>
          <li class="full cl ">
            <div class="b_img"><a href="<?php if($bagecmsRow->redirect_url):?><?php echo XUtils::convertHttp($bagecmsRow->redirect_url)?><?php else:?><?php echo $this->createUrl('post/show',array('id'=>$bagecmsRow->id))?><?php endif?>" target="_blank"><img src="<?php echo $this->_baseUrl?>/<?php echo $bagecmsRow->attach_thumb?>" alt="<?php echo $bagecmsRow->title?>" class="tn"></a></div>
            <h2><a href="<?php echo $this->createUrl('post/show',array('id'=>$bagecmsRow->id))?>" target="_blank" style=""><?php echo $bagecmsRow->title?></a></h2>
          </li>
          <?php endforeach?>
        </ul>
      </div>
      <?php $this->widget('CLinkPager',array('pages'=>$bagecmsPagebar));?>
    </div>
<?php $this->renderPartial('/_include/footer')?>