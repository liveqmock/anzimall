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
.product form{clear: both;border-top: 1px dashed #ddd;margin: 0 10px;padding: 15px 0 30px;}
.product form label{margin-left: 30px;margin-bottom: 0;line-height: 24px;}
.product p{margin-left: 268px;}
.product  .addaddress{display: inline-block; position: relative;  font-size: 12px; height: 40px; line-height: 40px;padding: 0 40px; border-radius: 2px; color: #fff; background: #ee2323; text-align: center; border: none; cursor: pointer; behavior: url(pie.htc);} 
.product  .addaddress strong{font-size: 14px;}


.product_money{display: inline-block;padding: 0 20px; vertical-align: top;height: 40px;line-height: 40px;margin-left: 10px;color: #fff;background: #0EAB28;border-radius: 3px;}


</style>

	<div class="product cs">

		<h3><img src="${goodsmap.scopeimg }" alt="" width="248px" height="250px"></h3>
		<h2>${goodsmap.name }</h2>
		<!--<p class="product_nte">到店中刷卡消费全单<em>8</em>折送<em>10%</em>积分</p>-->
		<p class="product_dis">【商品描述】<span>${goodsmap.account }</span></p>

		<cite>
				需付：<strong class="product_inte">${goodsmap.pay_integer * number}</strong>积分&nbsp;+&nbsp;<strong class="product_inte">${goodsmap.pay_maney * number}</strong>元<br>
				可用积分：<strong class="product_have">${integer }</strong>积分
		</cite>
		
		<p><strong>兑换数量：</strong>${number}</p>
		<p><strong>兑换方式：</strong>
		<c:if test="${goodsmap.type eq '1'}">线下兑换<input type="hidden" name="type" value="1"></c:if>
		<c:if test="${goodsmap.type eq '0'}">快递邮寄<input type="hidden" name="type" value="0"></c:if></p>


		<form action="/sava_exchange_goods.shtml" class="fukrm" method="post">
		

			<input type="hidden" name="tmid" value="${tmid }">
			<input type="hidden" name="gid" value="${goodsmap.id }">
			<input type="hidden" name="number" value="${number }">
			<input type="hidden" name="exchangetype" value="integral" class="pruduct_exchangetype">
		<c:if test="${goodsmap.type eq '0'}">
			<!-- 快递邮寄 -->
			<span style="margin-left: 37px;display: block;color: #0EAB28;margin-bottom: 5px;">请选择收货地址：</span>
			<c:forEach var="addresslist" items="${addresslist}" varStatus="status">
				<label><input type="radio" name="aid" value="${addresslist.id }" <c:if test="${status.count eq 1}">checked="checked"</c:if> >${addresslist.province} ${addresslist.city} ${addresslist.county} ${addresslist.address} 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${addresslist.name} 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${addresslist.phone}</label>
			</c:forEach>
		</c:if>
		<span style="margin-left: 37px;display: block;color: #0EAB28;margin-bottom: 5px;">备注：</span>
		<label><input type="text" name="remark" value="" style="margin-left: 7px;display: block;margin-bottom: 5px;" /></label>
		<span style="margin-left: 37px;display: block;color:red;margin-bottom: 5px;">（50字以内）</span>


			<br><br>

			<c:if test="${fn:length(addresslist) <= 0 && goodsmap.type eq '0' }">
				<div style="text-align: center;"><a href="/cglib/dialog/address.jsp" class="addaddress"><strong>添加收货人地址</strong>(未有收货人地址)</a> </div>
			</c:if>

			 <c:if test="${fn:length(addresslist) > 0 || goodsmap.type eq '1'}">
			
				<div style="text-align: center;">

					<input class="submit product_submit" type="submit" value="立即兑换">

					<a href="#" class="product_money">在线支付 (<strong>
						<c:if test="${goodsmap.type eq 0}">${(goodsmap.pice+goodsmap.freight)*number}</c:if>
						<c:if test="${goodsmap.type eq 1}">${goodsmap.pice*number}</c:if>
						</strong> 元 )
					</a>
					
				</div>
				 
			</c:if>
			
<!-- 

			<div class="product_monney">
				选择支付方式：<br>
				<c:if test="${goodsmap.type eq 0}">
				<label><input type="radio" name="exchangetype" value="integral" checked="checked">积分：<strong>${(goodsmap.integral+goodsmap.freight)*number}</strong>积分</label>
				<label><input type="radio" name="exchangetype" value="money">金额：<strong>${(goodsmap.pice+goodsmap.freight)*number}</strong>元</label>
				</c:if>
				<c:if test="${goodsmap.type eq 1}">
				<label><input type="radio" name="exchangetype" value="integral" checked="checked">积分：<strong>${goodsmap.integral*number}</strong>积分</label>
				<label><input type="radio" name="exchangetype" value="money">金额：<strong>${goodsmap.pice*number}</strong>元</label>
				</c:if>
			</div>
 -->


			


		</form>

	</div>
	

	<script>

		dialog.dialog("option","title",'兑换${goodsmap.name}');

	
		$('.product').find('form').find('.addaddress').on('click',function(){
			loading.show();
			dialog.dialog('close');
			$.ajax({
				type: "POST",
				url: $(this).attr('href'),
				dataType: "text",
				success: function(text){
					dialog.html(text).dialog('open');
				}
			});
			return false;
		});


		$('.product_money').on('click',function(){
			$('.pruduct_exchangetype').val('money');
			$(this).closest('form').attr('target','_balnk').submit();
			dialog.dialog('close');
			return false;
		});
		

		$('.product_submit').on('click',function(){
			var form = $(this).closest('form');
			$.ajax({ 
				url: form.attr('action'),
				dataType: "text", 
				data: form.serialize(),
				success: function(text){
					dialog.html(text).dialog('open');
				}
			});

			dialog.html('').dialog('close');
			return false;
		});





	</script>

