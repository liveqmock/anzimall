<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>

<div class="main">

	<form action="/checkIdentity_wap.shtml" method="post"  class="form">
	${msg }
		<cite><span><em>*</em>手机号码：</span><input type="text" name="phone" placeholder="请输入手机帐号"></cite>
		<cite class="checkcode"><span><em>*</em>验证码：</span>
			<input type="text" name="code" placeholder="请输入手机验证码">
			<b class="getcode" url="/getPasswordCheckPhone_wap.shtml" for="phone">获取验证码 &gt;</b>
		</cite>
		<%-- <cite><span><em>*</em>身份证号:</span><input type="text" name="identity" placeholder="请输入您的身份证号"></cite>--%>
		<p class="form_note">请输入您的身份证号，以校验您的身份。</p>

		<input type="submit" value="提 交">
	</form>
	




</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>