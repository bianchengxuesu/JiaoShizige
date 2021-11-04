<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>教师管理</title>
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap.min.css">
<link rel="stylesheet" href="../../resources/admin/login/css/font-awesome.min.css"> 
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap-theme.css" media="screen"> 
<link rel="stylesheet" href="../../resources/admin/login/css/aacsb.css" type="text/css">
<link rel="stylesheet" href="../../resources/admin/login/css/zoom.css" media="all">
<link rel="shortcut icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<link rel="icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<script language="javascript">
 //表单验证
 function check(){                
   var ids = document.getElementsByName("delid");                
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
<script language="javascript">
 function getvalue(ivalue) 
 { 
 var tvalue=ivalue; 
 var scrollTop=Math.max(document.documentElement.scrollTop,document.body.scrollTop);
 window.location=""+tvalue+scrollTop; 
 } 
</script>
<script src="../../resources/admin/login/js/jquery-2.1.4.min.js"></script>
</head>
<body onload="document.documentElement.scrollTop=0">
<!--<script type="text/javascript">var targetProtocol = 'https:';if (window.location.protocol != targetProtocol){window.location.href = targetProtocol +  window.location.href.substring(window.location.protocol.length);}</script><div style="position:absolute; pointer-events:none; top:50%; height:240px;border:0px solid white; margin:0 auto; margin-top:-50px; width:200px; left:50%; margin-left:-50px;"><img id="wait" src="../../resources/admin/login/images/Run.gif" style="display: none;"><!--////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--></div>
<div class="navbar navbar-inverse" id="home">
 <div class="tophead"></div>
 <div class="container ">
  <div class="toplink"><strong>管理员</strong>，
  <script language="javascript">
   now = new Date(),hour = now.getHours() 
   if(hour < 6){document.write("凌晨好！")} 
   else if (hour < 9){document.write("早上好！")} 
   else if (hour < 12){document.write("上午好！")} 
   else if (hour < 14){document.write("中午好！")} 
   else if (hour < 17){document.write("下午好！")} 
   else if (hour < 19){document.write("傍晚好！")} 
   else if (hour < 22){document.write("晚上好！")} 
   else {document.write("夜深了，请注意休息！")} 
  </script>下午好！ <a href="../../system/index">首页</a> - <a href="https://aacsb.ustc.edu.cn/tjut/logout.asp">退出</a></div>
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
    <li><a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp#" class="dropdown-toggle" data-toggle="dropdown">我的信息<b class="caret"></b></a>
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
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp#" class="dropdown-toggle" data-toggle="dropdown">系统管理<b class="caret"></b></a>
     <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/DateSetting.asp"><span class="glyphicon  glyphicon-cog font13"></span> 系统设置</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/UserRole.asp"><span class="glyphicon glyphicon-user font13"></span> 系统角色</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp"><span class="glyphicon glyphicon-list font13"></span> 消息管理</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/LoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录日志</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/aacsb_News.asp"><span class="glyphicon glyphicon-list-alt font13"></span> 新闻公告</a></li>
	  
     </ul>
    </li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp#" class="dropdown-toggle" data-toggle="dropdown">标准数据<b class="caret"></b></a>
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
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp#" class="dropdown-toggle" data-toggle="dropdown">智力贡献<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1"><span class="glyphicon glyphicon-record font13"></span> 期刊文章</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=2"><span class="glyphicon glyphicon-record font13"></span> 会议论文</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=3"><span class="glyphicon glyphicon-record font13"></span> 会议演讲</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=4"><span class="glyphicon glyphicon-record font13"></span> 专著</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=5"><span class="glyphicon glyphicon-record font13"></span> 教材</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=6"><span class="glyphicon glyphicon-record font13"></span> 标准/政策</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=7"><span class="glyphicon glyphicon-record font13"></span> 教学获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=8"><span class="glyphicon glyphicon-record font13"></span> 科研获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=9"><span class="glyphicon glyphicon-record font13"></span> 案例</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=10"><span class="glyphicon glyphicon-record font13"></span> 专利</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=11"><span class="glyphicon glyphicon-record font13"></span> 项目</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=12"><span class="glyphicon glyphicon-record font13"></span> 研究报告</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=13"><span class="glyphicon glyphicon-record font13"></span> 社会任职</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=14"><span class="glyphicon glyphicon-record font13"></span> 期刊任职</a></li>
     </ul>
    </li>
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp">教学贡献</a></li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Qualified.asp">资格认定</a></li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp#" class="dropdown-toggle" data-toggle="dropdown">表格输出<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-1</a></li>
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-1</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table5-1-2-3-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 5-1/5-2/5-3</a></li> 
	  
     </ul>
    </li>
    
    <li><a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp#" class="dropdown-toggle" data-toggle="dropdown">信息检索<b class="caret"></b></a>
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
        <span class="navbar-brand"><b>教师信息</b></span>
    </div>
    <div>
	 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        
<ul class="nav navbar-nav navbar-left">
 <li class="dropdown">
  <a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp#" class="dropdown-toggle font16" data-toggle="dropdown">栏目导航<b class="caret"></b>
  </a>
  
 <ul class="dropdown-menu dropdown-menu-col">
   
   <li><a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp">师资信息标准</a></li>
   
   <li><a href="https://aacsb.ustc.edu.cn/tjut/Student.asp">学生信息标准</a></li> 
   
   <li><a href="https://aacsb.ustc.edu.cn/tjut/BasePeriodical.asp">智力贡献标准</a></li>
   <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseCourse.asp">教学贡献标准</a></li>
   
   <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseStatAdmissions.asp">招生就业信息</a></li> 
   
   <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseType.asp">字段类型管理</a></li> 
   
 </ul>
 

 </li>
</ul>

<!--
<form name="form1" method="post" class="navbar-form navbar-left">
 <div class="form-group" style="width:auto !important;">
  <input type="text" class="form-control"  id="KeyWord" name="s" placeholder="请输入搜索内容" required />
 </div>
 <input name="pages" type="hidden" value="1">
 <button type="submit" class="btn btn-default"><span style="font-size:12px;"><span class="glyphicon glyphicon-search"></span></span> 搜索</button>
</form>
-->
        <ul class="nav navbar-nav">
		 <li class="font16"><a href="https://aacsb.ustc.edu.cn/tjut/DevoteLog.asp?del=Teacher&amp;urlname=Teacher">日志</a>
        </li></ul>
		<ul class="nav navbar-nav navbar-right">
 
 <li class="active font15"><a href="teacher">教师</a></li>
 
 <li class=" font15"><a href="jobtitle">职称</a></li>
 
 <li class=" font15"><a href="department">部门</a></li>
 <li class=" font15"><a href="specialty">专业</a></li>
 <li class=" font15"><a href="position">职务</a></li>
 
</ul>
	  </div>
    </div>
	</div>
</nav>
</div>
<div class="container">
 <div class="text-center">
  <span class="mb-5">
  <button class="btn btn-default font16 mb-5 mr-5" onclick="getvalue(this.name)" disabled="" name="Teacher.asp?h=">全部</button>
  <span class="btn-group">
   
   <button type="button" class="btn btn-default mb-5 mr-5 dropdown-toggle" data-toggle="dropdown">按教师类型<span class="caret"></span></button>
   <ul class="dropdown-menu" role="menu">
    <li><a onclick="getvalue(this.name)" name="Teacher.asp?run=ok&amp;h=">全部</a></li>
    <li><a onclick="getvalue(this.name)" name="Teacher.asp?schoolsds=0&amp;h=">在职</a></li>
	<li><a onclick="getvalue(this.name)" name="Teacher.asp?schoolsds=1&amp;h=">兼职</a></li>
    <li><a onclick="getvalue(this.name)" name="Teacher.asp?schoolsds=8&amp;h=">返聘</a></li>
	<li><a onclick="getvalue(this.name)" name="Teacher.asp?schoolsds=7&amp;h=">已退休</a></li>
	<li><a onclick="getvalue(this.name)" name="Teacher.asp?schoolsds=4&amp;h=">已离职</a></li>
	<li><a onclick="getvalue(this.name)" name="Teacher.asp?schoolsds=9&amp;h=">其他</a></li>
   </ul>
  </span>
  <span class="btn-group">
   
   <button type="button" class="btn btn-default mb-5 mr-5 dropdown-toggle" data-toggle="dropdown">按校内外<span class="caret"></span></button>
   <ul class="dropdown-menu" role="menu">
    <li><a onclick="getvalue(this.name)" name="Teacher.asp?run=ok&amp;h=">全部</a></li>
    <li><a onclick="getvalue(this.name)" name="Teacher.asp?rylxs=0&amp;h=">院内</a></li>
	<li><a onclick="getvalue(this.name)" name="Teacher.asp?rylxs=1&amp;h=">院外</a></li>
    <li><a onclick="getvalue(this.name)" name="Teacher.asp?rylxs=2&amp;h=">校外</a></li>
   </ul>
  </span>
  <span class="btn-group">
    
    <button type="button" class="btn btn-default mb-5 mr-5 dropdown-toggle" data-toggle="dropdown">按专业方向<span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu">
	 <li><a onclick="getvalue(this.name)" name="Teacher.asp?run=ok&amp;h=">全部</a></li>
	 
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?spids=1&amp;h=">金融</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?spids=2&amp;h=">综合管理</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?spids=3&amp;h=">管理信息系统</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?spids=4&amp;h=">市场营销</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?spids=5&amp;h=">组织与人力资源</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?spids=6&amp;h=">运营管理</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?spids=7&amp;h=">概率与统计</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?spids=8&amp;h=">战略与创业</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?spids=9&amp;h=">财务管理</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?spids=10&amp;h=">运筹</a></li>
     
    </ul>
  </span>
  <span class="btn-group">
    
    <button type="button" class="btn btn-default mb-5 mr-5 dropdown-toggle" data-toggle="dropdown">按部门<span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu">
	 <li><a onclick="getvalue(this.name)" name="Teacher.asp?run=ok&amp;h=">全部</a></li>
	 
    </ul>
  </span>
  <span class="btn-group">
    
    <button type="button" class="btn btn-default mb-5 mr-5 dropdown-toggle" data-toggle="dropdown">按职称<span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu">
	 <li><a onclick="getvalue(this.name)" name="Teacher.asp?run=ok&amp;h=">全部</a></li>
	 
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?jtids=3&amp;h=">教授</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?jtids=4&amp;h=">研究员</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?jtids=5&amp;h=">副教授</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?jtids=6&amp;h=">副研究员</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?jtids=7&amp;h=">首席顾问</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?jtids=8&amp;h=">首席研究员</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?jtids=9&amp;h=">讲师</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?jtids=10&amp;h=">博士后</a></li>
     
     <li><a onclick="getvalue(this.name)" name="Teacher.asp?jtids=11&amp;h=">其他</a></li>
     
    </ul>
  </span>
 </span></div>
</div>
<div style="clear:both;"></div>
<div class="navbar-menuwar stuckMenu" style="position: relative;">
 <div class="container">
 <div class="navhead">
  <span class="pull-left">
  
<form name="form1" action="https://aacsb.ustc.edu.cn/tjut/Teacher.asp" method="post">
 <div class="pull-left mt-3 mb-3">
  <input type="text" class="form-control search_input" id="KeyWord" name="s" placeholder="请输入搜索内容" required="">
 </div>
 <span class="pull-right ml-5 mt-3 mb-3">
 <input name="pages" type="hidden" value="1">
 <button type="submit" class="btn btn-default"><span style="font-size:12px;"><span class="glyphicon glyphicon-search"></span></span> 搜索</button>
 </span>
</form>
  </span>
  <span class="pull-right">
   
   <a class="btn btn-default mt-3 mb-3 mr-5" onclick="if(confirm(&#39;导出教师数据系统需要花大量的时间来处理，请耐心等待勿刷新或关闭页面，以免造成浏览器崩溃！&#39;))window.location=&#39;DevoteExcel.asp?t=teacher&amp;sor=Schoolsd,Teacher.EnglishName&#39;"><span class="glyphicon glyphicon-export"></span> 导出</a>
   
   <button type="submit" name="action" form="deleteTeacher" onclick="return check();" class="btn btn-danger mt-3 mb-3 mr-5 font16"><span class="glyphicon glyphicon-trash"></span> 删除</button>
   <a class="btn btn-success mt-3 mb-3 font16" href="teacheradd" name="TeacherAdd.asp?h="><span class="glyphicon glyphicon-plus"></span> 添加</a>
   
   </span>
   <div style="clear:both;"></div>
  </div>
  </div>
</div>
<div class="container" style="margin-top: 0px;">
 <div class="mt-10" style="min-height:300px;">
    <form id="deleteTeacher" action="deleteTeacher.do" method="post" >
    <table class="table">
     <thead>
      <tr class="active">
	   
       <th class="co-w30" style="margin-right:5px;">sel.</th>
	   
	   <th class="co-w130">姓名(Name)</th>
	   <th class="co-w60 text-center">性别</th>
	   <th class="co-w60 co-hide-680">年龄</th>
	   <th class="co-w110">职称</th>
	   <th class="co-w200 co-hide-750">部门</th>
	   <th class="co-w150 co-hide-550">专业方向</th>
	   <th class="co-w230 co-hide-980">邮件/手机</th>
	   <th class="co-w70 co-hide-920">状态</th>
       <th class="co-hide-1200">备注</th>
	   
	   <th class="co-w50 text-center">管理</th>
	   
      </tr>
     </thead>
     <tbody>
     
     <c:forEach items="${ps.list}" var="L">
      <tr onmouseover="this.bgColor=&#39;f9f9f9&#39;;this.style.cursor=&#39;hand&#39;" onmouseout="this.bgColor=&#39;ffffff&#39;" data-toggle="tooltip" data-placement="top" title="" data-original-title="第1行" bgcolor="ffffff">
	   <td class="co-w30"><input id="delid" name="delid" type="checkbox"  class="bigbox" value="${L.teid}"></td>
       <td class="co-w130">
	    <div class="gallery pull-left mr-5">
		 <div data-toggle="tooltip" data-placement="top" title="" data-original-title="点击可查看照片">
		  <a href="../../resources/admin/login/images/2016041979392689.gif"><img src="../../resources/admin/login/images/2016041979392689.gif" width="28" height="40" style="padding-top:1px;padding-bottom:1px;"></a>
		 </div>
		</div>
		<div class="clear"></div>
		<span class="pull-left">
		 <font color="red"><b>${L.chinesename}</b></font>
		<br>
		 <span style="font-size:85%">${L.salarys}</span>
		</span>
	   </td>
	   <td class="co-w60 text-center">男</td>
	   <td class="co-w60 co-hide-680"></td>
	   <td class="co-w110">${L.job}<br></td>
	   <td class="co-w200 co-hide-750">${L.department}<br></td>
	   <td class="co-w150 co-hide-550">${L.specialty}</td>
	   <td class="co-w230 co-hide-980" style="word-wrap:break-word;word-break:break-all;white-space: normal">admin@ustc.edu.cn<br></td>
       <td class="co-w70 co-hide-920">在职</td>
	   <td class="co-hide-1200"></td>
	   
	   <td class="co-w50 text-center"><a class="btn btn-default btn-bin" onclick="TestBlack(&#39;set-${L.uid}&#39;);"><span class="glyphicon glyphicon-cog" title="点击展开进行查看和管理"></span></a></td>
	   
      </tr>
	  <tr id="set-${L.uid}" style="display:none;">
       <td colspan="20" style="padding:0">
	    <span class="pull-right">
		 
		 <a class="btn btn-default mt-10 mb-10 mr-5" name="teacherlink?teid=${L.teid}&amp;page=${ps.pageNum}&h=" onclick="getvalue(this.name)">关系</a>
		 <a class="btn btn-default mt-10 mb-10 mr-5" name="Education?teid=${L.teid}&h=" onclick="getvalue(this.name)">教育背景</a>
		 <a class="btn btn-default mt-10 mb-10 mr-5" name="Work?teid=${L.teid}&h=" onclick="getvalue(this.name)">工作经验</a>
		 <a class="btn btn-default mt-10 mb-10 mr-5" name="TeacherPass?teid=${L.teid}&amp;page=${ps.pageNum}&h=" onclick="getvalue(this.name)">密码</a>
         <a class="btn btn-default mt-10 mb-10 mr-5" name="TeacherEdit?teid=${L.teid}&amp;page=${ps.pageNum}&h=" onclick="getvalue(this.name)">编辑</a>
		 
        </span></td>
      </tr>
     </c:forEach>
     
	 </tbody>
	</table>
	 <input name="aurl" type="hidden" value="http://aacsb.ustc.edu.cn/tjut/Teacher.asp">
	</form>
 </div>
</div>

<!-- 分页功能 -->
<div style='clear:both;margin-top:20px;'></div>
<nav style='text-align: center;'>
<ul class='pagination'>
	<c:if test="${ps.total != 0 && ps.pages != 1}">
	<c:if test="${ps.pageNum == 1}">
		<li class="disabled"><span aria-hidden='true'>&laquo;</span></li>
	</c:if>
	<c:if test="${ps.pageNum != 1}">
		<li><a href="teacher?page=${ps.pageNum-1}" aria-label="Previous"><span aria-hidden='true'>&laquo;</span></a></li>
	</c:if>
	<c:forEach begin="1" end="${ps.pages}" var="pageNumber">
		<c:if test="${pageNumber == ps.pageNum}">
			<li class="active"><a href="teacher?page=${pageNumber}">${pageNumber}</a></li>
		</c:if>
		<c:if test="${pageNumber != ps.pageNum}">
			<li><a href="teacher?page=${pageNumber}">${pageNumber}</a></li>
		</c:if>
	</c:forEach>
	<c:if test="${ps.pageNum == ps.lastPage}">
		<li class="disabled"><span aria-hidden='true'>&raquo;</span></li>
	</c:if>
	<c:if test="${ps.pageNum != ps.lastPage}">
		<li><a href="teacher?page=${ps.pageNum+1}" aria-label="Next"><span aria-hidden='true'>&raquo;</span></a></li>
	</c:if>
	</c:if>
</ul>
</nav>

<section>
 <div class="aacsb_footer">
	<p class="info">系统仅支持Chrome、Firefox、Edge等浏览器<br>Copyright © 2013-2021，&nbsp;<a href="https://aacsb.ustc.edu.cn/tjut/Copyright.asp">信息系统版权说明和技术支持</a>&nbsp; v3.0.200619, 页面执行时间：31.25毫秒
 </p></div>
</section>

<iframe name="Detail" id="Detail" frameborder="0" hspace="0" vspace="0" src="../../resources/admin/login/html/Record.html" style="display:none"></iframe>
<script language="javascript">document.getElementById('wait').style.display='none';</script>

<script src="../../resources/admin/login/js/bootstrap.min.js"></script> 
<script src="../../resources/admin/login/js/zoom.min.js"></script><div id="zoom" style="display: none;"><a class="close"></a><a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp#previous" class="previous1"></a><a href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp#next" class="next1"></a><div class="ph-content loading"></div></div>
<script src="../../resources/admin/login/js/stickUp.js"></script>
<script type="text/javascript">
 //initiating jQuery
 jQuery(function($) {
   $(document).ready( function() {
     //enabling stickUp on the '.navbar-wrapper' class
     $('.navbar-menuwar').stickUp();
   });
 });
$(function (){
    $("[data-toggle='popover']").popover();
});
$(function () {
    $("[data-toggle='tooltip']").tooltip();
});
</script>
</body></html>