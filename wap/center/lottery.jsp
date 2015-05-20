<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="推广链接" /></jsp:include>


<div class="main">
	
	<section class="lottery_qrcode">
		
		<p class="qrcode" href="http://www.anzimall.com/to_register_info.shtml?tg_sigen=${tg_sigen }"></p>
		<br><br>
		<p>链接地址：http://www.anzimall.com/to_register_info.shtml?tg_sigen=${tg_sigen }</p>
		<br>
		<a href="/queryUserSpread_wap.shtml" class="link">查看我的返利积分&gt;&gt;</a>
	</section>

</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>
<script type="text/javascript" src="/js/jquery.qrcode.js"></script> 
<script type="text/javascript" src="/js/qrcode.js"></script>
<script>
	var qrcodeTable = $(".qrcode");
	qrcodeTable.qrcode({render: "img",text:qrcodeTable.attr('href'),width:120,height:120});

</script>