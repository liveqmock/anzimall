<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>


<div class="main">

	<div class="results">
		<h1><img src="/wap/images/icon_success.png" ></h1>
		<h2>恭喜您，您已经成功兑换！</h2>
		<p><img src="/wap/images/icon_note.png" ><strong>温馨提示：</strong><br>
			1、请到“个人中心-->我的兑换”查看具体信息<br>
			2、仅支持使用带有“安子支付”标识的POS机刷卡付款。<br>
			3、有效期为 至 ，请在有效期内使用。<br>
			4、消费过程中如遇到任何问题，请及时联系银联商务客服：95534<br>
		</p>

	</div>

	<a href="/getUserExchangeList_wap.shtml" class="toback">查看我的兑换>></a>



</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>