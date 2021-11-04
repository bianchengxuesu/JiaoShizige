<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
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
<script type="text/javascript">
    //权限实现操作
    
        $(window).load(function () {
        	
            //8-系统管理
            if ($("#role").text() === "1") { //
            	alert("no")
                $("#myInfo").show();
            	$("#systemManagement").show();
            }else {
            	//alert("yes")
            	$("#myInfo").hide();
            	$("#systemManagement").hide();
            }
        });
</script>
<script type="text/javascript">

</script></head>

<body>
<noscript><iframe src=""></iframe></noscript>
<div style="position:absolute; pointer-events:none; top:50%; height:240px;border:0px solid white; margin:0 auto; margin-top:-50px; width:200px; left:50%; margin-left:-50px;"><img id="wait" src="../resources/admin/login/images/Run.gif" style="display: none;"><!--////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--></div>
<div class="navbar navbar-inverse" id="home">
 <div class="tophead"></div>
 <div class="container ">
  <div class="toplink"><strong>管理员</strong>，
  <script type="text/javascript"> 
   now = new Date(),hour = now.getHours() 
   if(hour < 6){document.write("凌晨好！")} 
   else if (hour < 9){document.write("早上好！")} 
   else if (hour < 12){document.write("上午好！")} 
   else if (hour < 14){document.write("中午好！")} 
   else if (hour < 17){document.write("下午好！")} 
   else if (hour < 19){document.write("傍晚好！")} 
   else if (hour < 22){document.write("晚上好！")} 
   else {document.write("夜深了，请注意休息！")} 
  </script> <a href="../system/index">首页</a> - <a href="https://aacsb.ustc.edu.cn/tjut/logout.asp">退出</a></div>
  <div>
   <div style="float:left;margin:25px 0px 25px 0px;"><img src="../resources/admin/login/images/aacsb_logo.png"></div>
   
  </div>
  <div style="clear:both;"></div>
 </div>
 <nav>
 <div class="navbg">
  <div class="menuhead"></div>
  <div class="container">
  
   <div class="menutg">
    <span class="navbar-dhn">导 航 <span class="glyphicon glyphicon-arrow-right"></span></span>
    <!-- Button for smallest screens -->
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
   </div>
  <div class="navbar-collapse collapse">
   <ul class="nav navbar-nav mainNav">
    <li><a href="https://aacsb.ustc.edu.cn/tjut/index.html#" class="dropdown-toggle" data-toggle="dropdown">我的信息<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a href="../my/myinformation/myinformation"><span class="glyphicon glyphicon-user font13"></span> 我的基本信息</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/RetrievalDevoted.asp?isme=ok"><span class="glyphicon glyphicon-king font13"></span> 我的智力贡献</a></li> 
      <li><a href="../jiaoxuegongxian/findAll"><span class="glyphicon glyphicon-king font13"></span> 我的教学贡献</a></li> 
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/StudentCourse.asp"><span class="glyphicon glyphicon-blackboard font13"></span> 我的课程查询</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Vitae.asp"><span class="glyphicon glyphicon-list font13"></span> 我的简历</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/MyDiary.asp"><span class="glyphicon glyphicon-edit font13"></span> 我的记录</a></li> 
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp?isme=ok"><span class="glyphicon glyphicon-comment font13"></span> 我的消息</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Forum-men-2.html"><span class="glyphicon glyphicon-hand-right font13"></span> 系统讨论区</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/MyLoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录信息</a></li>
     </ul>
	</li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/index.html#" class="dropdown-toggle" data-toggle="dropdown">系统管理<b class="caret"></b></a>
     <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/DateSetting.asp"><span class="glyphicon  glyphicon-cog font13"></span> 系统设置</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/UserRole.asp"><span class="glyphicon glyphicon-user font13"></span> 系统角色</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp"><span class="glyphicon glyphicon-list font13"></span> 消息管理</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/LoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录日志</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/aacsb_News.asp"><span class="glyphicon glyphicon-list-alt font13"></span> 新闻公告</a></li>
	  
     </ul>
    </li>
	
	<li><a href="../system/index#" class="dropdown-toggle" data-toggle="dropdown">标准数据<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a href="../base/teacher/teacher"><span class="glyphicon glyphicon-record font13"></span> 师资信息标准</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Student.asp"><span class="glyphicon glyphicon-record font13"></span> 学生信息标准</a></li> 
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Assistant.asp"><span class="glyphicon glyphicon-record font13"></span> 助教信息标准</a></li> 
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BasePeriodical.asp"><span class="glyphicon glyphicon-record font13"></span> 智力贡献标准</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseCourse.asp"><span class="glyphicon glyphicon-record font13"></span> 教学贡献标准</a></li>
      
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseStatAdmissions.asp"><span class="glyphicon glyphicon-record font13"></span> 招生就业信息</a></li> 
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseType.asp"><span class="glyphicon glyphicon-record font13"></span> 字段类型管理</a></li> 
	  
     </ul>
    </li>
    
	<li><a href="../system/index#" class="dropdown-toggle" data-toggle="dropdown">智力贡献<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  <li><a href="../zhiligongxian/qikanwenzhang/qikanwenzhang"><span class="glyphicon glyphicon-record font13"></span> 期刊文章</a></li>
	  <li><a href="../zhiligongxian/huiyilunwen/huiyilunwen"><span class="glyphicon glyphicon-record font13"></span> 会议论文</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=3"><span class="glyphicon glyphicon-record font13"></span> 会议演讲</a></li>
	  <li><a href="../zhiligongxian/zhuanzhujiaocai/zhuanzhujiaocai"><span class="glyphicon glyphicon-record font13"></span> 专著</a></li>
	  <li><a href="../zhiligongxian/zhuanzhujiaocai/zhuanzhujiaocai"><span class="glyphicon glyphicon-record font13"></span> 教材</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=6"><span class="glyphicon glyphicon-record font13"></span> 标准/政策</a></li>
	  <li><a href="../zhiligongxian/jiaoxuehuojiang/jiaoxuehuojiang"><span class="glyphicon glyphicon-record font13"></span> 教学获奖</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=8"><span class="glyphicon glyphicon-record font13"></span> 科研获奖</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=9"><span class="glyphicon glyphicon-record font13"></span> 案例</a></li>
	  <li><a href="../zhiligongxian/zhuanli/zhuanli"><span class="glyphicon glyphicon-record font13"></span> 专利</a></li>
	  <li><a href="../zhiligongxian/xiangmu/xiangmu"><span class="glyphicon glyphicon-record font13"></span> 项目</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=12"><span class="glyphicon glyphicon-record font13"></span> 研究报告</a></li>
	  <li><a href="../zhiligongxian/shehuijianzhi/shehuijianzhi"><span class="glyphicon glyphicon-record font13"></span> 社会任职</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=14"><span class="glyphicon glyphicon-record font13"></span> 期刊任职</a></li>
     </ul>
    </li>
    
	<li><a href="../jiaoxuegongxian/findAll">教学贡献</a></li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Qualified.asp">资格认定</a></li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/index.html#" class="dropdown-toggle" data-toggle="dropdown">表格输出<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-1</a></li>
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-1</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table5-1-2-3-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 5-1/5-2/5-3</a></li> 
	  
     </ul>
    </li>
    
    <li><a href="https://aacsb.ustc.edu.cn/tjut/index.html#" class="dropdown-toggle" data-toggle="dropdown">信息检索<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Retrieval.asp"><span class="glyphicon glyphicon-record font13"></span> 教师分布情况</a></li> 
	  
      <li><a href="../jiaoxuegongxian/findAll"><span class="glyphicon glyphicon-record font13"></span> 教学贡献人员</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/RetrievalDevoted.asp"><span class="glyphicon glyphicon-record font13"></span> 智力贡献人员</a></li> 
      <li><a href="https://aacsb.ustc.edu.cn/tjut/RetrievalGather.asp?m=1"><span class="glyphicon glyphicon-record font13"></span> 智力贡献汇总</a></li> 
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/DevotesCertified.asp?m=1"><span class="glyphicon glyphicon-record font13"></span> 认证数据汇总</a></li> 
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/PrintTeacher.asp?lg=cn"><span class="glyphicon glyphicon-record font13"></span> 教师简历（中文）</a></li>
      <li><a href="https://aacsb.ustc.edu.cn/tjut/PrintTeacher.asp?lg=en"><span class="glyphicon glyphicon-record font13"></span> 教师简历（英文）</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/PrintCourse.asp"><span class="glyphicon glyphicon-record font13"></span> 授课教师名单</a></li>
	  
     </ul>
    </li>
    
    <li><a href="https://aacsb.ustc.edu.cn/tjut/Documents.asp">文档</a></li>
    
   </ul>
  </div>
  
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
    <div class="ht">登录状态</div>
    <div class="hc"></div>
    
    <link rel="stylesheet" href="../resources/admin/login/css/tree_menu.css">
	
     <div class="subNavBox">
      <div class="subNavHead"><font style="color:#ad8307;">管理员</font> 欢迎您</div>
	  <div class="row">
	   <div class="subNavInfo">
	   <div class="col-xs-5 fl">
	    
          <img src="../resources/admin/login/images/2016041979392689.gif" lign="center">
		
       </div>
       <div class="col-xs-7 fr">
	    <div class="li">
		 <span style="padding-right:3px;"><strong>工号：</strong></span><span style="color:#ff0000">000000</span>
		 </div>
        
		<div class="li" style="padding-right:10px;">
		<strong>部门：</strong>工商管理系
        </div>
		
        <div class="li"><strong>职称：</strong>教授</div>
		
		<!--
		<div class="li">
         
        </div>
		-->
		
        <div class="li"><strong>专业：</strong>运筹</div>
		
		<div class="li">
	     <strong>角色：</strong>系统管理员
        </div>
	   </div>
	   </div>
	  </div>
	  <div class="subNavMid"><span style="padding-right:3px;">登录系统</span><span><font color="red">229</font>次</span><span style="padding-right:3px;">，最后登录</span> <span><font color="red">2021/1/14</font></span></div>
	  
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/TeacherEdit.asp?run=ok"><span class="glyphicon glyphicon-user pr-5"></span>我的基本信息</a></div>
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/Administrator&#39;sGUIDe.pdf"><span class="glyphicon glyphicon glyphicon-book pr-5"></span>系统操作指南</a></div>
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/forum-men-2.html"><span class="glyphicon glyphicon glyphicon-thumbs-up pr-5"></span>系统讨论区</a></div>
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/MyDiary.asp"><span class="glyphicon glyphicon glyphicon-edit pr-5"></span>我的记录</a></div>
	  
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/logout.asp"><span class="glyphicon glyphicon-log-out pr-5"></span>退出登录</a></div>
	  
	  <div style="height:8px;"></div>
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
    <div class="bottom"><span><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/News.html">更多&gt;&gt;&gt;</a></span></div>
	
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
    <div class="bottom"><span><a href="index">更多&gt;&gt;&gt;</a></span></div>
	
   </div>
  </div>

  <div style="clear:both;"></div>
 </div>
</div>

<div class="container">
 <div class="aacsb_home">
 
 <div class="intro">
  <div class="head"></div>
  
  <div class="span">
   <p style="padding-bottom:2px;">系统概述：</p>
   <p style="padding-bottom:5px;">1. 本系统当前的功能是，以提供学院认证标准契合计划SAP（Standards Alignment Plan）所需相关数据为主要目标。如，认证标准规定的Table 2-1、Table 15-1和Table 15-2 的输出，以及其他类似　<font style="font-family:&#39;新宋体&#39;">“</font>学院应当展示每个学科、学位项目和授课模式的课程至少有60%是由P类老师教授<font style="font-family:&#39;新宋体&#39;">”</font> 的具体查询需求。</p>
   <p>2. 系统用户身份有5类</p>
   <p>1） 教师：维护并提交个人教学贡献和智力贡献所投入的工作量</p>
   <p>2） 院领导：数据查询</p>
   <p>3） 教学秘书：维护各层次教学课程的标准数据、标准认定，排课和教学跟踪、确认每个教师教学贡献（工作量）</p>
   <p>4） 科研秘书：维护智力贡献所指各元素的标准数据、标准认定，确认每个教师的智力贡献（工作量）</p>
   <p>5） 系统管理员：系统管理</p>
  </div>
  
 </div>
 
 <div style="clear:both;"></div>
 </div>
</div>

<br>
<input name="sername" type="hidden" value="天津理工大学AACSB认证系统">
<section>
 <div class="aacsb_footer">
	<p class="info">系统仅支持Chrome、Firefox、Edge等浏览器<br>Copyright © 2013-2021，&nbsp;<a href="https://aacsb.ustc.edu.cn/tjut/Copyright.asp">信息系统版权说明和技术支持</a>&nbsp; v3.0.200619, 页面执行时间：31.25毫秒
 </p></div>
</section>

<iframe name="Detail" id="Detail" frameborder="0" hspace="0" vspace="0" src="../resources/admin/login/html/Record.html" style="display:none"></iframe>
<script type="text/javascript">document.getElementById('wait').style.display='none';</script>


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
</script>
<script src="../resources/admin/login/js/jquery.min.js"></script> 
<script type="text/javascript" src="../resources/admin/login/js/index.js"></script> 
<script type="text/javascript" src="../resources/admin/login/js/camera.min.js"></script> 
<script type="text/javascript" src="../resources/admin/login/js/jquery.easing.1.3.js"></script> </body></html>