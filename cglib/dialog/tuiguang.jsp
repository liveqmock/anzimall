<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>


<style>
	.dialog_box{line-height: 28px;padding: 20px;}
	.dialog_box a{outline: none;}
</style>

<div class="dialog_box">
	

	<p style="font-size: 24px;font-weight: bold;">您可以通过以下方式推广来赚取返利积分:</p>
	<p><span style="color: red;">1.注册码：</span>推荐您的朋友注册时，只需手机扫一扫此二维码，注册的用户账号将与您<br>
		的账号绑定，此用户在商城旗下商户消费后将返利积分返回到您的账户。</p>
	<div id="qrcodeTable"></div>
	<p><span style="color: red;">2.注册链接：</span>将您的专属注册链接分享给您的朋友，注册后此用户账号将与您的账号<br>
		绑定，此用户在商城旗下商户消费后将返利积分返回到您的账户</p>
	<p><span style="color: #11A66E;">您的注册链接：<a href="http://www.anzimall.com/to_register_info.shtml?uid=${userdetail.id}">http://www.anzimall.com/to_register_info.shtml?uid=${userdetail.id}</a></span></p>
	
</div>
<script type="text/javascript" src="js/jquery.qrcode.js"></script> 
<script type="text/javascript" src="js/qrcode.js"></script>
<script>
	
	$("#qrcodeTable").qrcode({
		render	: "table",
		text	: "http://www.anzimall.com/to_register_wap.shtml?uid= "+${userdetail.id},
		width:"120",
		height:"120"
	});	
	
	dialog.dialog("option","title", "怎样推广赚取积分？");
</script>

