<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="用户登陆" /></jsp:include>
<style>
	nav{display: none;}
</style>

<div class="main">

	<form action="/login_wap.shtml" method="post" class="form login">
		${ msg }
		<h1><img src="/wap/images/header_user.png"></h1>
		<cite><span><img src="/wap/images/icon_1.png"></span><input type="text" name="phone" placeholder="请重新输入手机账号"></cite>
		<cite><span><img src="/wap/images/icon_2.png"></span><input type="password" name="password" placeholder="请输入登录密码"></cite>
		<p class="form_note"><a href="/wap/password/password_basic.jsp" style="color:#0383f9;">忘记密码? </a></p>

		<input type="submit" value="登 录">

	</form>



</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>
<script>
	$('.header_load').attr('href','/to_register_wap.shtml').html('注册');

</script>