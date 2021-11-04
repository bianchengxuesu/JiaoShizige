<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>添加教师信息</title>
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap.min.css">
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap-select.css">
<link rel="stylesheet" href="../../resources/admin/login/css/font-awesome.min.css"> 
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap-theme.css" media="screen"> 
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrapValidator.css" type="text/css">
<link rel="stylesheet" href="../../resources/admin/login/css/aacsb.css" type="text/css">
<link rel="shortcut icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<link rel="icon" href="https://aacsb.ustc.edu.cn/tjut/favicon.ico" type="image/x-icon">
<script src="../../resources/admin/login/js/jquery-2.1.4.min.js"></script>
<script src="../../resources/admin/login/js/bootstrap-select.js"></script>
<script src="../../resources/admin/login/js/defaults-zh_CN.js"></script>
<script type="text/javascript">
  function dealCard(){
	var code=document.getElementById("IDCard").value;
	var len=code.length;
    if (len>17)
	 $("#datetime").val(code.substr(6,4)+'/'+code.substr(10,2)+'/'+code.substr(12,2));
    else
     return false;
  }
</script>
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
  </script>傍晚好！ <a href="../../system/index">首页</a> - <a href="https://aacsb.ustc.edu.cn/tjut/logout.asp">退出</a></div>
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
    <li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">我的信息<b class="caret"></b></a>
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
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">系统管理<b class="caret"></b></a>
     <ul class="dropdown-menu">
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/DateSetting.asp"><span class="glyphicon  glyphicon-cog font13"></span> 系统设置</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/UserRole.asp"><span class="glyphicon glyphicon-user font13"></span> 系统角色</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/Message.asp"><span class="glyphicon glyphicon-list font13"></span> 消息管理</a></li>
	  
      <li><a href="https://aacsb.ustc.edu.cn/tjut/LoginLog.asp"><span class="glyphicon glyphicon-open-file font13"></span> 登录日志</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/aacsb_News.asp"><span class="glyphicon glyphicon-list-alt font13"></span> 新闻公告</a></li>
	  
     </ul>
    </li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">标准数据<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a href="../base/teacher/teacherAll"><span class="glyphicon glyphicon-record font13"></span> 师资信息标准</a></li>
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Student.asp"><span class="glyphicon glyphicon-record font13"></span> 学生信息标准</a></li> 
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Assistant.asp"><span class="glyphicon glyphicon-record font13"></span> 助教信息标准</a></li> 
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BasePeriodical.asp"><span class="glyphicon glyphicon-record font13"></span> 智力贡献标准</a></li>
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseCourse.asp"><span class="glyphicon glyphicon-record font13"></span> 教学贡献标准</a></li>
      
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseStatAdmissions.asp"><span class="glyphicon glyphicon-record font13"></span> 招生就业信息</a></li> 
	  
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/BaseType.asp"><span class="glyphicon glyphicon-record font13"></span> 字段类型管理</a></li> 
	  
     </ul>
    </li>
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">智力贡献<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  <li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=1"><span class="glyphicon glyphicon-record font13"></span> 期刊文章</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=2"><span class="glyphicon glyphicon-record font13"></span> 会议论文</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=3"><span class="glyphicon glyphicon-record font13"></span> 会议演讲</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=4"><span class="glyphicon glyphicon-record font13"></span> 专著</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=5"><span class="glyphicon glyphicon-record font13"></span> 教材</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=6"><span class="glyphicon glyphicon-record font13"></span> 标准/政策</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=7"><span class="glyphicon glyphicon-record font13"></span> 教学获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=8"><span class="glyphicon glyphicon-record font13"></span> 科研获奖</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=9"><span class="glyphicon glyphicon-record font13"></span> 案例</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=10"><span class="glyphicon glyphicon-record font13"></span> 专利</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=11"><span class="glyphicon glyphicon-record font13"></span> 项目</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=12"><span class="glyphicon glyphicon-record font13"></span> 研究报告</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=13"><span class="glyphicon glyphicon-record font13"></span> 社会任职</a></li><li><a href="https://aacsb.ustc.edu.cn/tjut/Devotes.asp?m=14"><span class="glyphicon glyphicon-record font13"></span> 期刊任职</a></li>
     </ul>
    </li>
    
	<li><a href="https://aacsb.ustc.edu.cn/tjut/DevoteCourse.asp">教学贡献</a></li>
	
	<li><a href="https://aacsb.ustc.edu.cn/tjut/Qualified.asp">资格认定</a></li>
	
    <li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">表格输出<b class="caret"></b></a>
	 <ul class="dropdown-menu">
	  
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-1</a></li>
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table15-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 15-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-1-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-1</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table2-2-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 2-2</a></li> 
      <li><a target="_blank" href="https://aacsb.ustc.edu.cn/tjut/Table5-1-2-3-new.asp"><span class="glyphicon glyphicon-record font13"></span> AACSB Table 5-1/5-2/5-3</a></li> 
	  
     </ul>
    </li>
    
    <li><a href="https://aacsb.ustc.edu.cn/tjut/TeacherAdd.asp?h=0#" class="dropdown-toggle" data-toggle="dropdown">信息检索<b class="caret"></b></a>
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
   <div class="section-title">添加教师信息</div>
  </span>
  <span class="pull-right">
   <a class="btn btn-default mt-3 mb-3" href="https://aacsb.ustc.edu.cn/tjut/Teacher.asp"><span class="glyphicon glyphicon-arrow-left"></span> 返回</a>
   </span>
   <div style="clear:both;"></div>
  </div>
  </div>
</div>
<div class="container" style="">
 <div class="row" style="">
  <form action="addTeacher.do" method="post" name="addTeacher">
  <div class="col-md-9 mt-30" style="">
   <div class="row">
    <div class="col-md-4">
	 <div class="control-group">
	  <label for="name">用户名<font style="font-size:80%;color:#888;"> (登录名)</font></label>
      <div class="">
		<input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名" value="" required="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
	<div class="col-md-4">
	 <div class="control-group">
	  <label for="name">工号<font style="font-size:80%;color:#888;"> (兼职可用：J0001，其他可用：U0001)</font></label>
      <div class="">
		<input type="text" id="salarys" name="salarys" class="form-control" placeholder="请输入工号" value="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
<!--
	<div class="col-md-4">
	 <div class="control-group">
	  <label for="name">校园卡</label>
      <div class="">
		<input type="text" id="gid" name="gid" class="form-control" placeholder="请输入校园卡号" value="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
-->
    <div class="col-md-4">
	 <div class="control-group">
	  <label for="name">中文姓名<font style="font-size:80%;color:#888;"> (<font style="font-style:normal;font-size:13px;" color="red">*</font> 格式：周晓娴)</font></label>
      <div class="">
		<input type="text" id="chinesename" name="chinesename" class="form-control" placeholder="请输入姓名" value="" required="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
<!--
	<div class="col-md-4">
	 <div class="control-group">
	  <label for="name">姓名拼音<font style="font-size:80%;color:#888;"> (<font style="font-style:normal;font-size:13px;" color="red">*</font> 格式：ZHOU Xiaoxian)</font></label>
      <div class="">
	    <input type="text" id="englishname" name="englishname" class="form-control" placeholder="请输入英文姓名" value="" required="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
	<div class="col-md-4">
	 <div class="control-group">
	  <label for="name">性别<font style="font-size:80%;color:#888;"></font></label>
      <select class="form-control" id="sex" name="sex">
         <option value="1">男</option>
         <option value="2">女</option>
       </select>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
	<div class="col-md-6">
	 <div class="control-group">
	  <label for="name">身份证号<font style="font-size:80%;color:#888;"> (<font style="font-style:normal;font-size:13px;" color="red">*</font> 国外人员请填护照号)</font></label>
      <div class="">
		<input type="text" id="idcard" name="idcard" class="form-control" placeholder="请输入证件号" value="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
	<div class="col-md-6">
	 <div class="control-group">
	  <label for="name">国籍<font style="font-size:80%;color:#888;"> (<font style="font-style:normal;font-size:13px;" color="red">*</font> 必选</font></label>
      <div class="">
	   <div class="dropdown bootstrap-select form-control bs3"><select id="nationality" name="nationality" class="selectpicker form-control" data-live-search="true" required="" tabindex="-98">
		<option value="">请选择</option>
        
        <option data-subtext="(China)/CN" value="1">中国</option>
	    
        <option data-subtext="(Hong Kong China)/HK" value="2">中国香港</option>
	    
        <option data-subtext="(Macau China)/MO" value="3">中国澳门</option>
	    
        <option data-subtext="(Taiwan China)/TW" value="4">中国台湾</option>
	    
        <option data-subtext="(Afghanistan)/AF" value="5">阿富汗</option>
	    
        <option data-subtext="(Aland Islands)/AX" value="6">奥兰群岛</option>
	    
        <option data-subtext="(Albania)/AL" value="7">阿尔巴尼亚</option>
	    
        <option data-subtext="(Algeria)/DZ" value="8">阿尔及利亚</option>
	    
        <option data-subtext="(American Samoa)/AS" value="9">美属萨摩亚</option>
	    
        <option data-subtext="(Andorra)/AD" value="10">安道尔</option>
	    
        <option data-subtext="(Angola)/AO" value="11">安哥拉</option>
	    
        <option data-subtext="(Anguilla)/AI" value="12">安圭拉</option>
	    
        <option data-subtext="(Antigua and Barbuda)/AG" value="13">安提瓜和巴布达</option>
	    
        <option data-subtext="(Argentina)/AR" value="14">阿根廷</option>
	    
        <option data-subtext="(Armenia)/AM" value="15">亚美尼亚</option>
	    
        <option data-subtext="(Aruba)/AW" value="16">阿鲁巴</option>
	    
        <option data-subtext="(Australia)/AU" value="17">澳大利亚</option>
	    
        <option data-subtext="(Austria)/AT" value="18">奥地利</option>
	    
        <option data-subtext="(Azerbaijan)/AZ" value="19">阿塞拜疆</option>
	    
        <option data-subtext="(Bangladesh)/BD" value="20">孟加拉</option>
	    
        <option data-subtext="(Bahrain)/BH" value="21">巴林</option>
	    
        <option data-subtext="(Bahamas)/BS" value="22">巴哈马</option>
	    
        <option data-subtext="(Barbados)/BB" value="23">巴巴多斯</option>
	    
        <option data-subtext="(Belarus)/BY" value="24">白俄罗斯</option>
	    
        <option data-subtext="(Belgium)/BE" value="25">比利时</option>
	    
        <option data-subtext="(Belize)/BZ" value="26">伯利兹</option>
	    
        <option data-subtext="(Benin)/BJ" value="27">贝宁</option>
	    
        <option data-subtext="(Bermuda)/BM" value="28">百慕大</option>
	    
        <option data-subtext="(Bhutan)/BT" value="29">不丹</option>
	    
        <option data-subtext="(Bolivia)/BO" value="30">玻利维亚</option>
	    
        <option data-subtext="(Bosnia and Herzegovina)/BA" value="31">波斯尼亚和黑塞哥维那</option>
	    
        <option data-subtext="(Botswana)/BW" value="32">博茨瓦纳</option>
	    
        <option data-subtext="(Bouvet Island)/BV" value="33">布维岛</option>
	    
        <option data-subtext="(Brazil)/BR" value="34">巴西</option>
	    
        <option data-subtext="(Brunei)/BN" value="35">文莱</option>
	    
        <option data-subtext="(Bulgaria)/BG" value="36">保加利亚</option>
	    
        <option data-subtext="(Burkina Faso)/BF" value="37">布基纳法索</option>
	    
        <option data-subtext="(Burundi)/BI" value="38">布隆迪</option>
	    
        <option data-subtext="(Cambodia)/KH" value="39">柬埔寨</option>
	    
        <option data-subtext="(Cameroon)/CM" value="40">喀麦隆</option>
	    
        <option data-subtext="(Canada)/CA" value="41">加拿大</option>
	    
        <option data-subtext="(Cape Verde)/CV" value="42">佛得角</option>
	    
        <option data-subtext="(Central African Republic)/CF" value="43">中非</option>
	    
        <option data-subtext="(Chad)/TD" value="44">乍得</option>
	    
        <option data-subtext="(Chile)/CL" value="45">智利</option>
	    
        <option data-subtext="(Christmas Islands)/CX" value="46">圣诞岛</option>
	    
        <option data-subtext="(Cocos (keeling) Islands)/CC" value="47">科科斯（基林）群岛</option>
	    
        <option data-subtext="(Colombia)/CO" value="48">哥伦比亚</option>
	    
        <option data-subtext="(Comoros)/KM" value="49">科摩罗</option>
	    
        <option data-subtext="(Congo (Congo-Kinshasa))/CD" value="50">刚果（金）</option>
	    
        <option data-subtext="(Congo)/CG" value="51">刚果</option>
	    
        <option data-subtext="(Cook Islands)/CK" value="52">库克群岛</option>
	    
        <option data-subtext="(Costa Rica)/CR" value="53">哥斯达黎加</option>
	    
        <option data-subtext="(Cote D&#39;Ivoire)/CI" value="54">科特迪瓦</option>
	    
        <option data-subtext="(China)/CN" value="55">中国</option>
	    
        <option data-subtext="(Croatia)/HR" value="56">克罗地亚</option>
	    
        <option data-subtext="(Cuba)/CU" value="57">古巴</option>
	    
        <option data-subtext="(Czech)/CZ" value="58">捷克</option>
	    
        <option data-subtext="(Cyprus)/CY" value="59">塞浦路斯</option>
	    
        <option data-subtext="(Denmark)/DK" value="60">丹麦</option>
	    
        <option data-subtext="(Djibouti)/DJ" value="61">吉布提</option>
	    
        <option data-subtext="(Dominica)/DM" value="62">多米尼加</option>
	    
        <option data-subtext="(Ecuador)/EC" value="63">厄瓜多尔</option>
	    
        <option data-subtext="(Egypt)/EG" value="64">埃及</option>
	    
        <option data-subtext="(Equatorial Guinea)/GQ" value="65">赤道几内亚</option>
	    
        <option data-subtext="(Eritrea)/ER" value="66">厄立特里亚</option>
	    
        <option data-subtext="(Estonia)/EE" value="67">爱沙尼亚</option>
	    
        <option data-subtext="(Ethiopia)/ET" value="68">埃塞俄比亚</option>
	    
        <option data-subtext="(Faroe Islands)/FO" value="69">法罗群岛</option>
	    
        <option data-subtext="(Fiji)/FJ" value="70">斐济</option>
	    
        <option data-subtext="(Finland)/FI" value="71">芬兰</option>
	    
        <option data-subtext="(France)/FR" value="72">法国</option>
	    
        <option data-subtext="(Franch Metropolitan)/FX" value="73">法国大都会</option>
	    
        <option data-subtext="(Franch Guiana)/GF" value="74">法属圭亚那</option>
	    
        <option data-subtext="(French Polynesia)/PF" value="75">法属波利尼西亚</option>
	    
        <option data-subtext="(Gabon)/GA" value="76">加蓬</option>
	    
        <option data-subtext="(Gambia)/GM" value="77">冈比亚</option>
	    
        <option data-subtext="(Georgia)/GE" value="78">格鲁吉亚</option>
	    
        <option data-subtext="(Germany)/DE" value="79">德国</option>
	    
        <option data-subtext="(Ghana)/GH" value="80">加纳</option>
	    
        <option data-subtext="(Gibraltar)/GI" value="81">直布罗陀</option>
	    
        <option data-subtext="(Greece)/GR" value="82">希腊</option>
	    
        <option data-subtext="(Grenada)/GD" value="83">格林纳达</option>
	    
        <option data-subtext="(Guadeloupe)/GP" value="84">瓜德罗普岛</option>
	    
        <option data-subtext="(Guam)/GU" value="85">关岛</option>
	    
        <option data-subtext="(Guatemala)/GT" value="86">危地马拉</option>
	    
        <option data-subtext="(Guernsey)/GG" value="87">根西岛</option>
	    
        <option data-subtext="(Guinea-Bissau)/GW" value="88">几内亚比绍</option>
	    
        <option data-subtext="(Guinea)/GN" value="89">几内亚</option>
	    
        <option data-subtext="(Guyana)/GY" value="90">圭亚那</option>
	    
        <option data-subtext="(Haiti)/HT" value="91">海地</option>
	    
        <option data-subtext="(Honduras)/HN" value="92">洪都拉斯</option>
	    
        <option data-subtext="(Hungary)/HU" value="93">匈牙利</option>
	    
        <option data-subtext="(Iceland)/IS" value="94">冰岛</option>
	    
        <option data-subtext="(India)/IN" value="95">印度</option>
	    
        <option data-subtext="(Indonesia)/ID" value="96">印度尼西亚</option>
	    
        <option data-subtext="(Iran)/IR" value="97">伊朗</option>
	    
        <option data-subtext="(Iraq)/IQ" value="98">伊拉克</option>
	    
        <option data-subtext="(Ireland)/IE" value="99">爱尔兰</option>
	    
        <option data-subtext="(Isle of Man)/IM" value="100">马恩岛</option>
	    
        <option data-subtext="(Israel)/IL" value="101">以色列</option>
	    
        <option data-subtext="(Italy)/IT" value="102">意大利</option>
	    
        <option data-subtext="(Jamaica)/JM" value="103">牙买加</option>
	    
        <option data-subtext="(Japan)/JP" value="104">日本</option>
	    
        <option data-subtext="(Jersey)/" value="105">泽西岛</option>
	    
        <option data-subtext="(Jordan)/JO" value="106">约旦</option>
	    
        <option data-subtext="(Kazakstan)/KZ" value="107">哈萨克斯坦</option>
	    
        <option data-subtext="(Kenya)/KE" value="108">肯尼亚</option>
	    
        <option data-subtext="(Kiribati)/KI" value="109">基里巴斯</option>
	    
        <option data-subtext="(Korea (South))/KR" value="110">韩国</option>
	    
        <option data-subtext="(Korea (North))/KD" value="111">朝鲜</option>
	    
        <option data-subtext="(Kuwait)/KW" value="112">科威特</option>
	    
        <option data-subtext="(Kyrgyzstan)/KG" value="113">吉尔吉斯斯坦</option>
	    
        <option data-subtext="(Laos)/LO" value="114">老挝</option>
	    
        <option data-subtext="(Latvia)/LV" value="115">拉脱维亚</option>
	    
        <option data-subtext="(Lebanon)/LB" value="116">黎巴嫩</option>
	    
        <option data-subtext="(Lesotho)/LS" value="117">莱索托</option>
	    
        <option data-subtext="(Liberia)/LR" value="118">利比里亚</option>
	    
        <option data-subtext="(Libya)/LY" value="119">利比亚</option>
	    
        <option data-subtext="(Liechtenstein)/LI" value="120">列支敦士登</option>
	    
        <option data-subtext="(Lithuania)/LT" value="121">立陶宛</option>
	    
        <option data-subtext="(Luxembourg)/LU" value="122">卢森堡</option>
	    
        <option data-subtext="(Macedonia)/MK" value="123">马其顿</option>
	    
        <option data-subtext="(Malawi)/MW" value="124">马拉维</option>
	    
        <option data-subtext="(Malaysia)/MY" value="125">马来西亚</option>
	    
        <option data-subtext="(Madagascar)/MG" value="126">马达加斯加</option>
	    
        <option data-subtext="(Maldives)/MV" value="127">马尔代夫</option>
	    
        <option data-subtext="(Mali)/ML" value="128">马里</option>
	    
        <option data-subtext="(Malta)/MT" value="129">马耳他</option>
	    
        <option data-subtext="(Marshall Islands)/MH" value="130">马绍尔群岛</option>
	    
        <option data-subtext="(Martinique)/MQ" value="131">马提尼克岛</option>
	    
        <option data-subtext="(Mauritania)/MR" value="132">毛里塔尼亚</option>
	    
        <option data-subtext="(Mauritius)/MU" value="133">毛里求斯</option>
	    
        <option data-subtext="(Mayotte)/YT" value="134">马约特</option>
	    
        <option data-subtext="(Mexico)/MX" value="135">墨西哥</option>
	    
        <option data-subtext="(Micronesia)/MF" value="136">密克罗尼西亚</option>
	    
        <option data-subtext="(Moldova)/MD" value="137">摩尔多瓦</option>
	    
        <option data-subtext="(Monaco)/MC" value="138">摩纳哥</option>
	    
        <option data-subtext="(Mongolia)/MN" value="139">蒙古</option>
	    
        <option data-subtext="(Montenegro)/ME" value="140">黑山</option>
	    
        <option data-subtext="(Montserrat)/MS" value="141">蒙特塞拉特</option>
	    
        <option data-subtext="(Morocco)/MA" value="142">摩洛哥</option>
	    
        <option data-subtext="(Mozambique)/MZ" value="143">莫桑比克</option>
	    
        <option data-subtext="(Myanmar)/MM" value="144">缅甸</option>
	    
        <option data-subtext="(Namibia)/NA" value="145">纳米比亚</option>
	    
        <option data-subtext="(Nauru)/NR" value="146">瑙鲁</option>
	    
        <option data-subtext="(Nepal)/NP" value="147">尼泊尔</option>
	    
        <option data-subtext="(Netherlands)/NL" value="148">荷兰</option>
	    
        <option data-subtext="(New Caledonia)/NC" value="149">新喀里多尼亚</option>
	    
        <option data-subtext="(New Zealand)/NZ" value="150">新西兰</option>
	    
        <option data-subtext="(Nicaragua)/NI" value="151">尼加拉瓜</option>
	    
        <option data-subtext="(Niger)/NE" value="152">尼日尔</option>
	    
        <option data-subtext="(Nigeria)/NG" value="153">尼日利亚</option>
	    
        <option data-subtext="(Niue)/NU" value="154">纽埃</option>
	    
        <option data-subtext="(Norfolk Island)/NF" value="155">诺福克岛</option>
	    
        <option data-subtext="(Norway)/NO" value="156">挪威</option>
	    
        <option data-subtext="(Oman)/OM" value="157">阿曼</option>
	    
        <option data-subtext="(Pakistan)/PK" value="158">巴基斯坦</option>
	    
        <option data-subtext="(Palau)/PW" value="159">帕劳</option>
	    
        <option data-subtext="(Palestine)/PS" value="160">巴勒斯坦</option>
	    
        <option data-subtext="(Panama)/PA" value="161">巴拿马</option>
	    
        <option data-subtext="(Papua New Guinea)/PG" value="162">巴布亚新几内亚</option>
	    
        <option data-subtext="(Paraguay)/PY" value="163">巴拉圭</option>
	    
        <option data-subtext="(Peru)/PE" value="164">秘鲁</option>
	    
        <option data-subtext="(Philippines)/PH" value="165">菲律宾</option>
	    
        <option data-subtext="(Pitcairn Islands)/PN" value="166">皮特凯恩群岛</option>
	    
        <option data-subtext="(Poland)/PL" value="167">波兰</option>
	    
        <option data-subtext="(Portugal)/PT" value="168">葡萄牙</option>
	    
        <option data-subtext="(Puerto Rico)/PR" value="169">波多黎各</option>
	    
        <option data-subtext="(Qatar)/QA" value="170">卡塔尔</option>
	    
        <option data-subtext="(Reunion)/RE" value="171">留尼汪岛</option>
	    
        <option data-subtext="(Romania)/RO" value="172">罗马尼亚</option>
	    
        <option data-subtext="(Rwanda)/RW" value="173">卢旺达</option>
	    
        <option data-subtext="(Russian Federation)/RU" value="174">俄罗斯联邦</option>
	    
        <option data-subtext="(Saint Helena)/SH" value="175">圣赫勒拿</option>
	    
        <option data-subtext="(Saint Kitts-Nevis)/KN" value="176">圣基茨和尼维斯</option>
	    
        <option data-subtext="(Saint Lucia)/LC" value="177">圣卢西亚</option>
	    
        <option data-subtext="(Saint Vincent and the Grenadines)/VG" value="178">圣文森特和格林纳丁斯</option>
	    
        <option data-subtext="(El Salvador)/SV" value="179">萨尔瓦多</option>
	    
        <option data-subtext="(Samoa)/WS" value="180">萨摩亚</option>
	    
        <option data-subtext="(San Marino)/SM" value="181">圣马力诺</option>
	    
        <option data-subtext="(Sao Tome and Principe)/ST" value="182">圣多美和普林西比</option>
	    
        <option data-subtext="(Saudi Arabia)/SA" value="183">沙特阿拉伯</option>
	    
        <option data-subtext="(Senegal)/SN" value="184">塞内加尔</option>
	    
        <option data-subtext="(Seychelles)/SC" value="185">塞舌尔</option>
	    
        <option data-subtext="(Sierra Leone)/SL" value="186">塞拉利昂</option>
	    
        <option data-subtext="(Singapore)/SG" value="187">新加坡</option>
	    
        <option data-subtext="(Serbia)/RS" value="188">塞尔维亚</option>
	    
        <option data-subtext="(Slovakia)/SK" value="189">斯洛伐克</option>
	    
        <option data-subtext="(Slovenia)/SI" value="190">斯洛文尼亚</option>
	    
        <option data-subtext="(Solomon Islands)/SB" value="191">所罗门群岛</option>
	    
        <option data-subtext="(Somalia)/SO" value="192">索马里</option>
	    
        <option data-subtext="(South Africa)/ZA" value="193">南非</option>
	    
        <option data-subtext="(Spain)/ES" value="194">西班牙</option>
	    
        <option data-subtext="(Sri Lanka)/LK" value="195">斯里兰卡</option>
	    
        <option data-subtext="(Sudan)/SD" value="196">苏丹</option>
	    
        <option data-subtext="(Suriname)/SR" value="197">苏里南</option>
	    
        <option data-subtext="(Swaziland)/SZ" value="198">斯威士兰</option>
	    
        <option data-subtext="(Sweden)/SE" value="199">瑞典</option>
	    
        <option data-subtext="(Switzerland)/CH" value="200">瑞士</option>
	    
        <option data-subtext="(Syria)/SY" value="201">叙利亚</option>
	    
        <option data-subtext="(Tajikistan)/TJ" value="202">塔吉克斯坦</option>
	    
        <option data-subtext="(Tanzania)/" value="203">坦桑尼亚</option>
	    
        <option data-subtext="(Thailand)/TH" value="204">泰国</option>
	    
        <option data-subtext="(Trinidad and Tobago)/TT" value="205">特立尼达和多巴哥</option>
	    
        <option data-subtext="(Timor-Leste)/TL" value="206">东帝汶</option>
	    
        <option data-subtext="(Togo)/TG" value="207">多哥</option>
	    
        <option data-subtext="(Tokelau)/TK" value="208">托克劳</option>
	    
        <option data-subtext="(Tonga)/TO" value="209">汤加</option>
	    
        <option data-subtext="(Tunisia)/TN" value="210">突尼斯</option>
	    
        <option data-subtext="(Turkey)/TR" value="211">土耳其</option>
	    
        <option data-subtext="(Turkmenistan)/TM" value="212">土库曼斯坦</option>
	    
        <option data-subtext="(Tuvalu)/TV" value="213">图瓦卢</option>
	    
        <option data-subtext="(Uganda)/UG" value="214">乌干达</option>
	    
        <option data-subtext="(Ukraine)/UA" value="215">乌克兰</option>
	    
        <option data-subtext="(United Arab Emirates)/AE" value="216">阿拉伯联合酋长国</option>
	    
        <option data-subtext="(United Kingdom)/UK" value="217">英国</option>
	    
        <option data-subtext="(United States)/US" value="218">美国</option>
	    
        <option data-subtext="(Uruguay)/UY" value="219">乌拉圭</option>
	    
        <option data-subtext="(Uzbekistan)/UZ" value="220">乌兹别克斯坦</option>
	    
        <option data-subtext="(Vanuatu)/VN" value="221">瓦努阿图</option>
	    
        <option data-subtext="(Vatican City)/" value="222">梵蒂冈</option>
	    
        <option data-subtext="(Venezuela)/VE" value="223">委内瑞拉</option>
	    
        <option data-subtext="(Vietnam)/VN" value="224">越南</option>
	    
        <option data-subtext="(Wallis and Futuna)/WF" value="225">瓦利斯群岛和富图纳群岛</option>
	    
        <option data-subtext="(Western Sahara)/EH" value="226">西撒哈拉</option>
	    
        <option data-subtext="(Yemen)/YE" value="227">也门</option>
	    
        <option data-subtext="(Yugoslavia)/" value="228">南斯拉夫</option>
	    
        <option data-subtext="(Zambia)/ZM" value="229">赞比亚</option>
	    
        <option data-subtext="(Zimbabwe)/ZW" value="230">津巴布韦</option>
	    
      </select>
      <div class="dropdown-menu open"><div class="bs-searchbox"><input type="search" class="form-control" autocomplete="off" role="combobox" aria-label="Search" aria-controls="bs-select-1" aria-autocomplete="list"></div><div class="inner open" role="listbox" id="bs-select-1" tabindex="-1"><ul class="dropdown-menu inner " role="presentation"></ul></div></div></div>
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
-->	
	<div class="col-md-6">
	 <div class="control-group">
	  <label for="name">登录密码<font style="font-size:80%;color:#888;"> (<font style="font-style:normal;font-size:13px;" color="red">*</font> 要求:6位以上30位以下英文和数字结合)</font></label>
      <div class="">
		<input type="Password" id="password" name="password" class="form-control" placeholder="请输入密码" value="" required="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
<!--
    <div class="col-md-6">
	 <div class="control-group">
	  <label for="name">出生日期<font style="font-size:80%;color:#888;"> (<font style="font-style:normal;font-size:13px;" color="red">*</font> 日期格式：1990/2/3)</font></label>
      <div class="">
		<input type="text" id="birthday" name="birthday" onclick="dealCard()" class="form-control" placeholder="请输入出生日期" value="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
    <div class="col-md-6">
	 <div class="control-group">
	  <label for="name">办公电话<font style="font-size:80%;color:#888;"> (号码格式：+86-551-63600222)</font></label>
      <div class="">
		<input type="text" id="tel" name="tel" class="form-control" placeholder="请输入办公电话号码" value="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
	<div class="col-md-6">
	 <div class="control-group">
	  <label for="name">移动电话<font style="font-size:80%;color:#888;"> (号码格式：13003022525)</font></label>
      <div class="">
		<input type="text" id="mobile" name="mobile" class="form-control" placeholder="请输入移动电话号码" value="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
	<div class="col-md-6">
	 <div class="control-group">
	  <label for="name">办公地址<font style="font-size:80%;color:#888;"></font></label>
      <div class="">
		<input type="text" id="chineseoffice" name="chineseoffice" class="form-control" placeholder="请输入办公地址" value="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
	<div class="col-md-6">
	 <div class="control-group">
	 <label for="name">电子邮箱<font style="font-size:80%;color:#888;"> (格式：ppp@ustc.edu.cn)</font></label>
      <div class="">
		<input type="email" id="email" name="email" id="email" class="form-control" placeholder="请输入Email地址" value="" required="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
    <div class="col-md-6">
	 <div class="control-group">
	 <label for="name">个人照片<span id="qFile1msg"><span id="progress1"><font style="color:#888;font-size:80%;"> (照片的尺寸请用280X400像素的照片)</font></span></span></label>
      <div class="input-group">		
	  <input id="qFile1" class="form-control" name="Pic" placeholder="请选择并上传照片" value="">
      <label class="input-group-btn">
      <input type="button" id="i-check" value="选择照片" class="btn btn-default" onclick="$(&#39;#file1&#39;).click();">
      </label>
	 </div>
	 <input type="file" name="image" id="file1" onchange="$(&#39;#qFile1&#39;).val($(&#39;#file1&#39;).val());" style="display: none">
	  <p class="help-block help-info"></p>
	 </div>
	</div>
    <div class="col-md-6">
	 <div class="control-group">
	  <label for="name">入职日期<font style="font-size:80%;color:#888;"> (格式:1980/6/3，AACSB认证必填)</font></label>
      <div class="">
		<input type="text" id="workdate" name="workdate" id="datetime1" class="form-control" placeholder="请输入入职日期" value="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
	<div style="clear:both;"></div>
	<div style="clear:both;"></div>
	<div class="col-md-6">
	 <div class="control-group">
	  <label for="name">人员类型<font style="font-size:80%;color:#888;"></font></label>
      <div class="input-group">
		<select class="form-control" id="schoolsd1" name="schoolsd1" style="">
		 <option value="0">在职</option>
		 <option value="1">兼职</option>
		 <option value="4">已离职</option>
         <option value="7">已退休</option>
		 <option value="8">退休返聘</option>
		 <option value="10">外派驻点</option>
		 <option value="9">其他</option>
       </select>
	   <span class="input-group-addon lrn" style="" id="sizing-addon3"></span>
	   <select class="form-control" id="rylx" name="rylx" style="">
		 <option value="0">院内</option>
		 <option value="1">院外校内</option>
		 <option value="2">校外</option>
       </select>
	   <span class="input-group-addon lrn" style="" id="sizing-addon3"></span>
	   <select class="form-control" id="pylx" name="pylx" style="">
	     <option value="">请选择用工类型</option>
		 <option value="1">事业编制</option>
		 <option value="2">校聘</option>
         <option value="5">聘期制科研人员</option>
         <option value="6">学院聘用</option>
		 
		 <option value="9">其他</option>
       </select>
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
    <div class="col-md-6">
	 <div class="control-group">
	  <label for="name">离退时间<font style="font-size:80%;color:#888;"> (格式:2014/5/1)</font></label>
      <div class="">
	    <input type="text" id="lzdate" name="lzdate" id="datetime2" class="form-control" placeholder="" value="">
	  </div>
	  <p class="help-block help-info"></p>
	 </div>
	</div>
	<div style="clear:both;"></div>
    <div class="col-md-6">
	 <div class="control-group">
      <label for="name">校外人员单位</label>
      <div class="input-group">
	   <span class="input-group-addon" id="sizing-addon3"><div class="input-group-width40 ">中文</div></span>
	   <input type="text" id="employer" name="employer" class="form-control" placeholder="请输入单位中文名称" value="">
	   <span class="input-group-addon lrn" id="sizing-addon3"><div class="input-group-width40 ">英文</div></span>
	   <input type="text" id="employers" name="employers" class="form-control" placeholder="请输入单位英文名称" value="">
	  </div>
      <p class="help-block help-info"></p>
     </div>
	</div>
	<div class="col-md-6">
	 <div class="control-group">
     <label for="name">工作职责<font style="font-size:80%;color:#888;"> (须控制在30字以内)</font></label>
      <div class="">
		<input type="text" id="chinesework" name="chinesework" class="form-control" placeholder="请输入工作职责范围" value="">
	  </div>
      <p class="help-info help-info"></p>
     </div>
	</div>
-->
    <div style="clear:both;"></div>
    
   </div>
   <div style="clear:both;"></div>
<!--
	<div class="control-group" style="">
    <label for="name">个人介绍</label>
     <div style="width: 100%;">
		<div id="editor" class="edui-default" style="width: 100%;"><div id="edui1" class="edui-editor  edui-default" style="width: 100%; z-index: 999;"><div id="edui1_toolbarbox" class="edui-editor-toolbarbox edui-default"><div id="edui1_toolbarboxouter" class="edui-editor-toolbarboxouter edui-default"><div class="edui-editor-toolbarboxinner edui-default"><div id="edui2" class="edui-toolbar   edui-default" onselectstart="return false;" onmousedown="return $EDITORUI[&quot;edui2&quot;]._onMouseDown(event, this);" style="user-select: none;"><div id="edui3" class="edui-box edui-button edui-for-fullscreen edui-default"><div id="edui3_state" onmousedown="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui3_body" unselectable="on" title="全屏" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui3&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui3&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui4" class="edui-box edui-button edui-for-source edui-default"><div id="edui4_state" onmousedown="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui4_body" unselectable="on" title="源代码" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui4&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui4&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui5" class="edui-box edui-separator  edui-default"></div><div id="edui6" class="edui-box edui-button edui-for-undo edui-default"><div id="edui6_state" onmousedown="$EDITORUI[&quot;edui6&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui6&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui6&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui6&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui6_body" unselectable="on" title="撤销" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui6&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui6&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui7" class="edui-box edui-button edui-for-redo edui-default"><div id="edui7_state" onmousedown="$EDITORUI[&quot;edui7&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui7&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui7&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui7&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui7_body" unselectable="on" title="重做" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui7&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui7&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui8" class="edui-box edui-separator  edui-default"></div><div id="edui9" class="edui-box edui-button edui-for-bold edui-default"><div id="edui9_state" onmousedown="$EDITORUI[&quot;edui9&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui9&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui9&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui9&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui9_body" unselectable="on" title="加粗" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui9&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui9&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui10" class="edui-box edui-button edui-for-italic edui-default"><div id="edui10_state" onmousedown="$EDITORUI[&quot;edui10&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui10&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui10&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui10&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui10_body" unselectable="on" title="斜体" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui10&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui10&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui11" class="edui-box edui-button edui-for-underline edui-default"><div id="edui11_state" onmousedown="$EDITORUI[&quot;edui11&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui11&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui11&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui11&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui11_body" unselectable="on" title="下划线" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui11&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui11&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui12" class="edui-box edui-button edui-for-strikethrough edui-default"><div id="edui12_state" onmousedown="$EDITORUI[&quot;edui12&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui12&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui12&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui12&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui12_body" unselectable="on" title="删除线" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui12&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui12&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui13" class="edui-box edui-button edui-for-superscript edui-default"><div id="edui13_state" onmousedown="$EDITORUI[&quot;edui13&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui13&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui13&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui13&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui13_body" unselectable="on" title="上标" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui13&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui13&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui14" class="edui-box edui-button edui-for-removeformat edui-default"><div id="edui14_state" onmousedown="$EDITORUI[&quot;edui14&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui14&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui14&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui14&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui14_body" unselectable="on" title="清除格式" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui14&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui14&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui15" class="edui-box edui-separator  edui-default"></div><div id="edui16" class="edui-box edui-splitbutton edui-for-forecolor edui-default edui-colorbutton"><div title="字体颜色" id="edui16_state" onmousedown="$EDITORUI[&quot;edui16&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui16&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui16&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui16&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-splitbutton-body edui-default"><div id="edui16_button_body" class="edui-box edui-button-body edui-default" onclick="$EDITORUI[&quot;edui16&quot;]._onButtonClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div id="edui16_colorlump" class="edui-colorlump"></div></div><div class="edui-box edui-splitborder edui-default"></div><div class="edui-box edui-arrow edui-default" onclick="$EDITORUI[&quot;edui16&quot;]._onArrowClick();"></div></div></div></div><div id="edui19" class="edui-box edui-splitbutton edui-for-backcolor edui-default edui-colorbutton"><div title="背景色" id="edui19_state" onmousedown="$EDITORUI[&quot;edui19&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui19&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui19&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui19&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-splitbutton-body edui-default"><div id="edui19_button_body" class="edui-box edui-button-body edui-default" onclick="$EDITORUI[&quot;edui19&quot;]._onButtonClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div id="edui19_colorlump" class="edui-colorlump"></div></div><div class="edui-box edui-splitborder edui-default"></div><div class="edui-box edui-arrow edui-default" onclick="$EDITORUI[&quot;edui19&quot;]._onArrowClick();"></div></div></div></div><div id="edui22" class="edui-box edui-menubutton edui-for-insertorderedlist edui-default"><div title="有序列表" id="edui22_state" onmousedown="$EDITORUI[&quot;edui22&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui22&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui22&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui22&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-menubutton-body edui-default"><div id="edui22_button_body" class="edui-box edui-button-body edui-default" onclick="$EDITORUI[&quot;edui22&quot;]._onButtonClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div><div class="edui-box edui-splitborder edui-default"></div><div class="edui-box edui-arrow edui-default" onclick="$EDITORUI[&quot;edui22&quot;]._onArrowClick();"></div></div></div></div><div id="edui35" class="edui-box edui-menubutton edui-for-insertunorderedlist edui-default"><div title="无序列表" id="edui35_state" onmousedown="$EDITORUI[&quot;edui35&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui35&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui35&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui35&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-menubutton-body edui-default"><div id="edui35_button_body" class="edui-box edui-button-body edui-default" onclick="$EDITORUI[&quot;edui35&quot;]._onButtonClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div><div class="edui-box edui-splitborder edui-default"></div><div class="edui-box edui-arrow edui-default" onclick="$EDITORUI[&quot;edui35&quot;]._onArrowClick();"></div></div></div></div><div id="edui42" class="edui-box edui-combox edui-for-fontfamily edui-default"><div title="字体" id="edui42_state" onmousedown="$EDITORUI[&quot;edui42&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui42&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui42&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui42&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-combox-body edui-default"><div id="edui42_button_body" class="edui-box edui-button-body edui-default" onclick="$EDITORUI[&quot;edui42&quot;]._onButtonClick(event, this);">字体</div><div class="edui-box edui-splitborder edui-default"></div><div class="edui-box edui-arrow edui-default" onclick="$EDITORUI[&quot;edui42&quot;]._onArrowClick();"></div></div></div></div><div id="edui55" class="edui-box edui-combox edui-for-fontsize edui-default"><div title="字号" id="edui55_state" onmousedown="$EDITORUI[&quot;edui55&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui55&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui55&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui55&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-combox-body edui-default"><div id="edui55_button_body" class="edui-box edui-button-body edui-default" onclick="$EDITORUI[&quot;edui55&quot;]._onButtonClick(event, this);">字号</div><div class="edui-box edui-splitborder edui-default"></div><div class="edui-box edui-arrow edui-default" onclick="$EDITORUI[&quot;edui55&quot;]._onArrowClick();"></div></div></div></div><div id="edui66" class="edui-box edui-separator  edui-default"></div><div id="edui67" class="edui-box edui-menubutton edui-for-lineheight edui-default"><div title="行间距" id="edui67_state" onmousedown="$EDITORUI[&quot;edui67&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui67&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui67&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui67&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-menubutton-body edui-default"><div id="edui67_button_body" class="edui-box edui-button-body edui-default" onclick="$EDITORUI[&quot;edui67&quot;]._onButtonClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div><div class="edui-box edui-splitborder edui-default"></div><div class="edui-box edui-arrow edui-default" onclick="$EDITORUI[&quot;edui67&quot;]._onArrowClick();"></div></div></div></div><div id="edui76" class="edui-box edui-button edui-for-indent edui-default"><div id="edui76_state" onmousedown="$EDITORUI[&quot;edui76&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui76&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui76&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui76&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui76_body" unselectable="on" title="首行缩进" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui76&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui76&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui77" class="edui-box edui-button edui-for-justifyleft edui-default"><div id="edui77_state" onmousedown="$EDITORUI[&quot;edui77&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui77&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui77&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui77&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui77_body" unselectable="on" title="居左对齐" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui77&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui77&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui78" class="edui-box edui-button edui-for-justifycenter edui-default"><div id="edui78_state" onmousedown="$EDITORUI[&quot;edui78&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui78&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui78&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui78&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui78_body" unselectable="on" title="居中对齐" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui78&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui78&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui79" class="edui-box edui-button edui-for-justifyright edui-default"><div id="edui79_state" onmousedown="$EDITORUI[&quot;edui79&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui79&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui79&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui79&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui79_body" unselectable="on" title="居右对齐" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui79&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui79&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui80" class="edui-box edui-separator  edui-default"></div><div id="edui87" class="edui-box edui-button edui-for-link edui-default"><div id="edui87_state" onmousedown="$EDITORUI[&quot;edui87&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui87&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui87&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui87&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui87_body" unselectable="on" title="超链接" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui87&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui87&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui88" class="edui-box edui-button edui-for-unlink edui-default"><div id="edui88_state" onmousedown="$EDITORUI[&quot;edui88&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui88&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui88&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui88&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui88_body" unselectable="on" title="取消链接" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui88&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui88&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui93" class="edui-box edui-button edui-for-anchor edui-default"><div id="edui93_state" onmousedown="$EDITORUI[&quot;edui93&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui93&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui93&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui93&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui93_body" unselectable="on" title="锚点" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui93&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui93&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui94" class="edui-box edui-separator  edui-default"></div><div id="edui99" class="edui-box edui-button edui-for-insertimage edui-default"><div id="edui99_state" onmousedown="$EDITORUI[&quot;edui99&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui99&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui99&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui99&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui99_body" unselectable="on" title="多图上传" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui99&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui99&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui104" class="edui-box edui-button edui-for-insertvideo edui-default"><div id="edui104_state" onmousedown="$EDITORUI[&quot;edui104&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui104&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui104&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui104&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui104_body" unselectable="on" title="视频" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui104&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui104&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui105" class="edui-box edui-splitbutton edui-for-emotion edui-default"><div title="表情" id="edui105_state" onmousedown="$EDITORUI[&quot;edui105&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui105&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui105&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui105&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-splitbutton-body edui-default"><div id="edui105_button_body" class="edui-box edui-button-body edui-default" onclick="$EDITORUI[&quot;edui105&quot;]._onButtonClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div><div class="edui-box edui-splitborder edui-default"></div><div class="edui-box edui-arrow edui-default" onclick="$EDITORUI[&quot;edui105&quot;]._onArrowClick();"></div></div></div></div><div id="edui111" class="edui-box edui-button edui-for-attachment edui-default"><div id="edui111_state" onmousedown="$EDITORUI[&quot;edui111&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui111&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui111&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui111&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui111_body" unselectable="on" title="附件" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui111&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui111&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui116" class="edui-box edui-button edui-for-insertframe edui-default"><div id="edui116_state" onmousedown="$EDITORUI[&quot;edui116&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui116&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui116&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui116&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui116_body" unselectable="on" title="插入Iframe" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui116&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui116&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui117" class="edui-box edui-combox edui-for-insertcode edui-default"><div title="代码语言" id="edui117_state" onmousedown="$EDITORUI[&quot;edui117&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui117&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui117&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui117&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-combox-body edui-default"><div id="edui117_button_body" class="edui-box edui-button-body edui-default" onclick="$EDITORUI[&quot;edui117&quot;]._onButtonClick(event, this);">代码语言</div><div class="edui-box edui-splitborder edui-default"></div><div class="edui-box edui-arrow edui-default" onclick="$EDITORUI[&quot;edui117&quot;]._onArrowClick();"></div></div></div></div><div id="edui147" class="edui-box edui-button edui-for-background edui-default"><div id="edui147_state" onmousedown="$EDITORUI[&quot;edui147&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui147&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui147&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui147&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui147_body" unselectable="on" title="背景" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui147&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui147&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui148" class="edui-box edui-separator  edui-default"></div><div id="edui149" class="edui-box edui-button edui-for-horizontal edui-default"><div id="edui149_state" onmousedown="$EDITORUI[&quot;edui149&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui149&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui149&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui149&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui149_body" unselectable="on" title="分隔线" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui149&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui149&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div></div></div></div></div><div id="edui152" class="edui-box edui-button edui-for-preview edui-default"><div id="edui152_state" onmousedown="$EDITORUI[&quot;edui152&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui152&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui152&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui152&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui152_body" unselectable="on" title="预览" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui152&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui152&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div><div id="edui155" class="edui-box edui-button edui-for-searchreplace edui-default"><div id="edui155_state" onmousedown="$EDITORUI[&quot;edui155&quot;].Stateful_onMouseDown(event, this);" onmouseup="$EDITORUI[&quot;edui155&quot;].Stateful_onMouseUp(event, this);" onmouseover="$EDITORUI[&quot;edui155&quot;].Stateful_onMouseOver(event, this);" onmouseout="$EDITORUI[&quot;edui155&quot;].Stateful_onMouseOut(event, this);" class="edui-default"><div class="edui-button-wrap edui-default"><div id="edui155_body" unselectable="on" title="查询替换" class="edui-button-body edui-default" onmousedown="return $EDITORUI[&quot;edui155&quot;]._onMouseDown(event, this);" onclick="return $EDITORUI[&quot;edui155&quot;]._onClick(event, this);"><div class="edui-box edui-icon edui-default"></div><div class="edui-box edui-label edui-default"></div></div></div></div></div></div></div></div><div id="edui1_toolbarmsg" class="edui-editor-toolbarmsg edui-default" style="display:none;"><div id="edui1_upload_dialog" class="edui-editor-toolbarmsg-upload edui-default" onclick="$EDITORUI[&quot;edui1&quot;].showWordImageDialog();">点击上传</div><div class="edui-editor-toolbarmsg-close edui-default" onclick="$EDITORUI[&quot;edui1&quot;].hideToolbarMsg();">x</div><div id="edui1_toolbarmsg_label" class="edui-editor-toolbarmsg-label edui-default"></div><div style="height:0;overflow:hidden;clear:both;" class="edui-default"></div></div><div id="edui1_message_holder" class="edui-editor-messageholder edui-default" style="top: 58px; z-index: 1000;"></div></div><div id="edui1_iframeholder" class="edui-editor-iframeholder edui-default" style="width: 100%; height: 450px; z-index: 999; overflow: hidden;"><iframe id="ueditor_0" width="100%" height="100%" frameborder="0" src="javascript:void(function(){document.open();document.write(&quot;&lt;!DOCTYPE html&gt;&lt;html xmlns=&#39;http://www.w3.org/1999/xhtml&#39; class=&#39;view&#39; &gt;&lt;head&gt;&lt;style type=&#39;text/css&#39;&gt;.view{padding:0;word-wrap:break-word;cursor:text;height:90%;}
body{margin:8px;font-family:sans-serif;font-size:16px;}img{max-width:100%;}p{margin:5px 0;}&lt;/style&gt;&lt;link rel=&#39;stylesheet&#39; type=&#39;text/css&#39; href=&#39;https://aacsb.ustc.edu.cn/tjut/ueditor/themes/iframe.css&#39;/&gt;&lt;/head&gt;&lt;body class=&#39;view&#39; &gt;&lt;/body&gt;&lt;script type=&#39;text/javascript&#39;  id=&#39;_initialScript&#39;&gt;setTimeout(function(){editor = window.parent.UE.instants[&#39;ueditorInstant0&#39;];editor._setup(document);},0);var _tmpScript = document.getElementById(&#39;_initialScript&#39;);_tmpScript.parentNode.removeChild(_tmpScript);&lt;/script&gt;&lt;/html&gt;&quot;);document.close();}())" ="../../resources/admin/login/html/saved_resource.html"></iframe></div><div id="edui1_bottombar" class="edui-editor-bottomContainer edui-default"><table class="edui-default"><tbody class="edui-default"><tr class="edui-default"><td id="edui1_elementpath" class="edui-editor-bottombar edui-default"></td><td id="edui1_wordcount" class="edui-editor-wordcount edui-default">字数统计</td><td id="edui1_scale" class="edui-editor-scale edui-default" style="display: none;"><div class="edui-editor-icon edui-default"></div></td></tr></tbody></table></div><div id="edui1_scalelayer" class="edui-default"></div></div></div>
	 </div>
     <p class="help-block help-info">此处可显示在管理学院中文网站师资个人介绍中</p>
   </div>
-->
   <div style="text-align:center;">
   <input name="aurl" type="hidden" value="http://aacsb.ustc.edu.cn/tjut/TeacherAdd.asp?h=0">
   <input name="h" type="hidden" value="0">
   <input name="addTeacher" type="submit" id="submit" value="  确 认 添 加  " class="add-button btn-primary btn-lg mt-20">
   </div>
  </div>
  </form>
  <div class="col-md-3 aacsb_home small_none">
   <div style="width:80%;margin:0 auto;padding-top:30px;" id="qFile1result"></div>
  </div>
 </div>
</div>
<section>
 <div class="aacsb_footer">
	<p class="info">系统仅支持Chrome、Firefox、Edge等浏览器<br>Copyright © 2013-2021，&nbsp;<a href="https://aacsb.ustc.edu.cn/tjut/Copyright.asp">信息系统版权说明和技术支持</a>&nbsp; v3.0.200619, 页面执行时间：78.13毫秒
 </p></div>
</section>

<iframe name="Detail" id="Detail" frameborder="0" hspace="0" vspace="0" src="../../resources/admin/login/html/Record.html" style="display:none"></iframe>
<script language="javascript">document.getElementById('wait').style.display='none';</script>


<script src="../../resources/admin/login/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="../../resources/admin/login/css/bootstrap-datetimepicker.min.css">
<script src="../../resources/admin/login/js/moment-with-locales.min.js"></script>
<script src="../../resources/admin/login/js/bootstrap-datetimepicker.min.js"></script>
<script src="../../resources/admin/login/js/jqBootstrapValidation.js"></script>
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
<script language="javascript">
	$(function () {
	 $("#datetime").datetimepicker({
	   format: 'YYYY/MM/DD',
	   locale: moment.locale('zh-cn')
	 });
	});
	$(function () {
	 $("#datetime1").datetimepicker({
	   format: 'YYYY/MM/DD',
	   locale: moment.locale('zh-cn')
	 });
	});
	$(function () {
	 $("#datetime2").datetimepicker({
	   format: 'YYYY/MM/DD',
	   locale: moment.locale('zh-cn')
	 });
	});
  </script>
<script>
  $(function () { $("input,textarea").not("[type=submit]").jqBootstrapValidation(); } );
</script>
<script type="text/javascript" charset="utf-8" src="../../resources/admin/login/js/ueditor.config.minis.js"></script>
<script type="text/javascript" charset="utf-8" src="../../resources/admin/login/js/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="../../resources/admin/login/js/zh-cn.js"></script>
<script type="text/javascript">
    var ue = UE.getEditor('editor');
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
$("#file1").change(function(){
	var tmpFiles=document.all.file1.files;
	for(var i=0; i< tmpFiles.length; i++){
		if(!/.(gif|jpg|jpeg|png)$/i.test(tmpFiles[i].name)){//方法一：通过文件名后缀判断
		// if(!/^image\//.test(tmpFiles[i].type)){ //方法二：通过type属性判断是否是image/开头的
			alert("不是图片类型！ 您上传的类型是：" + tmpFiles[i].type);
			$(this).val("");
			return false;
		}else if(tmpFiles[i].size>1*1024*1024){//限制文件大小30M，可根据需要修改
			alert("上传大小不能超过1M，您上传的大小是：" + parseInt(tmpFiles[i].size/1024/1024) + "M");
			$(this).val("");
			return false;
		}
	}
	/////////////////////////使用ajax方法提交数据///////////////////////////////
	$.ajax({
        url: "Upload_ajax.asp?dir=teacher",
        type: 'POST',
        cache: false,
        data: new FormData($("#LeadAACSB1")[0]),
        processData: false,
        contentType: false,
        xhr:function(){ 
        	myXhr = $.ajaxSettings.xhr(); 
       		if(myXhr.upload){ // check if upload property exists 
           	myXhr.upload.addEventListener('progress',function(e){ 
                 var loaded = e.loaded;//已经上传大小情况
                 var tot = e.total;//附件总大小
                 var per = Math.floor(100*loaded/tot).toFixed(0); 
                 $("#progress1").html( "<font color=blue>" + per +"% 正在上传中...</font>" );//设置进度显示百分比
             }, false); // for handling the progress of the upload
        	}	  
     	 return myXhr;  
  		},
        success: function (backdata) {
			$("#qFile1").val("" + backdata.replace(/\r\n/img,""))
			$("#qFile1msg").html("<font color=green>上传成功</font>")
			$("#qFile1result").html("<img src=" + backdata.replace(/\r\n/img, "") + ">")
			$("#result").after("<img style='height:180px;max-width:130px;' src=" + backdata.replace(/\r\n/img,"><br><img src=") + ">")
        },
        error: function (err) {
        	$("#qFile1msg").html("发生意外错误，请检查并排除问题后重试。建议检查iis端“最大请求实体主体限制”");
        }
    });
});
</script>
<!--
<script type="text/javascript">
document.querySelector(".add-button").onclick = function(){

	var username = $("#username").val();
	var password = $("#password").val();
	var salarys = $("#salarys").val();
	/*var gid = $("#gid").val();
	var chinesename = $("#chinesename").val();
	var englishname = $("#englishname").val();
	var sex = $("#sex").val();
	var idcard = $("#idcard").val();
	var nationality = $("#nationality").val();
	var birthday = $("#birthday").val();
	var tel = $("#tel").val();
	var mobile = $("#mobile").val();
	var chineseoffice = $("#chineseoffice").val();
	var email = $("#email").val();
	var workdate = $("#workdate").val();
	var schoolsd1 = $("#schoolsd1").val();
	var rylx = $("#rylx").val();
	var pylx = $("#pylx").val();
	var lzdate = $("#lzdate").val();
	var employer = $("#employer").val();
	var employers = $("#employers").val();
	var chinesework = $("#chinesework").val();*/
	
	$.ajax({
		url:'addTeacher',
		data:{username:username,
			password:password,
			salarys:salarys,
			/*gid:gid,
			chinesename:chinesename,
			englishname:englishname,
			sex:sex,
			idcard:idcard,
			nationality:nationality,
			birthday:birthday,
			tel:tel,
			mobile:mobile,
			chineseoffice:chineseoffice,
			email:email,
			workdate:workdate,
			schoolsd1:schoolsd1,
			rylx:rylx,
			pylx:pylx,
			lzdate:lzdate,
			employer:employer,
			employers:employers,
			chinesework:chinesework*/},
		type:'post',
		dataType:'json',
		success:function(data){
			if(data.type=='success'){
				window.location ='teacherAll';
				alert("sussess")
				//window.location ='index';
			}else{
				alert(data.msg);
			}
		}
	});
}
</script>
-->
<div id="edui_fixedlayer" class="edui-default" style="position: fixed; left: 0px; top: 0px; width: 0px; height: 0px;"><div id="edui156" class="edui-popup  edui-bubble edui-default" onmousedown="return false;" style="display: none;"> <div id="edui156_body" class="edui-popup-body edui-default"> <iframe style="position:absolute;z-index:-1;left:0;top:0;background-color: transparent;" frameborder="0" width="100%" height="100%" src="../../resources/admin/login/html/saved_resource(1).html" class="edui-default"></iframe> <div class="edui-shadow edui-default"></div> <div id="edui156_content" class="edui-popup-content edui-default">  </div> </div></div></div></body></html>