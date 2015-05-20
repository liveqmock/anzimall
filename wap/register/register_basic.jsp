<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>

<div class="main">
	${msg }
	<form action="/registerOne_wap.shtml" method="post" class="form">
		<input type="hidden" name="uid" value="${uuid }">
		<input type="hidden" name="mid" value="${mmid }">
		<cite><span><em>*</em>手机号码：</span><input type="text" name="phone" placeholder="请输入您的手机号码"></cite>
		<cite>
			<span>推广码：</span>
			<input type="text" name="tg_sign" value="${ tg_sigen }">
			<p>请输入推广码，可不填</p>
		</cite>
		<cite class="checkcode"><span><em>*</em>验证码：</span>
			<input type="text" name="code" placeholder="请输入手机验证码">
			<b class="getcode" url="/checkPhone_wap.shtml" for="phone">获取验证码 &gt;</b>
		</cite>

		
		<cite>
			<span><em>*</em>账户密码：</span>
			<input type="password" name="password" placeholder="请输入积分商城帐户密码" class="checkstrong">
			<p class="checkstrong_box" >
				密码强度: <span class="checkstrong_res">
				<b>弱</b><b>中</b><b>强</b></span><br>
				<img src="/images/icon_warm.png" style="vertical-align: -2px;">为保证您帐号的安全，建议密码由6-16位字符（字母、数字、符号）组合而成，不能只使用一种字符，不区分大小写！
			</p>
		</cite>
		<cite><span><em>*</em>确认账户密码：</span><input type="password" name="repassword" placeholder="请重新输入帐户密码"></cite>
		<cite><input type="checkbox" name="agreement" checked="true" check="checked">已阅读并同意<a href="#" target="_blank" >《积分商城客户协议书》</a></cite>

		<input type="submit" value="提 交">
	</form>
	




</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>
