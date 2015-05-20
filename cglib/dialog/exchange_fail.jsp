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
	

	<h2><img src="/images/icon_faile.png">兑换失败，请重新再试</h2>
	
	<div>
		<cite>
			<img src="/images/iocn_dialog_note.png" style="margin-right:3px;"> 可能的原因是：<br>	  
			1、您的积分余额不足，请选择其它商品<br>
			2、该商品兑换期限已过期，请选择未过期商品<br>
			3、操作失误，请重新操作或返回上一步<br>
			4、网速太卡，请检查您的网速，以免影响您的兑换流程<br>
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



