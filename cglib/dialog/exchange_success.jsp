<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<style>
	
	.exchange_res{width:650px; }
	.exchange_res h2{font-size: 20px;font-weight: normal;line-height: 32px;text-align: center;padding: 30px;} 
	.exchange_res h2 img{vertical-align: bottom;}
	.exchange_res>div{background: #f6f5f2;text-align: center;padding: 20px;}

	.exchange_res cite{display: inline-block;text-align: left;font-style: normal;font-size: 12px;line-height: 24px;}
	.exchange_res cite a{color: #5c9d13;font-family: '宋体';outline: none;}
	.dialog_close{display: block;width: 190px;height: 40px;margin: 40px auto 30px; text-align: center;line-height: 40px;text-align: center;font-size: 16px;color: #fff;background: #ee2323;}
</style>

<div class="exchange_res">
	
	<h2><img src="/images/icon_success.png">恭喜您，您已经成功兑换${storename }</h2>
	
	<div>
		<cite>
			 <img src="/images/iocn_dialog_note.png" style="margin-right:3px;">温馨提示：<br>
			1、请到“个人中心-->我的兑换”查看具体信息<br/>
			2、仅支持使用带有“安子支付”标识的POS机刷卡付款。<br/>
			3、有效期为${startdate } 至 ${enddate }，请在有效期内使用。<br/>
			4、消费过程中如遇到任何问题，请及时联系银联商务客服：95534<br/>
			5、您可以通过右上的关闭按钮关闭本页面，<br/>
			<a href="/user_exchange.shtml">查看我的兑换>></a>
		</cite>
	</div>
	
	<a href="#" class="dialog_close">关闭对话框</a>
</div>

<script>
	
	$('.exchange_res').on('click','a.dialog_close',function () {
		dialog.dialog('close');
		return false;
	})
</script>

