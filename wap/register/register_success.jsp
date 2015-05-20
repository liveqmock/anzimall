<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>


<div class="main">

	<div class="register_success">
		<ul>
			<li><img src="/wap/images/icon_2.png"><span>手机号码：</span>${phone } </li>
			<li><img src="/wap/images/icon_3.png"><span>身份证号：</span>${identity } </li>
			<li><img src="/wap/images/icon_4.png"><span>银行卡号：</span>${bankcardno }</li>
			<li><img src="/wap/images/icon_5.png"><span>开户地址：</span>${address }</li>
		</ul>
	</div>

	<div class="product_note" style="color:#666;">确认注册信息无误后，请点击确认前往个人中心完善资料，谢谢合作！</div>

	<a href="/index_wap.shtml" class="link_submit">确认</a>



</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>