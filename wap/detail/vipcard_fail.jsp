<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>


<div class="main">

	<div class="results">
		<h1><img src="/wap/images/icon_fail.png" ></h1>
		<h2>对不起，您添加的会员卡失败！</h2>
		<p><img src="/wap/images/icon_note.png" ><strong>可能原因：${msg }</strong><br>
			1、您已添加过该会员卡，本店所有会员卡不能重复添加<br>
			2、会员卡已过期，请选择添加未过期会员卡<br>
			3、操作失误，请重新操作或返回上一步<br>
			4、网速太卡，请检查您的网速，以免影响您的操作<br>
		</p>

	</div>

	<a  class="toback">返回上一步>></a>



</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>