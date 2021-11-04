<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>${title}</title>
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap.min.css">
<link rel="stylesheet" href="../../resources/admin/login/css/font-awesome.min.css"> 
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap-theme.css" media="screen"> 
<link rel="stylesheet" href="../../resources/admin/login/css/aacsb.css" type="text/css">
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
<script type="text/javascript">
function check(){
	if(confirm('确定要删除选中的记录吗?')){
		return true;
	}
	return false;
}
</script>
<script src="../../resources/admin/login/js/jquery-2.1.4.min.js"></script>
<input type="hidden" id="_w_tusk"><script type="text/javascript" src="chrome-extension://odphnbhiddhdpoccbialllejaajemdio/scripts/inspector.js"></script></head>
<body>
<!--<script type="txet/javascript">var targetProtocol = 'https:';if (window.location.protocol != targetProtocol){window.location.href = targetProtocol +  window.location.href.substring(window.location.protocol.length);}</script><div style="position:absolute; pointer-events:none; top:50%; height:240px;border:0px solid white; margin:0 auto; margin-top:-50px; width:200px; left:50%; margin-left:-50px;"><img id="wait" src="../../resources/admin/login/images/Run.gif" style="display: none;"><!--////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--></div>
<div class="navbar navbar-inverse" id="home">
 <div class="tophead"></div>
 <div class="container ">
  <div class="toplink"><strong>管理员</strong>，
  <script type="txet/javascript"> 
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
    <li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherLink.asp?run=ok&amp;UserID=1&amp;page=1&amp;h=215.11111450195312#" class="dropdown-toggle" data-toggle="dropdown">我的信息<b class="caret"></b></a>
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
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherLink.asp?run=ok&amp;UserID=1&amp;page=1&amp;h=215.11111450195312#" class="dropdown-toggle" data-toggle="dropdown">系统管理<b class="caret"></b></a>
     <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/DateSetting.asp"><span class="glyphicon  glyphicon-cog font13"></span> 系统设置</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/UserRole.asp"><span class="glyphicon glyphicon-user font13"></span> 系统角色</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp"><span class="glyphicon glyphicon-list font13"></span> 消息管理</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/LoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录日志</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/aacsb_News.asp"><span class="glyphicon glyphicon-list-alt font13"></span> 新闻公告</a></li>
	  
     </ul>
    </li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherLink.asp?run=ok&amp;UserID=1&amp;page=1&amp;h=215.11111450195312#" class="dropdown-toggle" data-toggle="dropdown">标准数据<b class="caret"></b></a>
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
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherLink.asp?run=ok&amp;UserID=1&amp;page=1&amp;h=215.11111450195312#" class="dropdown-toggle" data-toggle="dropdown">智力贡献<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1"><span class="glyphicon glyphicon-record font13"></span> 期刊文章</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=2"><span class="glyphicon glyphicon-record font13"></span> 会议论文</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=3"><span class="glyphicon glyphicon-record font13"></span> 会议演讲</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=4"><span class="glyphicon glyphicon-record font13"></span> 专著</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=5"><span class="glyphicon glyphicon-record font13"></span> 教材</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=6"><span class="glyphicon glyphicon-record font13"></span> 标准/政策</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=7"><span class="glyphicon glyphicon-record font13"></span> 教学获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=8"><span class="glyphicon glyphicon-record font13"></span> 科研获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=9"><span class="glyphicon glyphicon-record font13"></span> 案例</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=10"><span class="glyphicon glyphicon-record font13"></span> 专利</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=11"><span class="glyphicon glyphicon-record font13"></span> 项目</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=12"><span class="glyphicon glyphicon-record font13"></span> 研究报告</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=13"><span class="glyphicon glyphicon-record font13"></span> 社会任职</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=14"><span class="glyphicon glyphicon-record font13"></span> 期刊任职</a></li>
     </ul>
    </li>
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp">教学贡献</a></li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Qualified.asp">资格认定</a></li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherLink.asp?run=ok&amp;UserID=1&amp;page=1&amp;h=215.11111450195312#" class="dropdown-toggle" data-toggle="dropdown">表格输出<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-1</a></li>
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-1</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table5-1-2-3-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 5-1/5-2/5-3</a></li> 
	  
     </ul>
    </li>
    
    <li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherLink.asp?run=ok&amp;UserID=1&amp;page=1&amp;h=215.11111450195312#" class="dropdown-toggle" data-toggle="dropdown">信息检索<b class="caret"></b></a>
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
<div class="navbar-menuwar stuckMenu">
 <div class="container">
 <div class="navhead">
  <span class="pull-left">
   <div class="section-title">${title}</div>
  </span>
  <span class="pull-right">
   <a class="btn btn-default mt-3 mb-3" href="teacher"><span class="glyphicon glyphicon-arrow-left"></span> 返回</a>
   </span>
   <div style="clear:both;"></div>
  </div>
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
window.onload = function(){
	if(!isEmpty("${job}")){
		document.getElementById("job").style.display = "";
		document.getElementById("addJobButton").disabled = true;
	}
	if(!isEmpty("${department}")){
		document.getElementById("department").style.display = "";
	}
	if(!isEmpty("${specialty}")){
		document.getElementById("specialty").style.display = "";
		document.getElementById("addSpecialtyButton").disabled = true;
	}
	if(!isEmpty("${position}")){
		document.getElementById("position").style.display = "";
	}
	if(!isEmpty("${department}") && !isEmpty("${position}")){
		document.getElementById("addDepAndPosButton").disabled = true;
	}
}
</script>
<script type="text/javascript">
function setAddJobAction(){
	document.addJobForTeacher.action = "addJobForTeacher.do?teid="+getQueryVariable("teid");
}
function setAddDepAndPosAction(){
	document.addDepAndPosForTeacher.action = "addDepAndPosForTeacher.do?teid="+getQueryVariable("teid");
}
function setAddSpecialtyAction(){
	document.addSpecialtyForTeacher.action = "addSpecialtyForTeacher.do?teid="+getQueryVariable("teid");
}
function setDeleteJobAction(){
	document.deleteJobForTeacher.action = "deleteJobForTeacher.do?teid="+getQueryVariable("teid");
	check();
}
function setDeleteDepartmentAction(){
	document.deleteDepartmentForTeacher.action = "deleteDepartmentForTeacher.do?teid="+getQueryVariable("teid");
	check();
}
function setDeleteSpecialtyAction(){
	document.deleteSpecialtyForTeacher.action = "deleteSpecialtyForTeacher.do?teid="+getQueryVariable("teid");
	check();
}
function setDeletePositionAction(){
	document.deletePositionForTeacher.action = "deletePositionForTeacher.do?teid="+getQueryVariable("teid");
	check();
}
</script>
<div class="container">
 <div class="row">
  <div class="col-md-9 mt-30">
   <div style="clear:both;"></div>
   
   <div style="border-bottom:2px #e1e1e1 solid;" id="JtID">
   <form id="addJobForTeacher" name="addJobForTeacher" action="" method="post" onsubmit="return setAddJobAction();">
    <div class="pull-left mb-5">
     <select name="jobid" class="form-control" style="width:230px;">
     <option value="">请选择职称</option>
     <c:forEach items="${jobList}" var="JL">
      <option value="${JL.jobid}">${JL.chineseName}</option>
     </c:forEach>
     </select> 
    </div>
    <div class="pull-left pl-10">
     
     <button id="addJobButton" name="addJobButton" type="submit" class="btn btn-default">添加职称</button>
     
    </div>
	<div style="clear:both;"></div>
   </form>
   </div>
   <div style="min-height:80px;">
    <table class="table table-hover">
     <tbody>
      <tr id="job" style="display: none;">
       <td class="font16">${job}</td>
       <td style="width:50px;">
	   <form id="deleteJobForTeacher" name="deleteJobForTeacher" action="" method="post" onsubmit="return setDeleteJobAction();">
	    <input name="delid" type="hidden" value="${jobid}">
	    
        <input type="Submit" class="btn btn-danger btn-small" value=" 删除 ">
        
	   </form>
	   </td>
      </tr>
	  
     </tbody>
    </table>
	
   </div>
   
   <div style="border-bottom:2px #e1e1e1 solid;" id="DepID">
    <form id="addDepAndPosForTeacher" name="addDepAndPosForTeacher" method="post" action="" onsubmit="return setAddDepAndPosAction();">
    <div class="pull-left mb-5">
	 <span class="pull-left">
      <select name="deid" class="form-control" style="width:117px;">
      <option value="">请选择部门</option>
      <c:forEach items="${deList}" var="DL">
       <option value="${DL.deid}">${DL.chineseName}</option>
      </c:forEach>
      </select>
	 </span>
	 <span class="pull-left" style="margin-left:3px;">
	  <select name="poid" class="form-control" style="padding-left:3px;padding-right:3px;width:110px;">
	  <option value="">请选择职务</option>
	  <c:forEach items="${poList}" var="PL">
	   <option value="${PL.poid}">${PL.chineseName}</option>
	  </c:forEach>
	  </select>
	 </span>
    </div>
    <div class="pull-left pl-10">
     
     <button id="addDepAndPosButton" name="addDepAndPosButton" type="submit" class="btn btn-default">添加部门</button>
     
    </div>
	<div style="clear:both;"></div>
   </form>
   </div>
   <div style="min-height:80px;">
    <table class="table table-hover">
     <tbody>
      
      <tr id="department" style="display: none;">
       <td class="font16">${department}</td>
       <td style="width:50px;">
	    <form id="deleteDepartmentForTeacher" name="deleteDepartmentForTeacher" action="" method="post" onsubmit="return setDeleteDepartmentAction();">
	    <input name="delid" type="hidden" value="${deid}">
		
        <input type="Submit" class="btn btn-danger btn-small" value=" 删除 ">
        
		</form>
	   </td>
      </tr>
     </tbody>
    </table>
      
    <table class="table table-hover">
     <tbody>
	  <tr id="position" style="display: none;">
       <td class="font16">${position}</td>
       <td style="width:50px;">
	    <form id="deletePositionForTeacher" name="deletePositionForTeacher" action="" method="post" onsubmit="return setDeletePositionAction();">
	    <input name="delid" type="hidden" value="${poid}">
		
        <input type="Submit" class="btn btn-danger btn-small" value=" 删除 ">
        
		</form>
	   </td>
      </tr>
     </tbody>
    </table>
   </div>
   
   <div style="border-bottom:2px #e1e1e1 solid;" id="SpID">
   <form id="addSpecialtyForTeacher" name="addSpecialtyForTeacher" method="post" action="" onsubmit="return setAddSpecialtyAction();">
    <div class="pull-left mb-5">
     <select name="spid" class="form-control" style="width:230px;">
     <option value="">请选择专业</option>
     <c:forEach items="${spList}" var="SL">
      <option value="${SL.spid}">${SL.chineseName}</option>
     </c:forEach>
     </select> 
    </div>
    <div class="pull-left pl-10">
     
     <button id="addSpecialtyButton" name="addSpecialtyButton" type="submit" class="btn btn-default">添加专业</button>
     
    </div>
	<div style="clear:both;"></div>
   </form>
   </div>
   <div style="min-height:80px;">
    <table class="table table-hover">
     <tbody>
      
      <tr id="specialty" style="display: none;">
       <td class="font16">${specialty}</td>
       <td style="width:50px;">
	    <form id="deleteSpecialtyForTeacher" name="deleteSpecialtyForTeacher" action="" method="post" onsubmit="return setDeleteSpecialtyAction();">
	    <input name="delid" type="hidden" value="${spid}">
        
        <input type="Submit" class="btn btn-danger btn-small" value=" 删除 ">
        
		</form>
	   </td>
      </tr>
	  
     </tbody>
    </table>    
   </div>
   
   <div style="min-height:80px;">
    <table class="table table-hover">
     <tbody>
      
     </tbody>
    </table>    
   </div>
   
   
  </div>
  <div class="col-md-3 aacsb_home">
   
<div class="login">
    <div class="hc"></div>
	<link rel="stylesheet" href="../../resources/admin/login/css/tree_menu.css">
     <div class="subNavBox">
      <div class="subNavHead_Right"><font style="color:#ad8307;">管理员</font> 信息</div>
	  <div class="row">
	   <div class="subNavInfo">
	   <div class="col-xs-5 al" id="qFile1result">
	    
          <img src="../../resources/admin/login/images/2016041979392689.gif" align="center">
		
       </div>
       <div class="col-xs-7 ar">
	    <div class="li">
		 <span style="padding-right:3px;"><strong>工号:</strong></span>
         <span style="color:#ff0000">000000</span>
		 </div>
        
        <div class="li"><strong>职称：</strong>教授</div>
		
		<div class="li">
         
        </div>
		<!--
        
		<div class="li">
		<strong>部门：</strong>工商管理系
        </div>
		
		-->
		
        <div class="li"><strong>专业：</strong>运筹</div>
		
		<div class="li">
	     <strong>角色：</strong><br>系统管理员<br>AACSB管理员(B)
        </div>
	   </div>
	   </div>
	  </div>
	  <div class="subNavLine">相关信息导航</div>
	  
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/TeacherEdit.asp?run=ok&amp;UserID=1"><span class="glyphicon glyphicon-user pr-5"></span>基本信息管理</a></div>
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/TeacherAccount.asp?run=ok&amp;UserID=1"><span class="glyphicon glyphicon-floppy-saved pr-5"></span>账号绑定</a></div>
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/TeacherPass.asp?run=ok&amp;UserID=1"><span class="glyphicon glyphicon-edit pr-5"></span>密码修改</a></div>
	  
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/TeacherLink.asp?run=ok&amp;UserID=1"><span class="glyphicon glyphicon-transfer pr-5"></span>关系设置</a></div>
	  
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/Education.asp?run=ok&amp;UserID=1"><span class="glyphicon glyphicon-filter pr-5"></span>教育背景管理</a></div>
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/Work.asp?run=ok&amp;UserID=1"><span class="glyphicon glyphicon glyphicon-saved pr-5"></span>工作经验管理</a></div>
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/VitaeManage.asp?run=ok&amp;m=1&amp;UserID=1"><span class="glyphicon glyphicon-list-alt pr-5"></span>智力贡献简历档</a></div>
	  
	  <div class="subNavPre"><a href="https://aacsb.ustc.edu.cn/tjut/logout.asp"><span class="glyphicon glyphicon-log-out pr-5"></span>退出登录</a></div>
	  
	  <div style="height:8px;"></div>
     </div>
    </div>
  </div>
 </div>
</div>
<section>
 <div class="aacsb_footer">
	<p class="info">系统仅支持Chrome、Firefox、Edge等浏览器<br>Copyright © 2013-2021，&nbsp;<a href="https://aacsb.ustc.edu.cn/tjut/Copyright.asp">信息系统版权说明和技术支持</a>&nbsp; v3.0.200619, 页面执行时间：46.88毫秒
 </p></div>
</section>

<iframe name="Detail" id="Detail" frameborder="0" hspace="0" vspace="0" src="../../resources/admin/login/html/Record.html" style="display:none"></iframe>
<script type="txet/javascript">document.getElementById('wait').style.display='none';</script>


<script src="../../resources/admin/login/js/bootstrap.min.js"></script> 
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
</body></html>