<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 

<style>


.product{float: right;width: 600px;padding: 20px 10px 0 0; background: #fefcf5;}
.product h2{line-height: 30px;height: 30px;overflow: hidden;}
.product h3{float: left;width: 248px;height: 250px;margin:0 10px 10px;border:2px solid #ddd;}
.product_nte{margin-left: 73px;line-height: 30px;font-size: 12px;color: #6b9a03;}
.product_nte em{font-style: normal;color: #ee2323;}
/*.product p{height: 54px;overflow: hidden; font-size: 12px;line-height: 18px;color: #575757;background: #f7f7f7;padding: 10px 20px;}*/
.product cite{display: block; position: relative;margin:10px 10px 10px 268px; border-top: 1px dashed #ddd;border-bottom: 1px dashed #ddd; padding: 10px 0;  font-size: 12px;font-style: normal;color:#444;line-height: 30px;}
.product cite strong{font-size: 30px;font-family: '黑体';color: #ee2323;}
.product cite span{position: absolute;right: 0;top: 0;padding-top: 12px; height: 100%; color:#A0A3A3; width: 200px;padding-left: 20px; height: 53px;border-left: 1px solid #dcdcdc;}
.product cite span:before{content: '';position: absolute;left: 0;top: 0;height: 100%;width: 1px;background: #fff;}
.product cite span em{font-style: normal;font-size: 14px;font-weight: bold;color: #ee2323;}
.product form{clear: both;margin: 0 10px;padding: 15px 0 30px;text-align: center;}
.product form label{margin-left: 30px;margin-bottom: 0;line-height: 24px;}
.product p{margin-left: 268px;}
.product  .addaddress{display: inline-block; position: relative;  font-size: 12px; height: 40px; line-height: 40px;padding: 0 40px; border-radius: 2px; color: #fff; background: #ee2323; text-align: center; border: none; cursor: pointer; behavior: url(pie.htc);} 
.product  .addaddress strong{font-size: 14px;}

</style>


	<div class="product cs">

		<h3><img src="${goodsmap.scopeimg }" alt="" width="248px" height="250px"></h3>
		<h2>${goodsname }</h2>
		<p class="product_nte">到店中刷卡消费全单<em>8</em>折送<em>10%</em>积分</p>
		<p class="product_dis">【商品描述】<span>${goodsaccount }</span></p>

		<cite>
			商品单价：<strong>${price}</strong><br>
			商品数量：<strong>${number}</strong><br>
			需付积分：<strong>${goodsintegraltotal}</strong>积分+<strong>0</strong>元<br>
		</cite>
		
		


		<form class="fukrm" action="http://182.50.116.24:8080/mcsmgr/upop/anzipayto.jsp"  method="post" target="_bank"> 


			<input type="hidden"  name="subject" value="${subject}">
			<input type="hidden"  name="body" value="${body}">
			<input type="hidden"  name="ordertime" value="${order_time}">
			<input type="hidden"  name="partner" value="${partner}">
			<input type="hidden"  name="out_trade_no" value="${out_trade_no}">
			<input type="hidden"  name="total_fee" value="${total_fee}">
			<input type="hidden"  name="sign" value="${sign}">
			<input type="hidden"  name="name" value="${name}">
			<input type="hidden"  name="notify_url" value="${notify_url}">
			<input type="hidden"  name="return_url" value="${return_url}">
			<input type="hidden"  name="_input_charset" value="${_input_charset}">
			<input type="hidden"  name="sign_type" value="${sign_type}">
			

			
		
			<input type="submit" class="confirm_true" value="立即支付">
		</form>
			

	</div>
	

	<script>

		dialog.dialog("option","title",'兑换${goodsname}');
	</script>


