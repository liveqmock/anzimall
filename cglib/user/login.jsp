<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
String[] css = {"common","login"};
String[] js = {"jquery","common","wbox","md5"};


request.setAttribute("basePath",basePath);
request.setAttribute("css",css);
request.setAttribute("js",js);

%>

<jsp:include page="/cglib/header.jsp" flush="true"/>


<section>
	<div class="main3 myul_bg">
		<div class="u_login">
			<div class="l">
				<div class="mod">
					<h3>安淘惠生活会员登录</h3>
					<form action="/user/login/" method="post" onSubmit="return CheckLogin()">
						<ul>
							<li class="gray">手机号码：<input class="input_style" name="mobile" id="mobile" value="1242998" maxlength="11" type="text"></li>
							<li class="gray">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input class="input_style" type="password" name="userpass" id="userpass" maxlength="32"></li>
							<li class="ceat"><span class="green1 right"><a href="user_getpass.shtml" target="_top">忘记密码？</a></span><span class="left70"><label><input name="cookies" type="checkbox" value="1">30天内自动登录</label></span></li>
							<li class="login_bnt "><button class="bnt left70 top50" type="submit">登录</button><a class="gray3 left10"  href="user_register.shtml" target="_top">立即注册>></a></li>
							<li class="ceat"><span class="left70 red2" id="errmsg">&nbsp;</span></li>
						</ul>
						<input type="hidden" name="go" value="" />
						<input type="hidden" name="flash" value="" />
					</form>
				</div>
			</div>
			<div class="r">
				<div class="mod">
					<h3>使用合作帐号登录</h3>
					<ul>
						<li><a class="qq" href="/user/open/tqq/"><b></b>腾讯微博帐号登录</a></li>
						<li><a class="sina" href="/user/open/sina/"><b></b>新浪微博帐号登录</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>

<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>

<script language="javascript">
var rndpass="rZWQAjhfFmPcqNjIykSlPEBvnAjwiRyo";
function CheckLogin(){
	var mobile=$("#mobile").val();
	var userpass=$("#userpass").val();
	if(mobile==""){$("#errmsg").html("手机号码不能为空！");return false;}
	if(isNaN(mobile)==true){$("#errmsg").html("手机号码/会员号格式有误！");return false;}
	if(userpass==""){$("#errmsg").html("登录密码不能为空！");return false;}
	userpass=hex_md5(userpass);
	userpass=hex_md5(userpass+rndpass);	
	$("#userpass").val(userpass);
	return true;
}
try{
	parent.$(".wBox_itemTitle").html("登录安淘惠生活");	
}catch(e){
	
}
</script>