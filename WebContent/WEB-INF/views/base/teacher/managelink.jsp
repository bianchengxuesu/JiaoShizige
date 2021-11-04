<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>${title}</title>
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap.min.css">
<link rel="stylesheet" href="../../resources/admin/login/css/font-awesome.min.css"> 
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap-theme.css" media="screen"> 
<link rel="stylesheet" href="../../resources/admin/login/css/jquery-ui.css">
<link rel="stylesheet" href="../../resources/admin/login/css/aacsb.css" type="text/css">
<link rel="stylesheet" href="../../resources/admin/login/css/zoom.css" media="all">
<link rel="shortcut icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<link rel="icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<script type="text/javascript">
function getQueryVariable(variable){
	var query = window.location.search.substring(1);
	var vars = query.split("&");
	for (var i=0;i<vars.length;i++){
		var pair = vars[i].split("=");
		if(pair[0] == variable) return pair[1];
	}
	return(false);
}
</script>
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
<script type="text/javascript">
 function getvalue(ivalue) 
 { 
 var tvalue=ivalue; 
 var scrollTop=Math.max(document.documentElement.scrollTop,document.body.scrollTop);
 window.location=""+tvalue+scrollTop; 
 } 

 function TestBlack(TagName){
  var obj = document.getElementById(TagName);
  if(obj.style.display==""){
   obj.style.display = "none";
  }else{
   obj.style.display = "";
  }
 }
</script>
<script src="../../resources/admin/login/js/jquery-2.1.4.min.js"></script>
<script src="../../resources/admin/login/js/jquery-ui.js"></script> 
<input type="hidden" id="_w_tusk"><script type="text/javascript" src="chrome-extension://odphnbhiddhdpoccbialllejaajemdio/scripts/inspector.js"></script></head>
<body onload="document.documentElement.scrollTop=0">
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
    <li><a href="https://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0#" class="dropdown-toggle" data-toggle="dropdown">我的信息<b class="caret"></b></a>
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
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0#" class="dropdown-toggle" data-toggle="dropdown">系统管理<b class="caret"></b></a>
     <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/DateSetting.asp"><span class="glyphicon  glyphicon-cog font13"></span> 系统设置</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/UserRole.asp"><span class="glyphicon glyphicon-user font13"></span> 系统角色</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp"><span class="glyphicon glyphicon-list font13"></span> 消息管理</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/LoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录日志</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/aacsb_News.asp"><span class="glyphicon glyphicon-list-alt font13"></span> 新闻公告</a></li>
	  
     </ul>
    </li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0#" class="dropdown-toggle" data-toggle="dropdown">标准数据<b class="caret"></b></a>
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
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0#" class="dropdown-toggle" data-toggle="dropdown">智力贡献<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1"><span class="glyphicon glyphicon-record font13"></span> 期刊文章</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=2"><span class="glyphicon glyphicon-record font13"></span> 会议论文</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=3"><span class="glyphicon glyphicon-record font13"></span> 会议演讲</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=4"><span class="glyphicon glyphicon-record font13"></span> 专著</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=5"><span class="glyphicon glyphicon-record font13"></span> 教材</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=6"><span class="glyphicon glyphicon-record font13"></span> 标准/政策</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=7"><span class="glyphicon glyphicon-record font13"></span> 教学获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=8"><span class="glyphicon glyphicon-record font13"></span> 科研获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=9"><span class="glyphicon glyphicon-record font13"></span> 案例</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=10"><span class="glyphicon glyphicon-record font13"></span> 专利</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=11"><span class="glyphicon glyphicon-record font13"></span> 项目</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=12"><span class="glyphicon glyphicon-record font13"></span> 研究报告</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=13"><span class="glyphicon glyphicon-record font13"></span> 社会任职</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=14"><span class="glyphicon glyphicon-record font13"></span> 期刊任职</a></li>
     </ul>
    </li>
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp">教学贡献</a></li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Qualified.asp">资格认定</a></li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0#" class="dropdown-toggle" data-toggle="dropdown">表格输出<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-1</a></li>
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-1</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table5-1-2-3-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 5-1/5-2/5-3</a></li> 
	  
     </ul>
    </li>
    
    <li><a href="https://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0#" class="dropdown-toggle" data-toggle="dropdown">信息检索<b class="caret"></b></a>
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
        <span class="navbar-brand"><b>${title}</b></span>
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
	  </div>
    </div>
	</div>
</nav>
</div>
<div style="clear:both;"></div>
<div class="navbar-menuwar stuckMenu">
 <div class="container">
 <div class="navhead">
  <span class="pull-left">

<script type="text/javascript">
function showHideDiv(){
	if(getQueryVariable("deid") != false) document.getElementById("addPosition").style.display="";
    if(getQueryVariable("poid") != false) document.getElementById("addDepartment").style.display="";
}
</script>
<script type="text/javascript">
function setDeleteAction(){
	if(getQueryVariable("jobid") != false) document.deleteTeacherForAffiliate.action = "deleteTeacherForAffiliate.do?jobid="+getQueryVariable("jobid");
   	if(getQueryVariable("deid") != false) document.deleteTeacherForAffiliate.action = "deleteTeacherForAffiliate.do?deid="+getQueryVariable("deid");
   	if(getQueryVariable("spid") != false) document.deleteTeacherForAffiliate.action = "deleteTeacherForAffiliate.do?spid="+getQueryVariable("spid");
   	if(getQueryVariable("poid") != false) document.deleteTeacherForAffiliate.action = "deleteTeacherForAffiliate.do?poid="+getQueryVariable("poid");
}
</script>
 
<form name="form1" action="https://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0" method="post">
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
   <a class="btn btn-default mt-3 mb-3 mr-5 font16" href="${backHref}" style="padding:6px"> <span class="glyphicon glyphicon-arrow-left mt-3 mb-3 mr-5 ml-5"></span> </a>
  
   <button type="submit" name="action"  form="deleteTeacherForAffiliate" onclick="return check();" class="btn btn-danger mt-3 mb-3 mr-5 font16"><span class="glyphicon glyphicon-trash"></span> 删除</button>
   <a class="btn btn-success mt-3 mb-3 font16" data-toggle="modal" data-target="#Adduser" onclick="showHideDiv()"><span class="glyphicon glyphicon-plus"></span> 添加</a>
   
   </span>
   <div style="clear:both;"></div>
  </div>
  </div>
</div>
<div class="container" style="min-height:400px;">
 <div class="mt-10">
   <form id="deleteTeacherForAffiliate" name="deleteTeacherForAffiliate" action="" method="post" onsubmit="return setDeleteAction();">
    <table class="table">
     <thead>
      <tr class="active">
       <th class="co-w35">sel.</th>
	   <th class="co-w120">姓名(Name)</th>
	   <th class="co-w60 text-center">性别</th>
	   <th class="co-w100">职称</th>
	   <th class="co-w230 co-hide-750">部门/职务</th>
	   <th class="co-w150 co-hide-550">专业方向</th>
	   <th class="co-w230 co-hide-980">邮件地址</th>
	   <th class="co-hide-1200">备注</th>
	   
       <th class="co-w50 text-center">管理</th>
	   
      </tr>
     </thead>
     <tbody>
     
     <c:forEach items="${ps.list}" var="L">
      <tr class="teacherList" id="${L.teid}" onmouseover="this.bgColor=&#39;f9f9f9&#39;;this.style.cursor=&#39;hand&#39;" onmouseout="this.bgColor=&#39;ffffff&#39;" data-toggle="tooltip" data-placement="top" title="" data-original-title="第1行">
	   <td class="co-w35"><input id="delid" name="delid" type="checkbox" class="bigbox" value="${L.teid}"></td>
       <td class="co-w120">
	    <div class="gallery pull-left mr-5">
		 <div data-toggle="tooltip" data-placement="top" title="" data-original-title="点击可查看照片">
		  
		  <a href="../../resources/admin/login/images/2016041979392689.gif"><img src="../../resources/admin/login/images/2016041979392689.gif" width="28" height="40" style="padding-top:1px;padding-bottom:1px;"></a>
		  
		 </div>
		</div>
		<div class="clear"></div>
		<span>
		
		 <font color="red"><b>${L.chinesename}</b></font>
		<br>
		 <span style="font-size:80%">${L.salarys}</span>
		</span>
	   </td>
	   <td class="co-w60 text-center">男</td>
	   <td id="${L.job}" class="teacherJob">${L.job}</td>
	   <td id="${L.department}" class="teacherDepartment">${L.department}<br></td>
	   <td id="${L.specialty}" class="teacherSpecialty">${L.specialty}</td>
	   <td id="${L.position}" style="display: none;" class="teacherPosition">${L.position}</td>
	   <td class="co-w230 co-hide-980" style="word-wrap:break-word;word-break:break-all;white-space: normal">admin@ustc.edu.cn</td>
	   <td class="co-hide-1200"></td>
	   
	   <td class="co-w50 text-center"><a class="btn btn-default btn-bin" onclick="TestBlack(&#39;set-${L.uid}1&#39;);"><span class="glyphicon glyphicon-cog" title="点击展开进行查看和管理"></span></a></td>
	   
	  </tr>
	  
	  <tr id="set-${L.uid}" style="display:none;">
       <td colspan="20" style="padding:0">
	    <span class="pull-right">
		 <a class="btn btn-default mt-10 mb-10" name="ManageCoobjects.asp?jobid=1&amp;userid=${L.uid}" onclick="getvalue(this.name)">权限管理</a>
        </span></td>
      </tr>
     </c:forEach>
     
	 </tbody>
	</table>
	 <input name="aurl" type="hidden" value="http://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0">
	 <input name="JtID" type="hidden" value="3">
	</form>
 </div>
</div>

<script type="text/javascript">
	function isEmpty (val) {
	  // null or undefined
	  if (val == null) return true;

	  if (typeof val === 'boolean') return false;

	  if (typeof val === 'number') return !val;

	  if (val instanceof Error) return val.message === '';

	  switch (Object.prototype.toString.call(val)) {
	    // String or Array
	    case '[object String]':
	    case '[object Array]':
	      return !val.length;

	    // Map or Set or File
	    case '[object File]':
	    case '[object Map]':
	    case '[object Set]': {
	      return !val.size;
	    }
	    // Plain Object
	    case '[object Object]': {
	      return !Object.keys(val).length;
	    }
	  }
	  return false;
	}
</script>
<script type="text/javascript">
function setAddAction(){
	if(getQueryVariable("jobid") != false) document.addTeacherForAffiliate.action = "addTeacherForAffiliate.do?jobid="+getQueryVariable("jobid");
   	if(getQueryVariable("deid") != false) document.addTeacherForAffiliate.action = "addTeacherForAffiliate.do?deid="+getQueryVariable("deid");
   	if(getQueryVariable("spid") != false) document.addTeacherForAffiliate.action = "addTeacherForAffiliate.do?spid="+getQueryVariable("spid");
   	if(getQueryVariable("poid") != false) document.addTeacherForAffiliate.action = "addTeacherForAffiliate.do?poid="+getQueryVariable("poid");
}
</script>
<script type="text/javascript">
function checkAddForm(){
	if(isEmpty($("#teid").val())) {
		alert("对不起，您此次的操作未成功，数据库中没有此人员！！");
		return false;
	}
	
	if(!isEmpty($(".teacherList"))){
		var flag = false;
		$(".teacherList").each(function(){
			if($("#teid").val() == $(this).attr('id')){
				flag = true;
				alert("对不起，您此次的操作未成功，数据库中已经有重复的记录！！");
				return false;//js中each里的return false为break，return true为continue
			}
		});
		if(flag == true) return false;
	}
	
	//若添加的人员已有数据库不为空，则返回"对不起，您此次的操作未成功，该人员职称已经有记录！！"未实现
	
	return true;
}
</script>
<div class="modal fade" id="Adduser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
  <div class="modal-content">
   <form id="addTeacherForAffiliate" action="" method="post" name="addTeacherForAffiliate" onsubmit="return setAddAction();">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h4 class="modal-title" id="myModalLabel">添加关系人员</h4>
   </div>
   <div class="modal-body">
	<div class="control-group">
    <label for="name">选择人员</label>
     <div class="">
      <script type="text/javascript">
       $(function() {
           $("#teacher").autocomplete({
        	   source:function(request, response){
        		   $.ajax({
        			   type:"post",
        			   url:"AutoCompleteTeacher",//后端接受的路径
        			   async:false,//同步的方式
        			   dataType:"json",
        			   data:{
        				   keyWord: request.term,//传搜索框输入的数据
        			   },
        			   success:function(data){
        				   response($.map(data,function(item){//$.map()遍历
        					   return {  //lable为下拉列表显示数据源。value为选中放入到文本框的值，这种方式可以自定义显示
        						   lable: item.chinesename,  //固有属性
                                   value: item.chinesename, //选中后填充到下拉框的值
                                   teid: item.teid,  //自定义属性
        					   }
        				   }));
        			   }
        		   });
        	   },
        	   minLength: 1,//表明在搜索框输入几个字符才触发操作，后台springmvc才执行相应操作返回数据列表
               select: function( event, ui ) { //移动键盘上下键，自动将下拉列表的数据放入到文本框，不过不写这个配置也是可以的，默认就行
            	   $("#teacher").val( ui.item.value );
            	   $("#teid").val( ui.item.teid );
            	   $("#sayTE").html( "(选择正确，已通过验证)");
            	   event.preventDefault();
               }
           });
       });
      </script>
	  <input id="teacher" name="chinesename" class="form-control ui-autocomplete-input" placeholder="输入姓名关键字智能匹配" type="text" required="">
      <input id="teid" type="hidden" name="teid" value="">
	 </div>
	 <p class="help-block help-info pull-right"><span style="color:#339900;" id="sayTE"><font style="font-style:normal;font-size:13px;" color="red">*</font> <font color="#666">请输入关键字并选择人员</font></span></p>
   </div>
   
   <div id="addDepartment" class="control-group mt-10" style="display: none;">
    <label for="name">选择部门</label>
     <div class="">
			 <select name="position_deid" class="form-control">
			 <option value="0">请选择部门</option>
			 <c:forEach items="${deList}" var="DL">
			  <option value="${DL.deid}">${DL.chineseName}</option>
			 </c:forEach>
			 </select>			
	 </div>
	 <p class="help-block help-info pull-right"><span style="color:#339900;" id="sayTE"><font style="font-style:normal;font-size:13px;" color="red">*</font> <font color="#666">请选择部门</font></span></p>
   </div>
   
   <div id="addPosition" class="control-group mt-10" style="display: none;">
    <label for="name">选择职务</label>
     <div class="">
			 <select name="department_poid" class="form-control">
			 <option value="0">请选择职务</option>
			 <c:forEach items="${poList}" var="PL">
	   		  <option value="${PL.poid}">${PL.chineseName}</option>
	  		 </c:forEach>
			 </select>
	 </div>
	 <p class="help-block help-info pull-right"><span style="color:#339900;" id="sayTE"><font style="font-style:normal;font-size:13px;" color="red">*</font> <font color="#666">请选择职务</font></span></p>
   </div>
   
   <div class="mt-20"></div>
   </div>
   <div class="modal-footer">
	<input name="IDs" type="hidden" value="3">
    <input name="aurl" type="hidden" value="http://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0">
    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
    <input name="addTeacherButton" type="submit" class="btn btn-primary" value="完成添加" onclick="return checkAddForm();">
   </div>
  </form>
  </div>
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
		<li><a href="managelink?page=${ps.pageNum-1}" aria-label="Previous"><span aria-hidden='true'>&laquo;</span></a></li>
	</c:if>
	<c:forEach begin="1" end="${ps.pages}" var="pageNumber">
		<c:if test="${pageNumber == ps.pageNum}">
			<li class="active"><a href="managelink?page=${pageNumber}">${pageNumber}</a></li>
		</c:if>
		<c:if test="${pageNumber != ps.pageNum}">
			<li><a href="managelink?page=${pageNumber}">${pageNumber}</a></li>
		</c:if>
	</c:forEach>
	<c:if test="${ps.pageNum == ps.lastPage}">
		<li class="disabled"><span aria-hidden='true'>&raquo;</span></li>
	</c:if>
	<c:if test="${ps.pageNum != ps.lastPage}">
		<li><a href="managelink?page=${ps.pageNum+1}" aria-label="Next"><span aria-hidden='true'>&raquo;</span></a></li>
	</c:if>
	</c:if>
</ul>
</nav>

<section>
 <div class="aacsb_footer">
	<p class="info">系统仅支持Chrome、Firefox、Edge等浏览器<br>Copyright © 2013-2021，&nbsp;<a href="https://aacsb.ustc.edu.cn/tjut/Copyright.asp">信息系统版权说明和技术支持</a>&nbsp; v3.0.200619, 页面执行时间：27.34毫秒
 </p></div>
</section>

<iframe name="Detail" id="Detail" frameborder="0" hspace="0" vspace="0" src="../../resources/admin/login/html/Record.html" style="display:none"></iframe>
<script language="javascript">document.getElementById('wait').style.display='none';</script>


<script src="../../resources/admin/login/js/bootstrap.min.js"></script> 
<script src="../../resources/admin/login/js/zoom.min.js"></script><div id="zoom" style="display: none;"><a class="close"></a><a href="https://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0#previous" class="previous1"></a><a href="https://aacsb.ustc.edu.cn/tjut/ManageLink.asp?JtID=3&amp;h=0#next" class="next1"></a><div class="ph-content loading"></div></div>
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
<ul id="ui-id-1" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul><div role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></div></body></html>