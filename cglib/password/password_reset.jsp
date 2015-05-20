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
			<div class="register_steps"><img src="/images/register_steps2.png" alt=""></div>



			<form action="/reset_password.shtml" class="fukrm fukrm-ajax">
			
				<br>

				<label>
					<span><em>*</em>账户密码：</span>
					<input type="password" name="password" placeholder="请输入积分商城账户密码" check="required"  class="checkstrong fukrm_save">
					<p style="width:400px;padding-top:5px;">
						密码强度: <span class="checkstrong_res">
						<b style="background:#ee2323;">弱</b><b>中</b><b>强</b></span><br>
						<img src="/images/icon_warm.png" style="vertical-align: -2px;">为保证您帐号的安全，建议密码由6-16位字符（字母、数字、符号）<br>组合而成，不能只使用一种字符，不区分大小写！
					</p>
				</label>


				<label>
					<span><em>*</em>确认账户密码：</span>
					<input type="password" name=""  placeholder="请重新输入账户密码" check="required,repassword"  class="fukrm_save">
					<p>再次输入您的账户密码以确认您记住了您的密码</p>
				</label>

				
			
				<br><br>

				<cite><input type="submit" value="提交"></cite>

			</form>

			<div class="reginster_note">
				<h2>常见FAQ</h2>
				<dl>
					<dt class="active"><a >重新设置密码</a></dt>
					<dd>验证信息无误后，在此页面输入登录的新密码</dd>
					
				</dl>
			</div>


		</div>

		





	</div>




	<!-- 页脚 -->
	<jsp:include page="/cglib/footer.jsp" flush="true"/>
