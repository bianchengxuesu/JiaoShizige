/*!

 */
//获取验证码
function codeADD(){
 function RndNum(n){
   var rnd="";
   for(var i=0;i<n;i++)
     rnd+=Math.floor(Math.random()*3);
   return rnd;
 }
 var autonum=RndNum(4);
 $("#Code").val(autonum);
 $("#Codes").val(autonum);
};

var InterValObj; //timer变量，控制时间
var count = 100; //间隔函数，1秒执行
var curCount;//当前剩余秒数
function sendMessage() {
curCount = count;
// 设置button效果，开始计时
document.getElementById("SendCode").setAttribute("disabled","true" );//设置按钮为禁用状态
document.getElementById("SendCode").value="获取验证码(" + curCount + ")";//更改按钮文字
InterValObj = window.setInterval(SetRemainTime, 1000); // 启动计时器timer处理函数，1秒执行一次
// 向后台发送处理数据
var Mobile=document.all.Mobile.value;
if (Mobile == ""){
    $("#sendmsg").html("<font color=red>请填写手机号</font>");
	window.clearInterval(InterValObj);
    document.getElementById("SendCode").removeAttribute("disabled");
    document.getElementById("SendCode").value="获取验证码";
	document.all.Mobile.focus();
	return false;
}
$.ajax({
url: 'SMSSendCode.asp?SMSType=2&mobile=' + Mobile,
type: 'POST',
cache: false,
processData: false,
contentType: false,dataType: "text",
success: function (backdata) {
if(backdata == 0){
	window.clearInterval(InterValObj);
    document.getElementById("SendCode").removeAttribute("disabled");
    document.getElementById("SendCode").value="获取验证码";
	$("#sendmsg").html("<font color=red>您没有绑定手机号！</font>");
	return false;
}else if(backdata == 2){
    $("#sendmsg").html("<font color=red>手机号码有误！</font>");
	 window.clearInterval(InterValObj);
    document.getElementById("SendCode").removeAttribute("disabled");
    document.getElementById("SendCode").value="获取验证码";
    document.all.Mobile.focus();
	return false;
}else if(backdata == 3){
    $("#sendmsg").html("<font color=red>获取失败，1分钟内不能重复发送</font>");
	 window.clearInterval(InterValObj);
    document.getElementById("SendCode").removeAttribute("disabled");
    document.getElementById("SendCode").value="获取验证码";
	return false;
}else {
	$("#sendmsg").html("<font color=green>验证码已发送，请稍等</font>");
	document.all.Codenum.focus();
	return false;
}
}
});
}

//timer处理函数
function SetRemainTime() {
if (curCount == 0) {                
window.clearInterval(InterValObj);// 停止计时器
document.getElementById("SendCode").removeAttribute("disabled");//移除禁用状态改为可用
document.getElementById("SendCode").value="重新发送";
$("#sendmsg").html("")
}else {
curCount--;
document.getElementById("SendCode").value="获取验证码(" + curCount + ")";
}
}

jQuery(function(){
	jQuery('#camera_wrap_4').camera({
		height: '380',
		loader: 'bar',
		pagination: false,
		thumbnails: false,
		hover: false,
		opacityOnGrid: false,
		imagePath: 'images/'
	});
});