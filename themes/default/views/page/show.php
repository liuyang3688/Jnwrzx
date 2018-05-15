<?php $this->renderPartial('/_include/header')?>
<div class="mainWrap"> 
<div class="topDesc">
  <div class="desc"><!-- 
    <p style=" margin-top:20px;color:red;font-weight:bold;">【愿景】--愿迷惑者得以清明；愿痛苦者得以安康；愿贫困者得以丰盛；愿安息者得以解脱！</p>
    <p style=" margin-top:10px;color:red;font-weight:bold;">【使命】--协助[个人]的生命觉醒 / --推动[人类]的意识转化 / --显化[社会]的幸福丰盛！</p>
    <p style=" margin-top:10px;color:red;font-weight:bold;">【理念】--了解因果、发现自己、圆满人生！</p> -->
  </div>
</div>
<div class="global clear">
  <?php $this->renderPartial('/_include/sidebar_left')?>
  <div class="mainBox">
    <div class="loc clear">
      <div class="position"> <span>您的位置：</span> <a href="<?php echo Yii::app()->homeUrl?>">首页</a> <em></em> <span>蔚然中心</span><em></em><a href="<?php echo $this->createUrl('page/show',array('name'=>$bagecmsPage['title_alias']))?>"><?php echo $bagecmsPage['title']?></a> </div>
    </div>
	<div class="postWrap">
	<div class="h head">
        <h1 class="title"><?php echo $bagecmsPage->title?></h1>
      </div>
    <div class="clear cdata">
     <?php echo $bagecmsPage['content']?> 
    </div>
	</div>
  </div>
</div>
<?php $this->renderPartial('/_include/footer')?>
