<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%

request.setAttribute("css","global,backstage");
request.setAttribute("js","global,fukrm,backstage");
%>

<jsp:include page="/cglib/header.jsp" flush="true"/>


<div class="main">
	
	<jsp:include page="/cglib/user/user_sidebar.jsp" flush="true"/>	

	<div class="content">
		
		<h2 style="color:#06b7f9;">
			<i class="icon icon-07xiugaimima"></i>
			<strong>修改密码</strong>
			<small>为保证安全，密码请勿设置的过于简单。</small>
		</h2>


		<form action="user_password.shtml" class="fukrm fukrm-ajax">
			
			<br>
			
			<label>
				<span><em>*</em>账户原密码：</span>
				<input type="password" name="oldpassword"  placeholder="请输入原始账户密码" check="required"  class="fukrm_save">
				<p>输入您的账户修改前的密码以确认您的身份</p>
			</label>


			<label>
				<span><em>*</em>账户密码：</span>
				<input type="password" name="newpassword" placeholder="请输入新的账户密码" check="required"  class="checkstrong fukrm_save">
				<p style="width:400px;padding-top:5px;">
					密码强度: <span class="checkstrong_res">
					<b>弱</b><b>中</b><b>强</b></span><br>
					<i class="icon icon-caution-block" style="color:#0EB5F0;font-size:16px;"></i>为保证您帐号的安全，建议密码由6-16位字符（字母、数字、符号）<br>组合而成，不能只使用一种字符，不区分大小写！
				</p>
			</label>

			
			<label>
				<span><em>*</em>确认账户密码：</span>
				<input type="password" name="renewpassword"  placeholder="请重新输入新的账户密码" check="required,repassword"  class="fukrm_save">
				<p>再次输入您的账户密码以确认您记住了您的密码</p>
			</label>

			<label style="line-height:24px;"><i class="icon icon-caution-block note" ></i>为了保证您的账户资金安全，请定期修改密码，并保证密码与<br>其他网站上的密码不同！</label>

			<br>
			<br>
			<label><input type="submit" value="提交"></label>

			<br>
			<br>
			<br>
			<br>
		</form>

	</div>



</div>







<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>
