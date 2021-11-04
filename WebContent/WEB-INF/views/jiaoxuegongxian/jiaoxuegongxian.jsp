<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<!-- saved from url=(0041)https://aacsb.ustc.edu.cn/tjut/index.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>教学贡献</title>
<link rel="stylesheet" href="../resources/admin/login/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/admin/login/css/font-awesome.min.css"> 
<link rel="stylesheet" href="../resources/admin/login/css/bootstrap-theme.css" media="screen"> 
<link rel="stylesheet" href="../resources/admin/login/css/aacsb.css" type="text/css">
<link rel="stylesheet" href="../resources/admin/login/css/zoom.css" media="all">
<link rel="shortcut icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<link rel="icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<script language="javascript">
 //表单验证
 function check(){                
   var ids = document.getElementsByName("delID");                
     var flag = false ;                
     for(var i=0;i<ids.length;i++){
         if(ids[i].checked){
             flag = true ;
             break ;
         }
     }
     if(!flag){
         alert("请最少选择一项！");
         return false ;
	 }else{
		 if(confirm('确定要删除选中的记录吗?')){
		 return true;
		 }
		 return false;
   }
 }
</script>
<script language="javascript">
 function TestBlack(TagName){
  var obj = document.getElementById(TagName);
  if(obj.style.display==""){
   obj.style.display = "none";
  }else{
   obj.style.display = "";
  }
 }
</script>
<script type="text/javascript">
function getvalue(ivalue) 
  { 
  var tvalue=ivalue; 
  var scrollTop=Math.max(document.documentElement.scrollTop,document.body.scrollTop);
  window.location=""+tvalue+scrollTop; 
} 

function sendID(ID,obj){
$("#rid").val(ID);
var r1=$(obj).parent().find('p')[0];
var msgtitle=$(r1).text();
$("#msgtitle").val(msgtitle);
var r2=$(obj).parent().find('p')[1];
var msgintro=$(r2).text();
$("#msgintro").val(msgintro);
}
</script>
<script src="../resources/admin/login/js/jquery-2.1.4.min.js"></script>
</head>
<body onload="document.documentElement.scrollTop=0">
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
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp#" class="dropdown-toggle" data-toggle="dropdown">我的信息<b class="caret"></b></a>
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
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp#" class="dropdown-toggle" data-toggle="dropdown">系统管理<b class="caret"></b></a>
     <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/DateSetting.asp"><span class="glyphicon  glyphicon-cog font13"></span> 系统设置</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/UserRole.asp"><span class="glyphicon glyphicon-user font13"></span> 系统角色</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp"><span class="glyphicon glyphicon-list font13"></span> 消息管理</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/LoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录日志</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/aacsb_News.asp"><span class="glyphicon glyphicon-list-alt font13"></span> 新闻公告</a></li>
	  
     </ul>
    </li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp#" class="dropdown-toggle" data-toggle="dropdown">标准数据<b class="caret"></b></a>
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
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp#" class="dropdown-toggle" data-toggle="dropdown">智力贡献<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1"><span class="glyphicon glyphicon-record font13"></span> 期刊文章</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=2"><span class="glyphicon glyphicon-record font13"></span> 会议论文</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=3"><span class="glyphicon glyphicon-record font13"></span> 会议演讲</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=4"><span class="glyphicon glyphicon-record font13"></span> 专著</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=5"><span class="glyphicon glyphicon-record font13"></span> 教材</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=6"><span class="glyphicon glyphicon-record font13"></span> 标准/政策</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=7"><span class="glyphicon glyphicon-record font13"></span> 教学获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=8"><span class="glyphicon glyphicon-record font13"></span> 科研获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=9"><span class="glyphicon glyphicon-record font13"></span> 案例</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=10"><span class="glyphicon glyphicon-record font13"></span> 专利</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=11"><span class="glyphicon glyphicon-record font13"></span> 项目</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=12"><span class="glyphicon glyphicon-record font13"></span> 研究报告</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=13"><span class="glyphicon glyphicon-record font13"></span> 社会任职</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=14"><span class="glyphicon glyphicon-record font13"></span> 期刊任职</a></li>
     </ul>
    </li>
    
	<li><a href="jiaoxuegongxian.jsp">教学贡献</a></li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Qualified.asp">资格认定</a></li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp#" class="dropdown-toggle" data-toggle="dropdown">表格输出<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-1</a></li>
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-1</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table5-1-2-3-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 5-1/5-2/5-3</a></li> 
	  
     </ul>
    </li>
    
    <li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp#" class="dropdown-toggle" data-toggle="dropdown">信息检索<b class="caret"></b></a>
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
<div class="container mt-20">
<nav class="navbar navbar-default">
	<div class="container-fluid"> 
    <div class="navbar-header" style="text-align:right;">
	  <button type="button" class="navbar-toggle collapsed navbar-toggle_col" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <span class="navbar-brand"><b>教学贡献</b></span>
    </div>
    <div>
	 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        
<!--
<form name="form1" method="post" class="navbar-form navbar-left">
 <div class="form-group" style="width:auto !important;">
  <input type="text" class="form-control"  id="KeyWord" name="s" placeholder="请输入搜索内容" required />
 </div>
 <input name="pages" type="hidden" value="1">
 <button type="submit" class="btn btn-default"><span style="font-size:12px;"><span class="glyphicon glyphicon-search"></span></span> 搜索</button>
</form>
-->
		 <ul class="nav navbar-nav navbar-right">
		 
		 <li class="font16"><a href="https://aacsb.ustc.edu.cn/tjut/TeachingLog.asp?del=aacsb_Courses&amp;urlname=DevoteCourse">操作日志</a></li>
         
		 <li class="active font15"><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?h=">全部数据</a></li>
		 <li class=" font15"><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?isme=ok&amp;h=">只看自己</a></li>
        </ul>
	  </div>
    </div>
	</div>
</nav>
</div>
<div class="container">
 <div class="text-center mb-5">
  <span>
   
  <span class="btn-group">
   
   <button type="button" class="btn btn-default mt-3 mb-3 mr-5 dropdown-toggle" data-toggle="dropdown">按教师类型<span class="caret"></span></button>
   <ul class="dropdown-menu" role="menu">
    <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?run=ok&amp;h=">全部</a></li>
    <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Schoolsd=0&amp;h=">在职</a></li>
	<li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Schoolsd=1&amp;h=">兼职</a></li>
    <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Schoolsd=8&amp;h=">返聘</a></li>
	<li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Schoolsd=7&amp;h=">已退休</a></li>
	<li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Schoolsd=4&amp;h=">已离职</a></li>
   </ul>
  </span>
  <span class="btn-group">
    
    <button type="button" class="btn btn-default mt-3 mb-3 mr-5 dropdown-toggle" data-toggle="dropdown">按对象<span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu">
	 <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?run=ok&amp;h=">全部</a></li>
	 
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=3&amp;h=">MLE</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=2&amp;h=">MPA</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=4&amp;h=">MPM</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=21&amp;h=">本科双学位</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=7&amp;h=">工商本科</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=9&amp;h=">工商博</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=8&amp;h=">工商科硕</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=10&amp;h=">管科本科</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=12&amp;h=">管科博</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=11&amp;h=">管科科硕</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=13&amp;h=">金融本科</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=16&amp;h=">金融工程博</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=15&amp;h=">金融工程科硕</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=14&amp;h=">金融学科硕</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=23&amp;h=">其他</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=22&amp;h=">全校公选课</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=17&amp;h=">统计本科</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=20&amp;h=">统计博</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=18&amp;h=">统计科硕</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=19&amp;h=">统计专硕</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=1&amp;h=">MBA</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=5&amp;h=">MF</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Cotype=6&amp;h=">EMBA</a></li>
     
    </ul>
  </span>
   <span class="btn-group">
    
    <button type="button" class="btn btn-default mt-3 mb-3 mr-5 dropdown-toggle" data-toggle="dropdown">按学年<span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu">
	 <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?run=ok&amp;h=">全部</a></li>
	 
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Syears=2018-2019&amp;h=">2018-2019</a></li>
     
    </ul>
  </span>
  <span class="btn-group">
    
    <button type="button" class="btn btn-default mt-3 mb-3 mr-5 dropdown-toggle" data-toggle="dropdown">按季度<span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu">
	 <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?run=ok&amp;h=">全部</a></li>
	 
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Quarter=春&amp;h=">春</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Quarter=夏&amp;h=">夏</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?Quarter=秋&amp;h=">秋</a></li>
     
    </ul>
   </span>
   <span class="btn-group">
    
    <button type="button" class="btn btn-default mt-3 mb-3 mr-5 dropdown-toggle" data-toggle="dropdown">按城市<span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu">
	 <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?run=ok&amp;h=">全部</a></li>
	 
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?City=合肥&amp;h=">合肥</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?City=北京&amp;h=">北京</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?City=上海&amp;h=">上海</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?City=苏州&amp;h=">苏州</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?City=深圳&amp;h=">深圳</a></li>
     
     <li><a onclick="getvalue(this.name)" href="javascript:void(0)" name="DevoteCourse.asp?City=其他&amp;h=">其他</a></li>
     
    </ul>
   </span>
   
   <a class="btn btn-default mt-3 mb-3 mr-5" data-toggle="modal" data-target="#myin"><span class="glyphicon glyphicon-import"></span> 导入</a>
   
   <a class="btn btn-default mt-3 mb-3 mr-5" href="../poi/excel/export.do"><span class="glyphicon glyphicon-export"></span> 导出</a>
   
  </span>
 </div>
</div>
<div style="clear:both;"></div>
<div class="navbar-menuwar stuckMenu" style="position: relative;">
 <div class="container">
 <div class="navhead">
  <span class="pull-left">
  
<form name="form1" action="../jiaoxuegongxian/search" method="post">
 <div class="pull-left mt-3 mb-3">
  <input type="text" class="form-control search_input" id="KeyWord" name="KeyWord" placeholder="请输入搜索内容" required="">
 </div>
 <span class="pull-right ml-5 mt-3 mb-3">
 <input name="pages" type="hidden" value="1">
 <button type="submit" class="btn btn-default"><span style="font-size:12px;"><span class="glyphicon glyphicon-search"></span></span> 搜索</button>
 </span>
</form>

<script type="text/javascript">
/**
 * 根据课程和老师搜索贡献信息
 */
function search(){
	var KeyWord =$("#KeyWord").val();
	$.ajax({
		url:'search',
		data:{KeyWord:KeyWord},
		type:'post',
		dataType:'json',
	});
}
</script>

  </span>
  <span class="pull-right">
   
   <button id="delSelected" type="submit" name="action" value="del" form="LeadAACSB" onclick="remove()" class="delete"> 删除</button>
   
   <a class="btn btn-success mt-3 mb-3 ml-5" href="jiaoxuegongxiantianjia" name="DevoteCourseAdd.asp?h="> <span class="glyphicon glyphicon-plus"></span> 添加</a>
   
   </span>
   <div style="clear:both;"></div>
  </div>
  </div>
</div>
<div class="container" style="margin-top: 0px;">
 <div class="mt-10" style="min-height:430px;">
   <form method="post" id="LeadAACSB">
    <table class="table">
     <thead>
      <tr class="active">
	   
       <th class="co-w35 co-hide-768">sel.</th>
	   
	   <th class="co-w120"><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp?sort=te">教师↑</a></th>
	   <th class="co-w170">课程名称/课号</th>
	   <th class="co-w50 co-hide-620">学分<br>学时</th>
	   <th class="co-w60 co-hide-570">课时</th>
	   <th class="co-w50 co-hide-991">实验<br>课时</th>
	   <th class="co-w120 co-hide-900">授课对象</th>
	   <th class="co-w100 co-hide-520">学年/课季</th>
	   <th class="co-w50 co-hide-670">地点</th>
	   <th class="co-hide-1200">班级号</th>
	   <th class="co-w60">状态</th>
	   
	   <th class="co-w60 text-center">管理</th>
	   
      </tr>
     </thead>
	 <tbody id="gongxian-list">
	 
	 
	 <c:forEach items="${List}" var="L">
      <tr onmouseover="this.bgColor=&#39;f9f9f9&#39;;this.style.cursor=&#39;hand&#39;" onmouseout="this.bgColor=&#39;ffffff&#39;" data-toggle="tooltip" data-placement="top" title="" data-original-title="第2行，点击行展开详细信息 ↓" bgcolor="ffffff">
	   
	   <td class="co-w35 co-hide-768"><input  name="delid" type="checkbox" id="se" class="bigbox" value="${L.id}"></td>
	   
	    <td class="co-w120" onclick="TestBlack(&#39;set1-2&#39;);">
	    <div class="gallery pull-left mr-5">
		 <div title="点击可查看照片">
		  
		  <a href="../resources/admin/login/images/nv.jpg"><img src="../resources/admin/login/images/nv.jpg" width="28" height="40" style="padding-top:1px;padding-bottom:1px;"></a>
		  
		 </div>
		</div>
		<div class="clear"></div>
		 <b>${L.teacher}</b>
		 <br>
		 <span style="font-size:80%">博士后</span>
	   </td>
	   <td class="co-w170" onclick="TestBlack(&#39;set1-2&#39;);">${L.course}</td>
	   <td class="co-w60 co-hide-620" onclick="TestBlack(&#39;set1-2&#39;);">${L.cochs}</td>
	   <td class="co-w50 co-hide-570" onclick="TestBlack(&#39;set1-2&#39;);">${L.coches}</td>
	   <td class="co-w50 co-hide-991" onclick="TestBlack(&#39;set1-2&#39;);">${L.ecochs}</td>
	   <td class="co-w120 co-hide-900" onclick="TestBlack(&#39;set1-2&#39;);">${L.coobjects}</td>
	   <td class="co-w100 co-hide-520" onclick="TestBlack(&#39;set1-2&#39;);">2011-2012<br>春</td>
	   <td class="co-w50 co-hide-670" onclick="TestBlack(&#39;set1-2&#39;);">合肥</td>
	   <td class="co-hide-1200" onclick="TestBlack(&#39;set1-2&#39;);" style="word-wrap:break-word;word-break:break-all;white-space: normal">金融系001班</td>
	   <td class="co-w60"><font color="green">已审</font></td>
	   
	   <td class="co-w60 text-center"><a class="btn btn-default btn-bin" onclick="TestBlack(&#39;set-2&#39;);"><span class="glyphicon glyphicon-cog" title="点击展开进行查看和管理 ID:2"></span></a></td>
	   
      </tr>
	  <tr>
       <td colspan="20" style="padding:0;border-top:none;">
	    <div id="set-2" style>
		<span class="pull-left ml-10 mt-10 co-chk">
		 
		</span> 
	    <span class="pull-right">
		 
		 <a class="btn btn-default mt-5 mb-5 mr-5" name="DevoteCourseFile.asp?ID=2&amp;h1=" onclick="getvalue(this.name)">AOL附件</a>
		 
		 <a class="btn btn-default mt-5 mb-5 mr-5" name="DevoteCourse.asp?checked=yes&amp;ID=2&amp;check=0&amp;h=" onclick="getvalue(this.name)">取消审核</a>
		 
         <a class="btn btn-default mt-5 mb-5 mr-5" name="DevoteCourseEdit.asp?ID=1&amp;h=" onclick="findbyid()" >编辑</a>
		 
        </span>
		<div style="clear:both;"></div>
		</div>
		<div id="set1-2" style="display:none;" class="admin-info">
		<div class="mb-5 pl-10">
         <font color="red">课程号：</font>jr001&nbsp;&nbsp;&nbsp;<font color="red">授课对象：</font>金融学科硕&nbsp;&nbsp;&nbsp;&nbsp;
         <font color="red">班级：</font>金融系001班&nbsp;&nbsp;
		</div>
		
		<div class="mb-5 pl-10">
         <font color="red">添加人：</font>管理员&nbsp;&nbsp;<font color="red">添加时间：</font><font style="font-size:90%">2021/1/18 15:42:16</font>&nbsp;&nbsp;<font color="red">最终审核人：</font>管理员&nbsp;&nbsp;
		</div>
		
		</div>
	   </td>
      </tr>
     </c:forEach>
     
	 </tbody>
	</table>
	 <input name="aurl" type="hidden" value="http://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp">
	</form>
 </div>
</div>
<div class="container mt-40">
 <div class="alert alert-info alert-dismissable">
  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
  
  提示：教学贡献数据在审核的状态下且在认定的时间范围内才能生效，由教学秘书或分管领导审核认定；教师姓名带有●为“助讲”；课程名称带有<span class="font12 glyphicon glyphicon-paperclip"></span>说明已上传附件；
  
 </div>
</div>




<div class="modal fade" id="myin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
  <div class="modal-content">
  	<div id="dlg2" class="easyui-dialog" style="width:400px;height:180px;padding:10px 20px" closed="true" buttons="#dlg-buttons2">  
    <form id="uploadForm" action="../poi/excel/upload.do" method="post" enctype="multipart/form-data" >  
        <table>  
            <tr>  
                <td>上传文件：</td>  
                <td><input type="file" name="jiaoxueFile"></td>  
            </tr>  
            <tr>
            	<td><button type="submit">上传excel<button/> </td>
            </tr>
        </table>  
        <div id="dlg-buttons2">  
    	
    	
    </form>  
</div>  
  
	</div>
   </div>
  </div>

















<div class="modal fade" id="sendmsg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
  <div class="modal-content">
   <form method="post" action="https://aacsb.ustc.edu.cn/tjut/DevoteMessageSend.asp" name="LeadBBSFm">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h4 class="modal-title" id="myModalLabel">申请快速审核</h4>
   </div>
   <div class="modal-body">
    <div class="control-group">
     <label for="name">消息主题</label>
     <div class="">
	  <input type="text" id="msgtitle" name="Msgname" readonly="" class="form-control" value="" required="">
	 </div>
	 <p class="help-block help-info"><font style="font-style:normal;font-size:13px;" color="red">*</font> 请输入消息主题</p>
    </div>
	<div class="control-group">
     <label for="name">发送类型</label>
     <div class="">
	   <select class="form-control" name="Msgtype">
		<option value="1" selected="">系统消息</option>
		<option value="2">邮件</option>
        <option value="3">邮件和系统消息</option>
       </select>
	 </div>
	 <p class="help-block help-info"></p>
    </div>
	<div class="control-group">
     <label for="name">接收人</label>
     <div class="">
	    <select name="UserID" class="form-control" required="">
		
		<option value="">请选择</option>
        
        </select>
	 </div>
	 <p class="help-block help-info">请选择与您课程相关的教学秘书（教学管理）人员</p>
    </div>
	<div class="control-group">
     <label for="name">消息内容</label>
     <div class="">
	  <textarea id="msgintro" name="Msgintro" readonly="" class="form-control" style="width:100%;height:60px;"></textarea>
	 </div>
	 <p class="help-block help-info"></p>
    </div>
   </div>
   <div class="modal-footer">
    <input type="hidden" name="ID" value="" id="rid">
	<input type="hidden" name="Tables" value="aacsb_Courses">
	<input type="hidden" name="Msgreo" value="3">
	<input type="hidden" name="aurl" value="http://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp">
    <input name="sendmsg" type="submit" class="btn btn-primary" value="发送消息">
	<button type="button" class="btn btn-default ml-5" data-dismiss="modal">关闭</button>
   </div>
   </form>
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


<script src="../resources/admin/login/js/bootstrap.min.js"></script>
<script src="../resources/admin/login/js/zoom.min.js"></script><div id="zoom" style="display: none;"><a class="close"></a><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp#previous" class="previous1"></a><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp#next" class="next1"></a><div class="ph-content loading"></div></div>
<script src="../resources/admin/login/js/stickUp.js"></script>
<script type="text/javascript">
function openUploadFileDialog(){  
     $("#dlg2").dialog('open').dialog('setTitle','excel批量导入数据');  
 }
 
 function uploadExcel(){
     $("#uploadForm").form("submit",{  
         success:function(result){  
             var result=eval('('+result+')');
             if(result.code!=0){  
                 $.messager.alert("系统提示",result.msg);  
             }else{  
                 $.messager.alert("系统提示","上传成功");  
                 $("#dlg2").dialog("close");  
                 $("#dg").datagrid("reload");  
             }  
         }  
     });  
 }
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
<script type="text/javascript">
/**
 * 删除操作
 */
function remove(){
	alert("this window.onload");
	
	var oid =document.getElementsByName("delid");
	var id;
	for(var i=0;i<oid.length;i++){
		if(oid[i].checked==true){
			id=oid[i].value;
		}
	}
	$.ajax({
		url:'delete',
		type:'post',
		data:{id:id},
		dataType:'json',
	});
};
/**
 * 查询id操作
 */
var check_id;
function findbyid(){
	var oid =document.getElementsByName("delid");
	var id;
	for(var i=0;i<oid.length;i++){
		if(oid[i].checked==true){
			id=oid[i].value;
		}
	}
	check_id=id;
	alert(check_id);
	window.location.href="../jiaoxuegongxian/jiaoxuegongxianxiugai?id="+id;
}
</script>


</body></html>