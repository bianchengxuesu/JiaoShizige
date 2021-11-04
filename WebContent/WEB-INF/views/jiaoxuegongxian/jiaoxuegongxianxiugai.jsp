<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<!-- saved from url=(0041)https://aacsb.ustc.edu.cn/tjut/index.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>添加教学贡献信息</title>
<link rel="stylesheet" href="../resources/admin/login/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/admin/login/css/bootstrap-select.css">
<link rel="stylesheet" href="../resources/admin/login/css/font-awesome.min.css"> 
<link rel="stylesheet" href="../resources/admin/login/css/bootstrap-theme.css" media="screen"> 
<link rel="stylesheet" href="../resources/admin/login/css/jquery-ui.css">
<link rel="stylesheet" href="../resources/admin/login/css/aacsb.css" type="text/css">
<link rel="shortcut icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<link rel="icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<script src="../resources/admin/login/js/jquery-2.1.4.min.js"></script>
<script src="../resources/admin/login/js/bootstrap-select.js"></script>
<script src="../resources/admin/login/js/defaults-zh_CN.js"></script>
<script src="../resources/admin/login/js/jquery-ui.js"></script>
</head>
<body>
<!--<script language="javascript">var targetProtocol = 'https:';if (window.location.protocol != targetProtocol){window.location.href = targetProtocol +  window.location.href.substring(window.location.protocol.length);}</script><div style="position:absolute; pointer-events:none; top:50%; height:240px;border:0px solid white; margin:0 auto; margin-top:-50px; width:200px; left:50%; margin-left:-50px;"><img id="wait" src="../resources/admin/login/css/Run.gif" style="display: none;"><!--////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--></div>
<div class="navbar navbar-inverse" id="home">
 <div class="tophead"></div>
 <div class="container ">
  <div class="toplink"><strong>管理员</strong>，
  <script language="javaScript"> 
   now = new Date(),hour = now.getHours() 
   if(hour < 6){document.write("凌晨好！")} 
   else if (hour < 9){document.write("早上好！")} 
   else if (hour < 12){document.write("上午好！")} 
   else if (hour < 14){document.write("中午好！")} 
   else if (hour < 17){document.write("下午好！")} 
   else if (hour < 19){document.write("傍晚好！")} 
   else if (hour < 22){document.write("晚上好！")} 
   else {document.write("夜深了，请注意休息！")} 
  </script>中午好！ <a href="../system/index">首页</a> - <a href="https://aacsb.ustc.edu.cn/tjut/logout.asp">退出</a></div>
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
    <li class=""><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourseAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">我的信息<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherEdit.asp?run=ok"><span class="glyphicon glyphicon-user font13"></span> 我的基本信息</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/RetrievalDevoted.asp?isme=ok"><span class="glyphicon glyphicon-king font13"></span> 我的智力贡献</a></li> 
      <li><a href="https://aacsb.ustc.edu.cn/tjut/RetrievalTeaching.asp?isme=ok"><span class="glyphicon glyphicon-king font13"></span> 我的教学贡献</a></li> 
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/StudentCourse.asp"><span class="glyphicon glyphicon-blackboard font13"></span> 我的课程查询</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Vitae.asp"><span class="glyphicon glyphicon-list font13"></span> 我的简历</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/MyDiary.asp"><span class="glyphicon glyphicon-edit font13"></span> 我的记录</a></li> 
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp?isme=ok"><span class="glyphicon glyphicon-comment font13"></span> 我的消息</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Forum-men-2.html"><span class="glyphicon glyphicon-hand-right font13"></span> 系统讨论区</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/MyLoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录信息</a></li>
     </ul>
	</li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourseAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">系统管理<b class="caret"></b></a>
     <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/DateSetting.asp"><span class="glyphicon  glyphicon-cog font13"></span> 系统设置</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/UserRole.asp"><span class="glyphicon glyphicon-user font13"></span> 系统角色</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp"><span class="glyphicon glyphicon-list font13"></span> 消息管理</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/LoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录日志</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/aacsb_News.asp"><span class="glyphicon glyphicon-list-alt font13"></span> 新闻公告</a></li>
	  
     </ul>
    </li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourseAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">标准数据<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp"><span class="glyphicon glyphicon-record font13"></span> 师资信息标准</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Student.asp"><span class="glyphicon glyphicon-record font13"></span> 学生信息标准</a></li> 
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Assistant.asp"><span class="glyphicon glyphicon-record font13"></span> 助教信息标准</a></li> 
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BasePeriodical.asp"><span class="glyphicon glyphicon-record font13"></span> 智力贡献标准</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseCourse.asp"><span class="glyphicon glyphicon-record font13"></span> 教学贡献标准</a></li>
      
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseStatAdmissions.asp"><span class="glyphicon glyphicon-record font13"></span> 招生就业信息</a></li> 
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseType.asp"><span class="glyphicon glyphicon-record font13"></span> 字段类型管理</a></li> 
	  
     </ul>
    </li>
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourseAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">智力贡献<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1"><span class="glyphicon glyphicon-record font13"></span> 期刊文章</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=2"><span class="glyphicon glyphicon-record font13"></span> 会议论文</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=3"><span class="glyphicon glyphicon-record font13"></span> 会议演讲</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=4"><span class="glyphicon glyphicon-record font13"></span> 专著</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=5"><span class="glyphicon glyphicon-record font13"></span> 教材</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=6"><span class="glyphicon glyphicon-record font13"></span> 标准/政策</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=7"><span class="glyphicon glyphicon-record font13"></span> 教学获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=8"><span class="glyphicon glyphicon-record font13"></span> 科研获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=9"><span class="glyphicon glyphicon-record font13"></span> 案例</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=10"><span class="glyphicon glyphicon-record font13"></span> 专利</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=11"><span class="glyphicon glyphicon-record font13"></span> 项目</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=12"><span class="glyphicon glyphicon-record font13"></span> 研究报告</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=13"><span class="glyphicon glyphicon-record font13"></span> 社会任职</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=14"><span class="glyphicon glyphicon-record font13"></span> 期刊任职</a></li>
     </ul>
    </li>
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp">教学贡献</a></li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Qualified.asp">资格认定</a></li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourseAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">表格输出<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-1</a></li>
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-1</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table5-1-2-3-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 5-1/5-2/5-3</a></li> 
	  
     </ul>
    </li>
    
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourseAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">信息检索<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Retrieval.asp"><span class="glyphicon glyphicon-record font13"></span> 教师分布情况</a></li> 
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/RetrievalTeaching.asp"><span class="glyphicon glyphicon-record font13"></span> 教学贡献人员</a></li>
	  
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
<div style="clear:both;" class="mt-20"></div>
<div class="navbar-menuwar stuckMenu" style="position: relative; top: 0px;">
 <div class="container">
 <div class="navhead">
  <span class="pull-left">
   <div class="section-title">添加教学贡献信息</div>
  </span>
  <span class="pull-right">
   <a class="btn btn-default mt-3 mb-3" href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp?run=ok&amp;h=0"><span class="glyphicon glyphicon-arrow-left"></span> 返回</a>
   </span>
   <div style="clear:both;"></div>
  </div>
  </div>
</div>
<div class="container" style="margin-top: 0px;">
 <div class="row">
  <!-- <form method="post" name="LeadBBSFm" id="LeadBBSFm" onsubmit="return false;"> -->
  <div class="col-md-9 mt-30">
   
   <div class="control-group">
    <div class="row">
     <div class="col-sm-4">
     <label for="name">选择课程<span style="color:#339900;font-size:80%" id="sayCO"><font style="color:#888;">(必选项)</font></span></label>
      <div class="">
	  <script>
       $(function() {
       $("#course").autocomplete({
        source: "Autocomplete.asp?mtp=course",
        select: function(event, ui){
        $("#course").val( ui.item.label );
        $("#coid").val( ui.item.value );
        $("#Conums").val( ui.item.Conums );
		$("#Cochs").val( ui.item.Cochs );
		$("#Cocredits").val( ui.item.Cocredits );
        $("#sayCO").html( "(选择正确，已通过验证)");
        event.preventDefault();     
        }
       });
       });
      </script>
      <input id="course" name="course" class="form-control ui-autocomplete-input" placeholder="请输入关键字匹配并选择" type="text" required="" autocomplete="off" value="${course}">
      <input id="coid" type="hidden" name="CoID" value="${id}">
      
	  </div>
      <p class="help-block help-info text-right"></p>
	</div>
    <div class="col-sm-4">
     <label for="name">选择教师<span style="color:#339900;font-size:80%" id="sayTE"><font style="color:#888;">(必选项)</font></span></label>
     <div class="input-group">
	  
	  
	  <script>
       $(function() {
       $("#teacher").autocomplete({
        source: "Autocomplete.asp?mtp=teacher",
        select: function(event, ui){
        $("#teacher").val( ui.item.Tename );
        $("#teid").val( ui.item.value );
        $("#sayTE").html( "(选择正确，已通过验证)");
        event.preventDefault();     
        }
       });
       });
      </script>
      <input id="teacher" name="teacher" class="form-control ui-autocomplete-input" placeholder="请输入关键字匹配并选择" type="text" value="${teacher}" required="" autocomplete="off">
      <input id="teid" type="hidden" name="UserID" value="">
	  <span class="input-group-addon" style="padding-left:2px;padding-right:2px;border:0;" id="sizing-addon3"></span>
	  <select class="form-control" name="Zhujiang" style="">
		 <option value="1">主讲</option>
		 <option value="2">助讲</option>
       </select>
      
	 </div>
	 <p class="help-block help-info text-right"></p>

	</div>
	<div class="col-sm-4">
      <label for="name">选择教秘<span style="color:#339900;font-size:80%" id="sayJM"><font style="color:#888;"></font></span></label>
      <div class="">
	  <script>
       $(function() {
       $("#jiaomi").autocomplete({
        source: "Autocomplete.asp?mtp=teacher",
        select: function(event, ui){
        $("#jiaomi").val( ui.item.Tename );
        $("#jmid").val( ui.item.value );
        $("#sayJM").html( "(选择正确，已通过验证)");
        event.preventDefault();     
        }
       });
       });
      </script>
      <input id="jiaomi" name="jiaomi" value="${jiaomi}" class="form-control ui-autocomplete-input" placeholder="请输入关键字匹配并选择" type="text" required="" autocomplete="off">
      
      <input id="jmid" type="hidden" name="Jiaomi" value="">
	  </div>
	  <p class="help-block help-info text-right"></p>
	 </div>
	</div>
   </div>

   <div class="control-group">
    <div class="row">
	 <div class="col-sm-4">
      <label for="name">课程号</label>
      <div class="">
		<input type="text" id="conums" name="conums" readonly="" class="form-control" value="${conums}">
		<input type="hidden" name="Conum" value="">
	  </div>
	  <p class="help-block help-info text-right"></p>
	 </div>
     <div class="col-sm-4">
      <label for="name">学 时</label>
      <div class="">
		<input type="text" id="cochs" name="cochs" readonly="" class="form-control" value="${cochs}">
	  </div>
      <p class="help-block help-info text-right"></p>
	 </div>
	 <div class="col-sm-4">
      <label for="name">学 分</label>
      <div class="">
		<input type="text" id="cocredits" name="cocredits" readonly="" class="form-control" value="${cocredits }">
	  </div>
      <p class="help-block help-info text-right"></p>
	 </div>
	</div>
   </div>
   <div class="control-group">
    <div class="row">
     <div class="col-sm-4">
      <label for="name">授课对象<span style="font-size:80%"><font style="color:#888;">(必选项)</font></span></label>
      <div class="dropdown bootstrap-select form-control bs3">
	   <div class="dropdown bootstrap-select form-control bs3 "><select id="coobjects" name="coobjects" value="22" class="selectpicker form-control" data-live-search="true" required="" tabindex="-98">
	    <option value="">请选择授课对象</option>
        
        <option value="工商本科">工商本科</option>
	    
        <option value="工商科硕">工商科硕</option>
	    
        <option value="工商博">工商博</option>
	    
        <option value="管科本科">管科本科</option>
	    
        <option value="管科科硕">管科科硕</option>
	    
        <option value="管科博">管科博</option>
	    
        <option value="金融本科">金融本科</option>
	    
        <option value="金融学科硕">金融学科硕</option>
	    
        <option value="金融工程科硕">金融工程科硕</option>
	    
        <option value="金融工程博">金融工程博</option>
	    
        <option value="统计本科">统计本科</option>
	    
        <option value="统计科硕">统计科硕</option>
	    
        <option value="统计专硕">统计专硕</option>
	    
        <option value="统计博">统计博</option>
	    
        <option value="本科双学位">本科双学位</option>
	    
        <option value="22">全校公选课</option>
	    
        <option value="23">其他</option>
	    
        <option value="2">MPA</option>
	    
        <option value="3">MLE</option>
	    
        <option value="4">MPM</option>
	    
        <option value="5">MF</option>
	    
        <option value="1">MBA</option>
	    
        <option value="6">EMBA</option>
	                    
       </select>
       <div class="dropdown-menu open"><div class="bs-searchbox"><input type="search" class="form-control" autocomplete="off" role="combobox" aria-label="Search" aria-controls="bs-select-1" aria-autocomplete="list"></div><div class="inner open" role="listbox" id="bs-select-1" tabindex="-1"><ul class="dropdown-menu inner " role="presentation"></ul></div></div></div>
	  </div>
      <p class="help-block help-info text-right"></p>
	 </div>
	 <div class="col-sm-4">
      <label for="name">旁听对象1<span style="font-size:80%"><font style="color:#888;"></font></span></label>
      <div class="dropdown bootstrap-select form-control bs3">
	   <div class="dropdown bootstrap-select form-control bs3"><select id="coobjects2" name="coobjects2" class="selectpicker form-control" data-live-search="true" tabindex="-98">
	    <option value="">请选择旁听对象</option>
        
        <option value="7">工商本科</option>
	    
        <option value="8">工商科硕</option>
	    
        <option value="9">工商博</option>
	    
        <option value="10">管科本科</option>
	    
        <option value="11">管科科硕</option>
	    
        <option value="12">管科博</option>
	    
        <option value="13">金融本科</option>
	    
        <option value="14">金融学科硕</option>
	    
        <option value="15">金融工程科硕</option>
	    
        <option value="16">金融工程博</option>
	    
        <option value="17">统计本科</option>
	    
        <option value="18">统计科硕</option>
	    
        <option value="19">统计专硕</option>
	    
        <option value="20">统计博</option>
	    
        <option value="21">本科双学位</option>
	    
        <option value="22">全校公选课</option>
	    
        <option value="23">其他</option>
	    
        <option value="2">MPA</option>
	    
        <option value="3">MLE</option>
	    
        <option value="4">MPM</option>
	    
        <option value="5">MF</option>
	    
        <option value="1">MBA</option>
	    
        <option value="6">EMBA</option>
	                    
       </select>
       <div class="dropdown-menu open"><div class="bs-searchbox"><input type="search" class="form-control" autocomplete="off" role="combobox" aria-label="Search" aria-controls="bs-select-2" aria-autocomplete="list"></div><div class="inner open" role="listbox" id="bs-select-2" tabindex="-1"><ul class="dropdown-menu inner " role="presentation"></ul></div></div></div>
	  </div>
      <p class="help-block help-info text-right"></p>
	 </div>
	 <div class="col-sm-4">
      <label for="name">旁听对象2<span style="font-size:80%"><font style="color:#888;"></font></span></label>
      <div class="dropdown bootstrap-select form-control bs3">
	   <div class="dropdown bootstrap-select form-control bs3"><select id="coobjects3" name="coobjects3" class="selectpicker form-control" data-live-search="true" tabindex="-98">
	    <option value="">请选择旁听对象</option>
        
        <option value="7">工商本科</option>
	    
        <option value="8">工商科硕</option>
	    
        <option value="9">工商博</option>
	    
        <option value="10">管科本科</option>
	    
        <option value="11">管科科硕</option>
	    
        <option value="12">管科博</option>
	    
        <option value="13">金融本科</option>
	    
        <option value="14">金融学科硕</option>
	    
        <option value="15">金融工程科硕</option>
	    
        <option value="16">金融工程博</option>
	    
        <option value="17">统计本科</option>
	    
        <option value="18">统计科硕</option>
	    
        <option value="19">统计专硕</option>
	    
        <option value="20">统计博</option>
	    
        <option value="21">本科双学位</option>
	    
        <option value="22">全校公选课</option>
	    
        <option value="23">其他</option>
	    
        <option value="2">MPA</option>
	    
        <option value="3">MLE</option>
	    
        <option value="4">MPM</option>
	    
        <option value="5">MF</option>
	    
        <option value="1">MBA</option>
	    
        <option value="6">EMBA</option>
	                    
       </select>
       <div class="dropdown-menu open"><div class="bs-searchbox"><input type="search" class="form-control" autocomplete="off" role="combobox" aria-label="Search" aria-controls="bs-select-3" aria-autocomplete="list"></div><div class="inner open" role="listbox" id="bs-select-3" tabindex="-1"><ul class="dropdown-menu inner " role="presentation"></ul></div></div></div>
	  </div>
      <p class="help-block help-info text-right"></p>
	 </div>
	</div>
   </div>
   <div class="control-group">
    <div class="row">
     <div class="col-sm-6">
      <label for="name">实际课时<span style="font-size:80%"><font style="color:#888;"></font></span></label>
      <div class="">
		<input type="text" name="coches" class="form-control" placeholder="请输入实际课时" value="${coches}" required="">
	  </div>
      <p class="help-block help-info text-right"></p>
	  </div>
	 <div class="col-sm-6">
      <label for="name">实验课时<span style="font-size:80%"><font style="color:#888;"></font></span></label>
      <div class="">
		<input type="text" name="ecochs" class="form-control" placeholder="请输入实验课时" value="${ecochs}">
	  </div>
      <p class="help-block help-info text-right"></p>
	 </div>
	</div>
   </div>
   <div class="control-group">
    <div class="row">
     <div class="col-sm-6">
      <label for="name">开课学年<span style="font-size:80%"><font style="color:#888;">(必填项，格式：2011-2012，学年格式需正规)</font></span></label>
      <div class="">
		<input type="text" name="syear" class="form-control" placeholder="请输入开课学年" value="${syear}" required="">
	  </div>
      <p class="help-block help-info text-right"></p>
	  </div>
	 <div class="col-sm-6">
      <label for="name">开课季度<span style="font-size:80%"><font style="color:#888;">(必选项)</font></span></label>
      <div class="dropdown bootstrap-select form-control bs3">
	   
       <div class="dropdown bootstrap-select form-control bs3"><select id="quarter" name="quarter" class="selectpicker form-control" data-live-search="true" required="" tabindex="-98">
       
	   <option value="春">春</option>
       
	   <option value="夏">夏</option>
       
	   <option value="秋">秋</option>
       
       </select>
       <div class="dropdown-menu open">
       <div class="bs-searchbox"><input type="search" class="form-control" autocomplete="off" role="combobox" aria-label="Search" aria-controls="bs-select-4" aria-autocomplete="list"></div>
       <div class="inner open" role="listbox" id="bs-select-4" tabindex="-1"><ul class="dropdown-menu inner " role="presentation"></ul></div></div></div>
	  </div>
      <p class="help-block help-info text-right"></p>
	 </div>
	</div>
   </div>
   <div class="control-group">
    <div class="row">
     <div class="col-sm-6">
      <label for="name">上课城市<span style="font-size:80%"><font style="color:#888;">(必选项)</font></span></label>
      <div class="dropdown bootstrap-select form-control bs3">
	   
       <div class="dropdown bootstrap-select form-control bs3"><select id="city" name="city" class="selectpicker form-control" data-live-search="true" required="" tabindex="-98">
       
	   <option value="合肥"> 合肥 </option>
       
	   <option value="北京"> 北京 </option>
       
	   <option value="上海"> 上海 </option>
       
	   <option value="苏州"> 苏州 </option>
       
	   <option value="深圳"> 深圳 </option>
       
	   <option value="其他"> 其他 </option>
       
       </select>
       <div class="dropdown-menu open"><div class="bs-searchbox"><input type="search" class="form-control" autocomplete="off" role="combobox" aria-label="Search" aria-controls="bs-select-5" aria-autocomplete="list"></div><div class="inner open" role="listbox" id="bs-select-5" tabindex="-1"><ul class="dropdown-menu inner " role="presentation"></ul></div></div></div>
	  </div>
      <p class="help-block help-info text-right"></p>
	 </div>
	 <div class="col-sm-6">
      <label for="name">班级<span style="font-size:80%"><font style="color:#888;">(必选项，可多选)</font></span></label>
      <div class="dropdown bootstrap-select show-tick form-control bs3">
	   <div class="dropdown bootstrap-select show-tick form-control bs3"><select name="classid" class="selectpicker form-control" multiple="" data-live-search="true" required="" tabindex="-98">
       
       <option value="金融系001班">金融系001班</option>
	                   
       </select>
       <div class="dropdown-menu open"><div class="bs-searchbox"><input type="search" class="form-control" autocomplete="off" role="combobox" aria-label="Search" aria-controls="bs-select-6" aria-autocomplete="list"></div><div class="inner open" role="listbox" id="bs-select-6" tabindex="-1" aria-multiselectable="true"><ul class="dropdown-menu inner " role="presentation"></ul></div></div></div>
	  </div>
      <p class="help-block help-info text-right"></p>
	 </div>
	</div>
   </div>

   <div class="control-group">
    <label for="name">课程备注<span style="font-size:80%"><font style="color:#888;"></font></span></label>
     <div class="">
	  <textarea class="form-control" id="beizhu" name="beizhu" style="width:100%;height:60px;" value="${beizhu}"></textarea>
	 </div>
     <p class="help-block help-info"></p>
   </div>
   
   <div class="control-group mt-10">
	<label for="name">审核标记</label>
    <div class="">
		<select id="checked" class="form-control" name="checked">
         <option value="1" selected="">已审核</option>
		 <option value="0">未审核</option>
       </select>
	</div>
    <p class="help-block help-info pull-right"></p>
   </div>
   
   <div style="clear:both;"></div>
   <div style="text-align:center;">
   <input name="aurl" type="hidden" value="http://aacsb.ustc.edu.cn/tjut/DevoteCourseAdd.asp?h=0">
   <input name="Cotype" type="hidden" value="">
   <input name="action" type="Submit" id="submit" value="  确 认 添 加  " class="edit-button btn-primary btn-lg mt-20">
   </div>
  </div>
  <!-- </form> -->
  <div class="col-md-3">
   <div class="col-title">
    <h3 class="section-title">填写提示
	</h3>
   </div>
   <ul style="margin:0;padding:0;padding-left:20px;line-height:1.5">
    
    <li style="list-style:disc;padding-top:5px">选择课程和教师可输入查询关键字（教师支持拼音和工资号），自动弹出匹配的列表，<strong><font color="red">选中匹配的结果即可</font></strong>；</li>
	
	<li style="list-style:disc;padding-top:10px">添加教学工作量时如发现没有课程信息，请至标准数据-&gt;课程标准管理中添加维护；</li>
    <li style="list-style:disc;padding-top:5px">每条课程信息只计算该条信息实际课时工作量一次，如果一门课有不同班级请按班级分别填写(<strong>合班上的除外</strong>)，以实际工作量为准；</li>
	<li style="list-style:disc;padding-top:10px">添加AOL附件请至教学贡献列表页点击条目中的管理按钮展开后，点击“AOL附件”即可上传附件；</li>
	<li style="list-style:disc;padding-top:10px">教师个人添加的课程数据默认为未审核状态，由教学秘书或分管领导审核后生效；</li>
	<li style="list-style:disc;padding-top:10px">若需快速通过审核，请返回列表页面点击管理按钮展开课程条目后点击“申请快速审核”按钮即可通知到相关管理人员进行审核。</li>
   </ul>
  </div>
 </div>
</div>
<section>
 <div class="aacsb_footer">
	<p class="info">系统仅支持Chrome、Firefox、Edge等浏览器<br>Copyright © 2013-2021，&nbsp;<a href="https://aacsb.ustc.edu.cn/tjut/Copyright.asp">信息系统版权说明和技术支持</a>&nbsp; v3.0.200619, 页面执行时间：62.50毫秒
 </p></div>
</section>

<iframe name="Detail" id="Detail" frameborder="0" hspace="0" vspace="0" src="../resources/admin/login/html/Record.html" style="display:none"></iframe>
<script language="javascript">document.getElementById('wait').style.display='none';</script>
<script src="../resources/admin/login/js/stickUp.js"></script>
<script type="text/javascript">
 //initiating jQuery
 jQuery(function($) {
   $(document).ready( function() {
     //enabling stickUp on the '.navbar-wrapper' class
     $('.navbar-menuwar').stickUp();
   });
 });
$(function () {
    $("[data-toggle='tooltip']").tooltip();
});
/**
*  添加记录
*  {
	id:
		course:course
		teacher:teacher
		jiaomi:jiaomi
		counms:counms
		cochs:cochs
		cocredits:cocredits
		coobjects:coobject
		coobjects2:coobject2
		coobjects3:coobject3
		coches:coches
		ecochs:ecochs
		syear:syear
		quarter:quarter
		city:city
		classid:classid
		beizhu:beizhu
		checked:checked
		
	},
*/

/**
*  添加记录
*/
/*
function add(){
	var data = $("#LeadBBSFm").serialize();
	$.ajax({
		url:'add',
		dataType:'json',
		type:'post',
		data:data,
		success:function(data){
			if(data.type == 'success'){
				$.messager.alert('信息提示','添加成功！','info');
				$("#teacher").val('');
			}else{
				$.messager.alert('信息提示',data.msg,'warning');
			}
		}
	});
}
*/
document.querySelector(".edit-button").onclick = function(){

	var id =$("#coid").val();
	var course =$("#course").val();
	var teacher =$("#teacher").val();
	var jiaomi =$("#jiaomi").val();
	var conums =$("#conums").val();
	var cochs =$("#cochs").val();
	var cocredits =$("#cocredits").val();
	var coobjects =$("#coobjects").val();
	var coobjects2 =$("#coobjects2").val();
	var coobjects3 =$("#coobjects3").val();
	var coches =$("#coches").val();
	var ecochs =$("#ecochs").val();
	var syear =$("#syear").val();
	var quarter =$("#quarter").val();
	var city =$("#city").val();
	var classid =$("#classid").val();
	var beizhu =$("#beizhu").val();
	var checked =$("#checked").val();
	
	
	$.ajax({
		url:'edit',
		data:{
			id:id,
			course:course,
			teacher:teacher,
			jiaomi:jiaomi,
			conums:conums,
			cochs:cochs,
			cocredits:cocredits,
			coobjects:coobjects,
			coobjects2:coobjects2,
			coobjects3:coobjects3,
			coches:coches,
			ecochs:ecochs,
			syear:syear,
			quarter:quarter,
			city:city,
			classid:classid,
			beizhu:beizhu,
			checked:checked},
		type:'post',
		dataType:'json',
		success:function(data){
			if(data.type=='success'){
				window.location ='findAll';
				alert("sussess")
				//window.location ='index';
			}else{
				alert(data.msg);
			}
		}
	});

}
	</script>

	</body>

	</html>

</script>


<script src="../resources/admin/login/js/bootstrap.min.js"></script> 
<ul id="ui-id-1" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul><div role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></div><ul id="ui-id-2" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul><div role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></div><ul id="ui-id-3" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul><div role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></div></body></html>