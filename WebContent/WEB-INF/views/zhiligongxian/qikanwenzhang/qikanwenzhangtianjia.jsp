<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0054)https://aacsb.ustc.edu.cn/tjut/DevotesAdd.asp?m=1&hs=0 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>添加期刊文章信息</title>
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap.min.css">
<link rel="stylesheet" href="../../resources/admin/login/css/font-awesome.min.css"> 
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap-theme.css" media="screen"> 
<link rel="stylesheet" href="../../resources/admin/login/css/aacsb.css" type="text/css">
<link rel="stylesheet" href="../../resources/admin/login/css/jquery-ui.css">
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap-datetimepicker.min.css">
<link rel="shortcut icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<link rel="icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<script src="../../resources/admin/login/js/jquery-2.1.4.min.js"></script>
<script src="../../resources/admin/login/js/jquery-ui.js"></script> 
<script type="text/javascript" src="../../resources/admin/ueditor/ueditor.config.js"></script> 
<script type="text/javascript" src="../../resources/admin/ueditor/ueditor.all.js"></script> 

<link href="../../resources/admin/login/css/ueditor.css" type="text/css" rel="stylesheet"><script src="../../resources/admin/login/js/codemirror.js" type="text/javascript" defer="defer"></script><link rel="stylesheet" type="text/css" href="../../resources/admin/login/css/codemirror.css"><script src="../../resources/admin/login/js/ZeroClipboard.js" type="text/javascript" defer="defer"></script></head>
<body style="">

<!--<script language="javascript">var targetProtocol = 'https:';if (window.location.protocol != targetProtocol){window.location.href = targetProtocol +  window.location.href.substring(window.location.protocol.length);}</script><div style="position:absolute; pointer-events:none; top:50%; height:240px;border:0px solid white; margin:0 auto; margin-top:-50px; width:200px; left:50%; margin-left:-50px;"><img id="wait" src="../../resources/admin/login/images/Run.gif" style="display: none;"><!--////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--></div>
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
  </script> <a href="../../system/index">首页</a> - <a href="https://aacsb.ustc.edu.cn/tjut/logout.asp">退出</a></div>
  <div>
   <div style="float:left;margin:25px 0px 25px 0px;"><img src="../../resources/admin/login/images/aacsb_logo.png"></div>
   
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
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevotesAdd.asp?m=1&amp;hs=0#" class="dropdown-toggle" data-toggle="dropdown">我的信息<b class="caret"></b></a>
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
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevotesAdd.asp?m=1&amp;hs=0#" class="dropdown-toggle" data-toggle="dropdown">系统管理<b class="caret"></b></a>
     <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/DateSetting.asp"><span class="glyphicon  glyphicon-cog font13"></span> 系统设置</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/UserRole.asp"><span class="glyphicon glyphicon-user font13"></span> 系统角色</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp"><span class="glyphicon glyphicon-list font13"></span> 消息管理</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/LoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录日志</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/aacsb_News.asp"><span class="glyphicon glyphicon-list-alt font13"></span> 新闻公告</a></li>
	  
     </ul>
    </li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevotesAdd.asp?m=1&amp;hs=0#" class="dropdown-toggle" data-toggle="dropdown">标准数据<b class="caret"></b></a>
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
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevotesAdd.asp?m=1&amp;hs=0#" class="dropdown-toggle" data-toggle="dropdown">智力贡献<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1"><span class="glyphicon glyphicon-record font13"></span> 期刊文章</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=2"><span class="glyphicon glyphicon-record font13"></span> 会议论文</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=3"><span class="glyphicon glyphicon-record font13"></span> 会议演讲</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=4"><span class="glyphicon glyphicon-record font13"></span> 专著</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=5"><span class="glyphicon glyphicon-record font13"></span> 教材</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=6"><span class="glyphicon glyphicon-record font13"></span> 标准/政策</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=7"><span class="glyphicon glyphicon-record font13"></span> 教学获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=8"><span class="glyphicon glyphicon-record font13"></span> 科研获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=9"><span class="glyphicon glyphicon-record font13"></span> 案例</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=10"><span class="glyphicon glyphicon-record font13"></span> 专利</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=11"><span class="glyphicon glyphicon-record font13"></span> 项目</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=12"><span class="glyphicon glyphicon-record font13"></span> 研究报告</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=13"><span class="glyphicon glyphicon-record font13"></span> 社会任职</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=14"><span class="glyphicon glyphicon-record font13"></span> 期刊任职</a></li>
     </ul>
    </li>
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp">教学贡献</a></li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Qualified.asp">资格认定</a></li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevotesAdd.asp?m=1&amp;hs=0#" class="dropdown-toggle" data-toggle="dropdown">表格输出<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-1</a></li>
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-1</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table5-1-2-3-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 5-1/5-2/5-3</a></li> 
	  
     </ul>
    </li>
    
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevotesAdd.asp?m=1&amp;hs=0#" class="dropdown-toggle" data-toggle="dropdown">信息检索<b class="caret"></b></a>
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
   <div class="section-title">添加期刊文章信息</div>
  </span>
  <span class="pull-right">
   <a class="btn btn-default mt-3 mb-3" href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1&amp;h=0"><span class="glyphicon glyphicon-arrow-left"></span> 返回</a>
   </span>
   <div style="clear:both;"></div>
  </div>
  </div>
</div>
<div class="container" style="margin-top: 0px;">
 <div class="row" style="">
  <form action="add.do" method="post" name="LeadAACSB" id="LeadAACSB1"  style="" enctype="multipart/form-data">
  <div class="col-md-9 mt-20" style="">
   
   <!-- <div class="control-group mt-10">
    <label for="name">选择期刊</label>
     <div class="">
	  
      <input id="pername" name="pername" class="form-control ui-autocomplete-input" placeholder="输入期刊名称或编号关键字可智能匹配信息" type="text" required="" autocomplete="off">
	 </div>
	 <p class="help-block help-info pull-right"> <input type="text" style="width:0px;height:0px" name="DeID" value=""><input type="text" style="width:0px;height:0px" id="PtID" name="PtID" value=""> <span style="color:#339900;" id="sayjo"><font style="font-style:normal;font-size:13px;" color="red">*</font> <font color="#666">请选择期刊信息，若无请至标准库添加</font></span></p>
   </div> -->
   <div class="control-group mt-10">
    <label for="name">期刊刊号</label>
     <div class="">
		<input type="text" disabled="" id="Pernum" name="Pernum" class="form-control" value="">
	 </div>
	 <p class="help-block help-info pull-right"></p>
   </div>
   
   <div class="control-group mt-10">
    <label for="name">出版商</label>
     <div class="">
		<input type="text" id="Depress" name="Depress" disabled="" class="form-control" value="">
	 </div>
     <p class="help-block help-info pull-right"></p>
   </div>
   
   <div class="control-group mt-10">
    <label for="name">期刊文章名称（中文）</label>
     <div class="">
		<input type="text" name="dename" class="form-control" value="" required="">
	 </div>
	 <p class="help-block help-info pull-right"><font style="font-style:normal;font-size:13px;" color="red">*</font> 必填项,请按正式发表后的电子文档内名称格式填写</p>
   </div>
   
   <div class="control-group mt-10">
    <label for="name">期刊文章名称（英文）</label>
     <div class="">
		<input type="text" name="denames" class="form-control" value="" required="">
	 </div>
	 <p class="help-block help-info pull-right"><font style="font-style:normal;font-size:13px;" color="red">*</font> 必填项,请按正式发表后的电子文档内名称格式填写</p>
   </div>
   
   <div class="control-group mt-10">
    <label for="name">出版年份</label>
     <div class="">
		<input type="text" name="Dedate" onkeyup="value=value.replace(/[^\d]/g,&#39;&#39;)" placeholder="请输入年份，格式：2012" maxlength="4" class="form-control" value="" required="">
	 </div>
	 <p class="help-block help-info pull-right"> 格式：2012</p>
   </div>
   <div class="control-group mt-10">
    <label for="name">出版年月</label>
     <div class="">
		<input type="text" name="Postdate" onkeyup="value=value.replace(/[^\d]/g,&#39;&#39;)" placeholder="请输入年月，格式：201203" maxlength="6" class="form-control" value="">
	 </div>
	 <p class="help-block help-info pull-right"> 格式：201203</p>
   </div>
   
   <div class="control-group mt-10">
	<label for="name">领域类别</label>
    <div class="">
		<select class="form-control" name="Ptype" required="">
         <option value="1">基础研究</option>
         <option value="2">应用研究</option>
         <option value="3">教学研究</option>
         <option value="4">其他</option>
       </select>
	</div>
    <p class="help-block help-info pull-right"><font style="font-style:normal;font-size:13px;" color="red">*</font> 必选项</p>
   </div>
   
   <div class="control-group mt-10">
	<label for="name">在线发表</label>
    <div class="">
		<select class="form-control" name="Detype5" required="">
         <option value="1">是</option>
         <option selected="" value="0">否</option>
       </select>
	</div>
    <p class="help-block help-info pull-right"><font style="font-style:normal;font-size:13px;" color="red">*</font> 必选项，（如已有卷期号及页码请选否）；</p>
   </div>
   <div class="control-group mt-10">
	<label for="name">境外合作</label>
    <div class="">
		<select name="Detype4" class="form-control" required="">
		<option value="">请选择</option>
        <option value="1">是</option>
		<option selected="" value="0">否</option>
        </select>
	</div>
    <p class="help-block help-info pull-right"></p>
   </div>
   <div class="control-group mt-10">
	<label for="name">DOI</label>
    <div class="">
		<input type="text" name="Detext1" class="form-control" value="">
	</div>
    <p class="help-block help-info pull-right">格式：10.1016/j.techsoc.2020.101278</p>
   </div>
   <div class="control-group mt-10">
	<label for="name">ORCID</label>
    <div class="">
		<input type="text" name="Detext2" class="form-control" value="">
	</div>
    <p class="help-block help-info pull-right">格式：0000-0002-0000-2338</p>
   </div>
   <div class="control-group mt-10">
    <label for="name">第 X 卷</label>
     <div class="">
		<input type="text" name="Dechar1" class="form-control" value="">
	 </div>
	 <p class="help-block help-info pull-right"> 请填写阿拉伯数字</p>
   </div>
   <div class="control-group mt-10">
    <label for="name">第 X 期</label>
     <div class="">
		<input type="text" name="Dechar2" class="form-control" value="">
	 </div>
	 <p class="help-block help-info pull-right"> 请填写阿拉伯数字</p>
   </div>
   <div class="control-group mt-10">
    <label for="name">起始页码</label>
     <div class="">
		<input type="text" name="Dechar3" class="form-control" value="">
	 </div>
	 <p class="help-block help-info pull-right"> 请填写阿拉伯数字</p>
   </div>
   <div class="control-group mt-10">
    <label for="name">终止页码</label>
     <div class="">
		<input type="text" name="Dechar4" class="form-control" value="">
	 </div>
	 <p class="help-block help-info pull-right"> 请填写阿拉伯数字</p>
   </div>
   <div class="control-group mt-10">
    <label for="name">总第X期</label>
     <div class="">
		<input type="text" name="Dechar5" class="form-control" value="">
	 </div>
	 <p class="help-block help-info pull-right"> 请填写阿拉伯数字</p>
   </div>
   
   <div class="control-group mt-10">
    <label for="name">上传文章</label>
     <div class="input-group">		
	  <input type="file" class="form-control" name="file" value="">
      </label>
	 </div>
	 <div style="width:98%; margin:0 auto;margin-top:3px;"><div id="progress" style="background:green;width:0px;color:#fff;font-size:12px;border-radius:30px;"></div></div>
     <p class="help-block help-info pull-right"><span id="qFilemsg"><span id="progress1">必填项，附件材料仅限于pdf格式<span></span></span></span></p>
   </div>
   
   <div class="control-group mt-10">
	<label for="name">审核标记</label>
    <div class="">
		<select class="form-control" name="Checked">
         <option value="1" selected="">已审核</option>
		 <option value="0">未审核</option>
       </select>
	</div>
    <p class="help-block help-info pull-right"></p>
   </div>
   <script type="text/javascript">
   	var ue = UE.getEditor('container', {
    	toolbars: [
        	['fullscreen', 'source', 'undo', 'redo', 'bold']
    	],
    	autoHeightEnabled: true,
    	autoFloatEnabled: false
	 });
   </script>
   <div class="control-group mt-10" style="">
	<label for="name">期刊文章摘要</label>
	<script type="text/plain" id="ueditor" name=description></script>
	<script>UE.getEditor('ueditor');</script>
    <p class="help-block help-info pull-right"></p>
   </div>
   <div style="clear:both;"></div>
   <div style="text-align:center;">
   <div id="suberr"></div>
   <input name="action" type="submit" id="submits" value=" 下一步，进行作者维护 ↓ " class="btn btn-primary btn-lg mt-20">
   </div>
  </div>
  </form>
  <div class="col-md-3">
   <div class="col-title">
    <h3 class="section-title">填写提示
	</h3>
   </div>
   <ul style="margin:0;padding:0;padding-left:20px;line-height:1.5">
    <li style="list-style:disc;padding-top:5px">若遇到项目为空且无法填写，请联系科研秘书补全数据；</li>
	<li style="list-style:disc;padding-top:5px">编号、登记号等若无，可手动点击“生成”由系统自动生成；</li>
	<li style="list-style:disc;padding-top:5px"><b>请不要使用与数据库冲突的特殊字符或符号，以免系统误认为有攻击行为而无法添加，比如：'，可以使用&amp;&amp;&amp;代替，输出时系统会自动转换为'；</b></li>
	
   </ul>
  </div>
 </div>
</div>
<section>
 <div class="aacsb_footer">
	<p class="info">系统仅支持Chrome、Firefox、Edge等浏览器<br>Copyright © 2013-2021，&nbsp;<a href="https://aacsb.ustc.edu.cn/tjut/Copyright.asp">信息系统版权说明和技术支持</a>&nbsp; v3.0.200619, 页面执行时间：15.63毫秒
 </p></div>
</section>

<iframe name="Detail" id="Detail" frameborder="0" hspace="0" vspace="0" src="../../resources/admin/login/html/Record.html" style="display:none"></iframe>
<script language="javascript">document.getElementById('wait').style.display='none';</script>


<script src="../../resources/admin/login/js/bootstrap.min.js"></script> 
<script src="../../resources/admin/login/js/moment-with-locales.min.js"></script>
<script src="../../resources/admin/login/js/bootstrap-datetimepicker.min.js"></script>
<script src="../../resources/admin/login/js/stickUp.js"></script>
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
</script>
<script type="text/javascript" charset="utf-8" src="../../resources/admin/login/js/ueditor.config-mini.js"></script>
<script type="text/javascript" charset="utf-8" src="../../resources/admin/login/js/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="../../resources/admin/login/js/zh-cn.js"></script>
<script type="text/javascript">
	
    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
</script>
<script type="text/javascript">
$("#file").change(function(){
	var tmpFiles=document.all.file.files;
	for(var i=0; i< tmpFiles.length; i++){
		if(!/.(jpg|gif|png|pdf|rar|zip|doc|docx|ppt|pptx|xls|xlsx|caj)$/i.test(tmpFiles[i].name)){//方法一：通过文件名后缀判断
		// if(!/^image\//.test(tmpFiles[i].type)){ //方法二：通过type属性判断是否是image/开头的
			alert("文件类型错误！ 您上传的类型是：" + tmpFiles[i].type);
			$(this).val("");
			$("#qFile").val("");
			return false;
		}else if(tmpFiles[i].size>30*1024*1024){//限制文件大小30M，可根据需要修改
			alert("文件太大了！建议不超过30M，您上传的大小是：" + parseInt(tmpFiles[i].size/1024/1024) + "M");
			$(this).val("");
			$("#qFile").val("");
			return false;
		}
	}
	/////////////////////////使用ajax方法提交数据///////////////////////////////
	
</script>
<ul id="ui-id-1" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul><div role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></div><div id="edui_fixedlayer" class="edui-default" style="position: fixed; left: 0px; top: 0px; width: 0px; height: 0px;"><div id="edui191" class="edui-dialog edui-for-snapscreen edui-default" style="display: none;"><div class="edui-dialog edui-for-snapscreen edui-default"><div id="edui191_body" class="edui-dialog-body edui-default"><div class="edui-dialog-shadow edui-default"></div><div id="edui191_titlebar" class="edui-dialog-titlebar edui-default"><div class="edui-dialog-draghandle edui-default" onmousedown="$EDITORUI[&quot;edui191&quot;]._onTitlebarMouseDown(event, this);"><span class="edui-dialog-caption edui-default">截图</span></div><div id="edui192" class="edui-box edui-button edui-dialog-closebutton edui-default"><div id="edui192_state" onmousedown="$EDITORUI[&quot;edui192&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui192&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui192&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui192&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui192_body" unselectable="on" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui192&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui192&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div></div><div id="edui191_content" class="edui-dialog-content edui-default"></div><div class="edui-dialog-foot edui-default"><div id="edui191_buttons" class="edui-dialog-buttons edui-default"><div id="edui193" class="edui-box edui-button edui-okbutton edui-default"><div id="edui193_state" onmousedown="$EDITORUI[&quot;edui193&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui193&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui193&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui193&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui193_body" unselectable="on" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui193&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui193&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default">确认</div></div></div></div></div><div id="edui194" class="edui-box edui-button edui-cancelbutton edui-default"><div id="edui194_state" onmousedown="$EDITORUI[&quot;edui194&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui194&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui194&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui194&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui194_body" unselectable="on" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui194&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui194&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default">取消</div></div></div></div></div></div></div></div></div></div><div id="edui120" class="edui-mask  edui-dialog-modalmask edui-default" onclick="return $EDITORUI[&quot;edui120&quot;]._onClick(event, this);" onmousedown="return $EDITORUI[&quot;edui120&quot;]._onMouseDown(event, this);" style="display: none;"></div><div id="edui121" class="edui-mask  edui-dialog-dragmask edui-default" onclick="return $EDITORUI[&quot;edui121&quot;]._onClick(event, this);" onmousedown="return $EDITORUI[&quot;edui121&quot;]._onMouseDown(event, this);" style="display: none;"></div><div id="edui229" class="edui-popup  edui-bubble edui-default" onmousedown="return false;" style="display: none;"> <div id="edui229_body" class="edui-popup-body edui-default"> <iframe style="position:absolute;z-index:-1;left:0;top:0;background-color: transparent;" frameborder="0" width="100%" height="100%" src="../../resources/admin/login/html/saved_resource(2).html" class="edui-default"></iframe> <div class="edui-shadow edui-default"></div> <div id="edui229_content" class="edui-popup-content edui-default">  </div> </div></div></div></body></html>