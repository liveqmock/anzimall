<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>


<div class="main">

	<div class="results">
		<h1><img src="/wap/images/icon_fail.png" ></h1>
		<h2>对不起，您注册过程中出了点问题！</h2>
		<p><img src="/wap/images/icon_note.png" ><strong>可能原因：</strong><br>
			1、您的帐号已经注册过,请直接登录<br>
			2、该帐号已过期，请选择其他帐号<br>
			3、密码长度只能为6-18位<br/>
			4、操作失误，请重新操作或返回上一步<br>
			5、网速太卡，请检查您的网速，以免影响您的注册流程
		</p>

	</div>

	<a href="#" class="toback">返回上一步>></a>



</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>