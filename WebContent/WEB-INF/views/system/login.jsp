<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<!-- saved from url=(0041)https://aacsb.ustc.edu.cn/tjut/index.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>天津理工大学AACSB认证系统</title>
<link rel="stylesheet" href="../resources/admin/login/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/admin/login/css/font-awesome.min.css"> 
<link rel="stylesheet" href="../resources/admin/login/css/bootstrap-theme.css" media="screen"> 
<link rel="stylesheet" id="camera-css" href="../resources/admin/login/css/camera.css" type="text/css" media="all"> 
<link rel="stylesheet" href="../resources/admin/login/css/aacsb.css" type="text/css">
<link rel="shortcut icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<link rel="icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon"> 
<script src="../resources/admin/login/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="../resources/admin/login/js/jquery.qrcode.min.js"></script>
<script>
window.onload=function(){
document.onkeydown=function(){
var e=window.event||arguments[0];
if(e.keyCode==123){
return false;
}else if((e.ctrlKey)&&(e.shiftKey)&&(e.keyCode==73)){
return false;
}
};
document.oncontextmenu=function(){
return false;
}
}
var userAgent = navigator.userAgent;
var isOpera = userAgent.indexOf("Opera") > -1;
var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera;
    if (isIE) {
    var IE5 = IE55 = IE6 = IE7 = IE8 = false;
    var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
    reIE.test(userAgent);
    var fIEVersion = parseFloat(RegExp["$1"]);
    if (fIEVersion<9) {
        var d = document.createElement("div");
        d.className = "browsehappy";
        d.innerHTML = '<div style="width:100%;height:100px;font-size:20px;z-index:999999；line-height:100px;text-align:center;background-color:#E90D24;color:#fff;margin-bottom:40px;">检测到您的浏览器不兼容本系统，请使用<a href="https://www.google.cn/intl/zh-CN/chrome/">Chrome</a>、Firefox或Edge浏览器!</div>';
        var f = function() {
            var s = document.getElementsByTagName("body")[0];
            if ("undefined" == typeof(s)) {
                setTimeout(f, 10)
            } else {
                s.insertBefore(d, s.firstChild)
            }
        };
        f()
    }
}
$(function(){
    $('#myCarousel').carousel({interval:8000});
 })
</script>
<style>
/*
html { 
        -webkit-filter: grayscale(100%); 
        -moz-filter: grayscale(100%); 
        -ms-filter: grayscale(100%); 
        -o-filter: grayscale(100%); 
        filter:progid:DXImageTransform.Microsoft.BasicImage(grayscale=1);  
        _filter:none; 
    }  

	*/
</style>
<script language="javascript">

</script></head>

<body>
<noscript><iframe src=""></iframe></noscript>
<!--<script language="javascript">var targetProtocol = 'https:';if (window.location.protocol != targetProtocol){window.location.href = targetProtocol +  window.location.href.substring(window.location.protocol.length);}</script>-->
<div class="navbar navbar-inverse" id="home">
 <div class="tophead"></div>
 <div class="container ">
  <div class="toplink">——全球最权威商学院认证</div>
  <div>
   <div style="float:left;margin:25px 0px 25px 0px;"><img src="../resources/admin/login/images/aacsb_logo.png"></div>
   
  </div>
  <div style="clear:both;"></div>
 </div>
 <nav>
 <div class="navbg">
  <div class="menuhead"></div>
  <div class="container">
  
  </div>
 </div>
</nav>
</div>

<header id="head" class="secondary">
 <div class="container">
  <div class="row">
   <div class="col-sm-8">
    <h3></h3>
   </div>
  </div>
 </div>
</header>

<div style="clear:both;"></div>
<div class="container">
 <div class="line"></div>
 <div class="row aacsb_home">
  <div class="col-md-4">
   <div class="login">
    <div class="ht"><span class="co-hide-420">登录系统</span></div>
    <div class="hc"></div>
	<link rel="stylesheet" href="../resources/admin/login/css/tree_menu.css">
	
	<div class="subNavBox">
     <div class="subNavHead_login pt-10">
	  <ul id="myTab" class="nav nav-tabs" style="padding-left:10px;padding-right:10px;">
       <li class="active"><a href="https://aacsb.ustc.edu.cn/tjut/#account" data-toggle="tab" aria-expanded="true">账号登录</a></li>
       <!--
       <li class=""><a href="https://aacsb.ustc.edu.cn/tjut/#mobile" data-toggle="tab" aria-expanded="false">手机验证</a></li>
	     -->
      </ul>
	 </div>
	<div style="clear:both;"></div>
	<div class="mt-20 text-center font20">天津理工大学AACSB认证系统</div>
	<div class="subNavInfo" style="padding:10px;width:90%;margin:0 auto;height:400px;">
	<div id="myTabContent" class="tab-content">
	
<!-- 这里分为电脑版 手机 微信 -->	
	 <div class="tab-pane fade in active" id="account">
      <div class="control-group mt-10">
	   <div class="controls">
	    <div class="input-group input-group-lg">
	    <span class="input-group-addon" id="sizing-addon1" style="font-size:22px;"><span class="glyphicon glyphicon-user"></span></span>
	    <input type="text" name="username" id="username" class="form-control" placeholder="Email/手机/工号/学号/身份证号" required="">
	    </div>
	    <p class="help-block"></p>
	   </div>
	  </div> 	
	  <div class="control-group mt-10">
	   <div class="controls">
	    <div class="input-group input-group-lg">
	    <span class="input-group-addon" id="sizing-addon2" style="font-size:22px;"><span class="glyphicon glyphicon-lock"></span></span>
	    <input type="Password" name="password" id="password" class="form-control" placeholder="密码" required="">
	    </div>
	    <p class="help-block"></p>
	   </div>
	  </div>
	  <div class="control-group mt-10">
	   <div class="controls">
	    <div class="input-group input-group-lg">
	    <span class="input-group-addon" id="sizing-addon4" style="font-size:22px;"><span class="glyphicon glyphicon-repeat"></span></span>
	    <input style="width: 50%" type="text" name="cpacha" id="cpacha" class="form-control " placeholder="验证码" required="">
	    <img width= 50% id="cpacha-img" title="点击切换验证码" style="cursor: pointer" src="get_cpacha?vl=4&w=150&h=46&type=loginCpacha"  height="46px" onclick="changeCpacha()">
	    </div>
	    <div class="mt-5" style="text-align:right;"></div>
	    <p class="help-block"></p>
	   </div>
	  </div>
	  
	  <div class="control-group mt-30">
	   <div class="controls">
	    <div class="input-group input-group-lg" style="text-align:center;margin: 0 auto;">
	    
		 <input name="service" type="hidden" value="">
	     <input name="reurl" type="hidden" value="">
	     <input name="reurls" type="hidden" value="">
	     <input type="Submit" name="action" alt=" 登 录 " value=" 登  录 " class="login-button" style="min-width:200px;font-size:125%;"><br><br>
		 <a href="https://aacsb.ustc.edu.cn/tjut/nopassword.html"><font color="#195180">忘记密码了？</font></a>
		 
	    </div>
	    <p class="help-block" style="padding-bottom:5px;"></p>
	   </div>
	  </div>
	 </div>

	</div> 
	</div>
	</div>
	
    </div>
   </div>

  <div class="col-md-4">
   <div class="ccenter">
    
    <div class="ht">新闻公告</div>
    <div class="hc"></div>
    <div class="center">
     <ul>
      
      <li>&nbsp;当前没有记录</li>
      
     </ul>
    </div>
    <div class="bottom"><span><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/News.jsp">更多&gt;&gt;&gt;</a></span></div>
	
   </div>
  </div>

  <div class="col-md-4">
   <div class="cleft">
    <div class="ht">AACSB业界动态</div>
    <div class="hc"></div>
	
    <div class="center">
     <iframe id="frame_content" onload="this.height=430" src="news" allowtransparency="true" frameborder="0" scrolling="no" width="100%" height="470"></iframe>
     <script type="text/javascript"> 
      function reinitIframe(){var iframe = document.getElementById("frame_content");
       try{
       var bHeight = iframe.contentWindow.document.body.scrollHeight;
       var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
       var height = Math.max(bHeight, dHeight);
       iframe.height =  height;
       }catch (ex){}
       }
       window.setInterval("reinitIframe()", 200);
     </script>
    </div>
    <div class="bottom"><span><a href="login">更多&gt;&gt;&gt;</a></span></div>
	
   </div>
  </div>

  <div style="clear:both;"></div>
 </div>
</div>

<div class="container">
 <div class="aacsb_home">
 
 <div style="clear:both;"></div>
 </div>
</div>

<br>
<input name="sername" type="hidden" value="天津理工大学AACSB认证系统(演示)">
<section>
 <div class="aacsb_footer">
	<p class="info">系统仅支持Chrome、Firefox、Edge等浏览器<br>Copyright © 2013-2021，&nbsp;<a href="https://aacsb.ustc.edu.cn/tjut/Copyright.asp">信息系统版权说明和技术支持</a>&nbsp; v3.0.200619, 页面执行时间：15.63毫秒
 </p></div>
</section>



<script src="../resources/admin/login/js/bootstrap.min.js"></script>
<div class="modal fade" id="wxcode" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
  <div class="modal-content"></div>
 </div>
</div>
<div class="modal fade" id="wxcode_bd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
  <div class="modal-content"></div>
 </div>
</div>
<script>
function changeCpacha(){
	$('#cpacha-img').attr("src",'get_cpacha?vl=4&w=150&h=46&type=loginCpacha&t='+ new Date().getTime());
}
$(function() {  
  $("#wxcode").on("hidden.bs.modal", function() {
    $(this).removeData("bs.modal");
    $(this).find(".modal-content").children().remove();
  });
});
$(function() {  
  $("#wxcode_bd").on("hidden.bs.modal", function() {
    $(this).removeData("bs.modal");
    $(this).find(".modal-content").children().remove();
  });
});

$(function(){
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
       var target = $(this).attr('href');
	   var sername=document.all.sername.value;
       $(target).css("height","100%");
       if(target === "#weixin"){
          $(document).ready(function () {
               $("#weixin .iframeurl").attr('src','Login_wxqrcode.asp?service=');
			   $("#sendmsg").html(sername);
           });
       }
	   else if(target === "#mobile"){
           $(document).ready(function () {
               $("#weixin .iframeurl").attr('src','');
			   $("#sendmsg").html(sername);
           });
       }
	   else if(target === "#account"){
           $(document).ready(function () {
               $("#weixin .iframeurl").attr('src','');
			   $("#sendmsg").html(sername);
           });
       }
    });
});
document.querySelector(".login-button").onclick = function(){
	var username =$("#username").val();
	var password =$("#password").val();
	var cpacha =$("#cpacha").val();
	$.ajax({
		url:'login',
		data:{username:username,password:password,cpacha:cpacha},
		type:'post',
		dataType:'json',
		success:function(data){
			if(data.type=='success'){
				window.location ='index';
			}else{
				alert(data.msg);
				changeCpacha();
			}
		}
	});

}
</script>
<script type="text/javascript" src="../resources/admin/login/js/jquery.min.js"></script> 
<script type="text/javascript" src="../resources/admin/login/js/index.js"></script> 
<script type="text/javascript" src="../resources/admin/login/js/camera.min.js"></script> 
<script type="text/javascript" src="../resources/admin/login/js/jquery.easing.1.3.js"></script> </body></html>