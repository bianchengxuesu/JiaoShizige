<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0046)https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>专利管理</title>
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap.min.css">
<link rel="stylesheet" href="../../resources/admin/login/css/font-awesome.min.css"> 
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap-theme.css" media="screen"> 
<link rel="stylesheet" href="../../resources/admin/login/css/aacsb.css" type="text/css">
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
}
function showID(ID,obj){
$("#rid1").val(ID);
var r1=$(obj).parent().find('p')[0];
var msgintro=$(r1).html();
$("#msgintro").html(msgintro);
}
</script>
<script src="../../resources/admin/login/js/jquery-2.1.4.min.js"></script>

		<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.js"></script>
		<script src="../../resources/admin/login/js/jquery.form.js"></script>
 <!--    <script type="text/javascript" src="../js/jquery.form.js"></script>      -->
    <script type="text/javascript">  
   
           /*  ajax 方式上传文件操作 */  
             $(document).ready(function(){ 
                $("#btn").click(function(){ if(checkData()){  
                        $('#form1').ajaxSubmit({    
                            url:'uploadExcel/ajax',  
                            dataType: 'text',  
                            success: resutlMsg,  
                            error: errorMsg  
                        });   
                        function resutlMsg(msg){  
                            alert(msg);     
                            $("#upfile").val("");  
                        }  
                        function errorMsg(){   
                            alert("导入excel出错！");      
                        }  
                    }   
                });  
             });  
               
             //JS校验form表单信息  
             function checkData(){  
                var fileDir = $("#upfile").val();  
                var suffix = fileDir.substr(fileDir.lastIndexOf("."));  
                if("" == fileDir){  
                    alert("请选择需要导入的Excel文件！");  
                    return false;  
                }  
                if(".xls" != suffix && ".xlsx" != suffix ){  
                    alert("请选择Excel格式的文件导入！");  
                    return false;  
                }  
                return true;  
             }   
    </script>   

</head>

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
    <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1#" class="dropdown-toggle" data-toggle="dropdown">我的信息<b class="caret"></b></a>
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
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1#" class="dropdown-toggle" data-toggle="dropdown">系统管理<b class="caret"></b></a>
     <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/DateSetting.asp"><span class="glyphicon  glyphicon-cog font13"></span> 系统设置</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/UserRole.asp"><span class="glyphicon glyphicon-user font13"></span> 系统角色</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp"><span class="glyphicon glyphicon-list font13"></span> 消息管理</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/LoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录日志</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/aacsb_News.asp"><span class="glyphicon glyphicon-list-alt font13"></span> 新闻公告</a></li>
	  
     </ul>
    </li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1#" class="dropdown-toggle" data-toggle="dropdown">标准数据<b class="caret"></b></a>
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
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1#" class="dropdown-toggle" data-toggle="dropdown">智力贡献<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1"><span class="glyphicon glyphicon-record font13"></span> 期刊文章</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=2"><span class="glyphicon glyphicon-record font13"></span> 会议论文</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=3"><span class="glyphicon glyphicon-record font13"></span> 会议演讲</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=4"><span class="glyphicon glyphicon-record font13"></span> 专著</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=5"><span class="glyphicon glyphicon-record font13"></span> 教材</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=6"><span class="glyphicon glyphicon-record font13"></span> 标准/政策</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=7"><span class="glyphicon glyphicon-record font13"></span> 教学获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=8"><span class="glyphicon glyphicon-record font13"></span> 科研获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=9"><span class="glyphicon glyphicon-record font13"></span> 案例</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=10"><span class="glyphicon glyphicon-record font13"></span> 专利</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=11"><span class="glyphicon glyphicon-record font13"></span> 项目</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=12"><span class="glyphicon glyphicon-record font13"></span> 研究报告</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=13"><span class="glyphicon glyphicon-record font13"></span> 社会任职</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=14"><span class="glyphicon glyphicon-record font13"></span> 期刊任职</a></li>
     </ul>
    </li>
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp">教学贡献</a></li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Qualified.asp">资格认定</a></li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1#" class="dropdown-toggle" data-toggle="dropdown">表格输出<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-1</a></li>
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-1</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table5-1-2-3-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 5-1/5-2/5-3</a></li> 
	  
     </ul>
    </li>
    
    <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1#" class="dropdown-toggle" data-toggle="dropdown">信息检索<b class="caret"></b></a>
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
        <span class="navbar-brand"><b>专利添加</b></span>
    </div>
    <div>
	 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	    
<ul class="nav navbar-nav navbar-left">
 <li class="dropdown">
  <a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1#" class="dropdown-toggle font16" data-toggle="dropdown">栏目导航<b class="caret"></b>
  </a>
  
 <ul class="dropdown-menu dropdown-menu-col">
   <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1">期刊文章</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=2">会议论文</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=3">会议演讲</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=4">专著</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=5">教材</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=6">标准/政策</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=7">教学获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=8">科研获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=9">案例</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=10">专利</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=11">项目</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=12">研究报告</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=13">社会任职</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=14">期刊任职</a></li>
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
        <ul class="nav navbar-nav navbar-right">
		 
		 <li class="font16"><a href="https://aacsb.ustc.edu.cn/tjut/DevoteLog.asp?m=1">操作日志</a></li>
	     
		 <li class="active font15"><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;h=">全部数据</a></li>
		 <li class=" font15"><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;isme=ok&amp;h=">只看自己</a></li>
		 
        </ul>
	  </div>
    </div>
   </div>
</nav>
</div>
<div class="container">
 <div class="text-center mb-5">
  <span>
   <span class="">
   <a class="btn btn-default font16 mr-5 mb-5" disabled="" onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;h=">全部</a>
     
   <span class="btn-group mr-5">
   
   <button type="button" class="btn btn-default mb-5 dropdown-toggle" data-toggle="dropdown">按国内外<span class="caret"></span></button>
   <ul class="dropdown-menu" role="menu">
    <li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;h=">全部</a></li>
    <li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;wd=cn&amp;h=">国内期刊</a></li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;wd=en&amp;h=">国外期刊</a></li>
   </ul>
   </span>
   
   <span class="btn-group mr-5">
   
   <button type="button" class="btn btn-default mb-5 dropdown-toggle" data-toggle="dropdown">数据筛选<span class="caret"></span></button>
   <ul class="dropdown-menu" role="menu">
    
	<li class="dropdown-header">按审查机制</li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;h=">全部</a></li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;Reviewed=1&amp;h=">同行评审</a></li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;Reviewed=2&amp;h=">编辑评审</a></li>
	
	<li class="divider"></li>
	<li class="dropdown-header">按教师类型</li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;h=">全部</a></li>
    <li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;Schoolsd=0&amp;h=">在职</a></li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;Schoolsd=1&amp;h=">兼职</a></li>
    <li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;Schoolsd=8&amp;h=">返聘</a></li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;Schoolsd=7&amp;h=">已退休</a></li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;Schoolsd=4&amp;h=">已离职</a></li>
	
	<li class="divider"></li>
	<li class="dropdown-header">按发表方式</li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;h=">全部</a></li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;online=yes&amp;h=">按在线发表</a></li>
    
	<li class="divider"></li>
	<li class="dropdown-header">按领域类别</li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;h=">全部</a></li>
    <li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;Ptypes=1&amp;h=">基础</a></li>
    <li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;Ptypes=2&amp;h=">应用</a></li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;Ptypes=3&amp;h=">教学</a></li>
   </ul>
   </span>
   
   <span class="btn-group mr-5">
   
   <button type="button" class="btn btn-default mb-5 dropdown-toggle" data-toggle="dropdown">排序方式<span class="caret"></span></button>
   <ul class="dropdown-menu" role="menu">
    <li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;h=">全部</a></li>
    <li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;sort=dename&amp;h=">按名称</a></li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;sort=dedate&amp;h=">按发表日期</a></li>
    <li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;sort=id&amp;h=">按最新添加</a></li>
	<li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;sort=updates&amp;h=">按最后编辑</a></li>
    
    <li><a onclick="getvalue(this.name)" name="Devotes.asp?m=1&amp;sort=level1&amp;h=">按院定级别</a></li>
	
   </ul>
  </span>
  </span>
 </span></div>
</div>
<div style="clear:both;"></div>
<div class="navbar-menuwar stuckMenu" style="position: relative;">
 <div class="container">
 <div class="navhead">
  <span class="pull-left">
  
<form name="form1" action="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1" method="post">
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
   
   <span class="btn-group">
    <button type="button" class="btn btn-default mt-3 mb-3 mr-5 dropdown-toggle" data-toggle="dropdown">审核<span class="caret"></span></button>
     <ul class="dropdown-menu" role="menu">
      <li><a onclick="if(confirm(&#39;一键审核或未审为危险操作，确定吗？！&#39;))window.location=&#39;Devotes.asp?m=1&amp;one_checked=yes&amp;check=1&#39;">一键审核</a></li>
	  <li><a onclick="if(confirm(&#39;一键审核或未审为危险操作，确定吗？！&#39;))window.location=&#39;Devotes.asp?m=1&amp;one_checked=yes&amp;check=0&#39;">一键未审</a></li>
     </ul>
   </span>
   
<!-- 	<a class="btn btn-default mt-3 mb-3 mr-5" href="tianjia" onclick="if(confirm(&#39;导入\导出Excel数据系统需要花大量的时间来处理，请耐心等待勿刷新或关闭页面，以免造成浏览器崩溃！&#39;))window.location=&#39;DevoteExcels.asp?t=Devotes&amp;m=1&#39;"><span class="glyphicon glyphicon-export"></span> 导入</a>
 -->
   <a class="btn btn-default mt-3 mb-3 mr-5" href="/JiaoShizige/zhiligongxian/zhuanzhujiaocai/download.do" onclick="if(confirm(&#39;导入\导出Excel数据系统需要花大量的时间来处理，请耐心等待勿刷新或关闭页面，以免造成浏览器崩溃！&#39;))window.location=&#39;DevoteExcels.asp?t=Devotes&amp;m=1&#39;">导入模板下载</a>
    
    <button type="submit" name="action" value="del" form="LeadAACSB" onclick="return check();" class="btn btn-danger mt-3 mb-3 mr-5"><span class="glyphicon glyphicon-trash"></span> 删除</button>
	<a class="btn btn-success mt-3 mb-3" href="tianjia" name="DevotesAdd.asp?m=1&amp;hs="><span class="glyphicon glyphicon-plus"></span> 添加</a>
   
   </span>
   <div style="clear:both;"></div>
  </div>
  </div>
</div>
<div class="container" style="margin-top: 0px;">
 <div class="mt-10" style="min-height:280px;">
 
	
		 <form method="POST"  enctype="multipart/form-data" id="form1" action="/JiaoShizige/zhiligongxian/zhuanli/form.do">  
       
             <label>上传文件: </label>
             <input id="upfile" type="file" name="upfile"><br> <br> 
       
            <input type="submit" value="表单提交" onclick="return checkData()">
            <input type="button" value="ajax提交" id="btn" name="btn" >  

    	</form>       
	


	<div style="clear:both;"></div>
 </div>
</div>

<div class="container mt-20">
 <div class="alert alert-warning alert-dismissable" style="margin-bottom:0;">
   <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
		×
	</button>
  <div>
  提示：智力贡献数据在审核的状态下且在认定的时间范围内才能生效，由科研秘书审核认定；删除信息只能在“未审核”的状态下进行；点击栏目标题中带有↑↓的名称可进行排序；<font color="red">名称为红色字体说明没有设置院内作者信息</font>，<font color="green">名称为绿色字体说明没有填写英文名称</font>, 未设置作者将不计入个人智力贡献统计范围；
  </div>
 </div>
</div>
<div class="modal fade" id="sendmsg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
  <div class="modal-content">
   <form method="post" action="https://aacsb.ustc.edu.cn/tjut/DevoteMessageSend.asp" name="LeadBBSFm">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h4 class="modal-title" id="myModalLabel">未审信息反馈</h4>
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
     <label for="name">接收对象</label>
     <div class="">
	    <select class="form-control" name="Msgreo">
         <option value="1" selected="">该信息所有作者</option>
         <option value="2">添加人</option>
       </select>
	 </div>
	 <p class="help-block help-info"></p>
    </div>
	<div class="control-group">
     <label for="name">消息内容</label>
     <div class="">
	  <textarea id="editor_id" name="Msgintro" class="form-control" style="width:100%;height:150px;"></textarea>
	 </div>
	 <p class="help-block help-info"><font style="font-style:normal;font-size:13px;" color="red">*</font> 请描述详细事由</p>
    </div>
   </div>
   <div class="modal-footer">
    <input type="hidden" name="ID" value="" id="rid">
	<input type="hidden" name="Tables" value="aacsb_Devotes">
    <input type="hidden" name="Demenu" value="1">
	<input type="hidden" name="aurl" value="http://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1">
    <input name="sendmsg" type="submit" class="btn btn-primary" value="发送消息">
	<button type="button" class="btn btn-default ml-5" data-dismiss="modal">关闭</button>
   </div>
   </form>
  </div>
 </div>
</div>

<div class="modal fade" id="showmsg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
  <div class="modal-content">
   <form method="post" action="https://aacsb.ustc.edu.cn/tjut/DevoteMessageSend.asp" name="LeadBBSFm">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h4 class="modal-title" id="myModalLabel">未审信息反馈确认</h4>
   </div>
   <div class="modal-body">
	<div class="">
     <div class="">
	  <span id="msgintro"></span>
	 </div>
    </div>
   </div>
   <div class="modal-footer">
    <input type="hidden" name="ID" value="" id="rid1">
	<input type="hidden" name="Tables" value="aacsb_Devotes">
	<input type="hidden" name="aurl" value="http://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1">
    <input name="confirm" type="submit" class="btn btn-primary" value="确认消息">
	<button type="button" class="btn btn-default ml-5" data-dismiss="modal">关闭</button>
   </div>
   </form>
  </div>
 </div>
</div><section>
 <div class="aacsb_footer">
	<p class="info">系统仅支持Chrome、Firefox、Edge等浏览器<br>Copyright © 2013-2021，&nbsp;<a href="https://aacsb.ustc.edu.cn/tjut/Copyright.asp">信息系统版权说明和技术支持</a>&nbsp; v3.0.200619, 页面执行时间：93.75毫秒
 </p></div>
</section>

<iframe name="Detail" id="Detail" frameborder="0" hspace="0" vspace="0" src="../../resources/admin/login/html/Record.html" style="display:none"></iframe>
<script language="javascript">document.getElementById('wait').style.display='none';</script>


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





