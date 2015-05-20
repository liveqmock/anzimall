<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+path;
%>
<%
	request.setAttribute("css","global,login");
	request.setAttribute("js","global,fukrm");
%>

<jsp:include page="/cglib/header.jsp" flush="true"/>

<div class="login">
		<img src="/images/login_box.jpg" alt="" class="login_bkg">
		<div class="login_banner">
			<h1>登录积分商城</h1>
			<ul>
				<li><img src="/images/login_box1.jpg" alt=""></li>
			</ul>
		</div>

		<form class="fukrm fukrm-ajax" action="/login.shtml" method="post" >
			<h2><!-- 登录异业联盟 -->&nbsp;</h2>

			<cite><span>账号：</span>
				<input type="text" name="phone" placeholder="请输入手机账号" check="required,phone">
			</cite>
			
			<cite><span>密码：</span>
				<input type="password" name="password" placeholder="请输入登录密码" check="required,password">
			</cite>

			<cite><span>验证码：</span>
				<input type="text" name="checkcode" placeholder="请输入右边验证码" check="required" style="width: 120px;" class="notecheckcode">
				<b class="checkcode"><img src="<%=basePath%>:8084/authImg?type=loginCode&id=1" onclick="this.src=this.src.replace(/\d*$/,(new Date).getTime())"/></b>
			</cite>

			<div class="form_remember">
				<!--<input type="checkbox" name="" checked="checked">记住密码-->
				<a href="/to_getPassword.shtml">忘记密码?</a>
				<a href="/to_register_info.shtml" style="color:#ee2323;">立即注册</a>
			</div>

			<input type="submit" value="登 &nbsp; 录">
		</form>	

	</div>






<!-- 页脚 -->
<jsp:include page="/cglib/footer.jsp" flush="true"/>
