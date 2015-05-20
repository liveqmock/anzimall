<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>


<div class="main">

	<div class="results">
		<h1><img src="/wap/images/icon_success.png" ></h1>
		<h2>恭喜您，您已经成功添加会员卡！</h2>
		<p><img src="/wap/images/icon_note.png" ><strong>您可以：</strong><br>
			1、在这家门店刷卡消费享9折<br>
			2、在个人中心中查看您的会员等级，积分达到会员等级享更多折扣<br>
			3、可使用积分兑换该店商品<br>
		</p>

	</div>

	<a href="/queryUserVip_wap.shtml" class="toback">查看更多会员卡>></a>



</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>