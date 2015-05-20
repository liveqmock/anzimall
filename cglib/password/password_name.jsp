<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	request.setAttribute("css","global,register");
	request.setAttribute("js","global,fukrm,register");

%>


	<jsp:include page="/cglib/header.jsp" flush="true"/>
	<div class="mainbox">
	
	
		<div class="content reginster cs">
			<h2 class="register_title">
				<strong>取回密码</strong>
				<span>我记起来了，马上<a href="/login_basic.shtml">登录</a>/<a href="/index.html">返回首页</a></span>
			</h2>
			<div class="register_steps"><img src="/images/register_steps1.png" alt=""></div>

	

			<form action="/check_user.shtml" class="fukrm fukrm-ajax" method="post">
			
				<cite>
					<span><em>*</em>手机号码：</span>
					<input type="text" name="phone" check="required,phone,ajax_password_phone" placeholder="请输入手机号码">
					<p>请输入您注册时填入的有效手机号</p>
				</cite>	
				
				<cite>
					<span><em>*</em>短信验证码：</span>
					<label><input type="text" name="code" check="required" style="width:136px" placeholder="请输入短信验证码" class="checkcode"></label>
					<b class="getcode" for="phone" url="getverificationcode.shtml">获取验证码 ></b>
				</cite>

				<%--<cite>
					<span><em>*</em>身份证号码：</span>
					<label><input type="text" name="identity" check="required,idcard" placeholder="请输入您的身份证号" class="fukrm_save"></label>
					<p>请输入您的身份证号，以校验您的身份。</p>
				</cite>--%>
				
				<br><br>
				<cite><input type="submit" value="提交"></cite>
			</form>

			
			<div class="reginster_note">
				<h2>常见FAQ</h2>
				<dl>
					<dt class="active"><a >1、提交验证信息</a></dt>
					<dd>输入您注册的手机账号以便接收验证码信息，以及您账号中绑定银行卡的填写的证件号码</dd>
					
				</dl>
			</div>


		</div>
	</div>




	<!-- 页脚 -->
	<jsp:include page="/cglib/footer.jsp" flush="true"/>
