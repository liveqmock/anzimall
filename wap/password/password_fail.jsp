<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>


<div class="main">

	<div class="results">
		<h1><img src="/wap/images/icon_fail.png" ></h1>
		<h2>对不起，您的密码设置失败！</h2>
		<p><img src="/wap/images/icon_note.png" ><strong>可能原因：</strong><br>
			1、您设置的新密码与旧密码相同<br>
			2、该商品兑换期限已过期，请选择未过期商品<br>
			3、密码长度只能为6-18位<br/>
			4、操作失误，请重新操作或返回上一步<br>
			5、网速太卡，请检查您的网速，以免影响您的注册流程
		</p>

	</div>

	<a href="#" class="toback">返回上一步>></a>



</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>