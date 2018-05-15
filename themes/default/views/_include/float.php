<style>
.elevator {
  position: fixed;
  right: 15px;
  bottom: 10px;
  z-index: 1030;
}
.elevator a {
  display: block;
  position: relative;
  margin: 1px 0;
  outline: none;
  height: 52px;
  width: 52px;
  -webkit-transition: background-position 0.15s;
  -moz-transition: background-position 0.15s;
  transition: background-position 0.15s;
  background: url(/static/images/float/float.png?) no-repeat;
}
.elevator .elevator-app-box {
  position: absolute;
  width: 170px;
  height: 170px;
  bottom: -10px;
  right: 46px;
  -webkit-transition: opacity 0.25s, transform .3s;
  -moz-transition: opacity 0.25s, transform .3s;
  transition: opacity 0.25s, transform .3s;
  opacity: 0;
  filter: alpha(opacity=0);
  max-width: 0;
  -webkit-transform: scale(0.01);
  -ms-transform: scale(0.01);
  transform: scale(0.01);
  -webkit-transform-origin: 100% 95%;
  -ms-transform-origin: 100% 95%;
  transform-origin: 100% 95%;
  background: url(/static/images/float/float.png?) no-repeat 0 -800px;
}
.elevator .elevator-app {
  background-position: 0 -287px;
}
.elevator .elevator-app:hover {
  background-position: 0 -349px;
}
.elevator .elevator-app:hover .elevator-app-box {
  display: block;
  visibility: visible;
  opacity: 1;
  filter: alpha(opacity=100);
  max-width: none;
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}
.elevator .elevator-weixin-box {
  position: absolute;
  /* display: none; */
  width: 170px;
  height: 160px;
  bottom: -10px;
  right: 46px;
  -webkit-transition: opacity 0.25s, transform .3s;
  -moz-transition: opacity 0.25s, transform .3s;
  transition: opacity 0.25s, transform .3s;
  opacity: 0;
  filter: alpha(opacity=0);
  max-width: 0;
  -webkit-transform: scale(0.01);
  -ms-transform: scale(0.01);
  transform: scale(0.01);
  -webkit-transform-origin: 100% 95%;
  -ms-transform-origin: 100% 95%;
  transform-origin: 100% 95%;
  background: url(/static/images/float/float.png?) no-repeat 0 0;
}
.elevator .elevator-weixin {
  background-position: 0 -597px;
}
.elevator .elevator-weixin:hover {
  background-position: 0 -658px;
}
.elevator .elevator-weixin:hover .elevator-weixin-box {
  /* max-width: none; */
  display: block;
  visibility: visible;
  opacity: 1;
  filter: alpha(opacity=100);
  max-width: none;
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}
.elevator .elevator-msg {
  background-position: 0 -163px;
}
.elevator .elevator-msg:hover {
  background-position: 0 -225px;
}
.elevator .elevator-top {
  background-position: 0 -411px;
}
.elevator .elevator-top:hover {
  background-position: 0 -473px;
}
</style>
<div id="J_GotoTop" class="elevator">
      <a class="elevator-weixin" href="javascript:;">
        <div class="elevator-weixin-box"></div>
      </a>
      <a class="elevator-msg" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=XWxka21tbWRtbWwdLCxzPjIw" target="_blank" id="feedBack"></a>
      <a class="elevator-app">
        <div class="elevator-app-box"></div>
      </a>
      <a class="elevator-top" href="javascript:;" style="display: none;" id="backTop"></a>
</div>
<script>
   $(document).ready(function () {
        // Right Float
        $(window).scroll(function () {
            if ($(window).scrollTop() >= 100) {
                $(".elevator-top").fadeIn();
            } else {
                $(".elevator-top").fadeOut();
            }
        });
        $(".elevator-top").click(function (event) {
            $('html,body').animate({ scrollTop: 0 }, 100);
            return false;
        });
    });
</script>