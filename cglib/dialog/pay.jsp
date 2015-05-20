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

</style>

	<div class="product cs">

		<h3><img src="${url }${goodsmap.scopeimg }" alt="" width="248px" height="250px"></h3>
		<h2>${goodsmap.name }</h2>
		<p class="product_nte">到店中刷卡消费全单<em>8</em>折送<em>10%</em>积分</p>
		<p class="product_dis">【商品描述】<span>${goodsmap.account }</span></p>

		<cite>
			需付金额：<strong>${goodsmap.integral * number}</strong>
			当前可用积分：<strong>${integer }</strong>积分<br>
			因您的积分总额不足暂时只能支持全额支付
		</cite>
		
		<p><strong>兑换数量：</strong>${number}</p>
		<p><strong>兑换方式：</strong>
		<c:if test="${goodsmap.type eq '1'}">线下兑换<input type="hidden" name="type" value="1"></c:if>
		<c:if test="${goodsmap.type eq '0'}">快递邮寄<input type="hidden" name="type" value="0"></c:if></p>


		<form action="/to_pay_goods.shtml" class="fukrm" method="post">
		

		<c:if test="${goodsmap.type eq '0'}">
			<!-- 快递邮寄 -->
			<span style="margin-left: 37px;display: block;color: #0EAB28;margin-bottom: 5px;">请选择收货地址：</span>
			<c:forEach var="addresslist" items="${addresslist}" varStatus="status">
				<label><input type="radio" name="aid" value="${addresslist.id }" <c:if test="${status.count eq 1}">checked="checked"</c:if> >${addresslist.province} ${addresslist.city} ${addresslist.county} ${addresslist.address} 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${addresslist.name} 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${addresslist.phone}</label>
			</c:forEach>
		</c:if>

			<input type="hidden" name="partner" value="000000100000014">
			<input type="hidden" name="tradechannel" value="0">
			<input type="hidden" name="name" value="安子支付">
			<input type="hidden" name="cname" value="${goodsmap.name }">
			<input type="hidden" name="body" value="${goodsmap.account }">
			<input type="hidden" name="userintegral" value="${integer}">
			<input type="hidden" name="gid" value="${goodsmap.id }">
			<input type="hidden" name="price" value="${goodsmap.integral }">
			<input type="hidden" name="number" value="${number }">
			<input type="hidden" name="type" value="${goodsmap.type }">
			<input type="hidden" name="goodsintegraltotal" value="${goodsintegraltotal }">
			<input type="hidden" name="partner" value="${goodsmap.mid  }">
			<input type="hidden" name="cname" value="${goodsmap.name  }">
			<input type="hidden" name="goodscopimg" value="${goodsmap.scopeimg }">
			<input type="hidden" name="goodsaccount" value="${goodsmap.account }">
			<br>


			<c:if test="${goodsmap.type eq '0'}">
				<c:if test="${fn:length(addresslist) > 0 }">
					<div style="text-align: center;">
						<input class="submit" type="submit" value="立即购买">
						<!-- <a href="/get_merchantsgoods_details.shtml?id=${goodsmap.id}">查看详细>></a> -->
					</div>
				</c:if>
				<c:if test="${fn:length(addresslist) <= 0}">
					<div style="text-align: center;">
						<a href="/cglib/dialog/address.jsp" class="addaddress"><strong>添加收货人地址</strong>(未有收货人地址)</a> 
					</div>
					
				</c:if>

			</c:if>

			<c:if test="${goodsmap.type eq '1'}">
				<div style="text-align: center;">
					<input class="submit" type="submit" value="立即购买">
					<c:if test="${goodsmap.type eq '1'}">
						<span>您的积分不足以兑换该商品，请到线下消费，攒足积分再兑换，<a href="#">查看我附近...</a></span>
						<a href="#"></a>

					</c:if>
					<!-- <a href="/get_merchantsgoods_details.shtml?id=${goodsmap.id }">查看详细>></a> -->
				</div>
			</c:if>


		</form>

	</div>
	

	<script>

		dialog.dialog("option","title",'兑换${goodsmap.name}');

		$('.product').find('form').fukrm().ajaxForm({
			type:'POST',
			dataType:'text',
			beforeSubmit:function(data,form){
				var check = [];
				form.find('input,textarea,select').filter('[check]').filter(':visible').each(function(){
					var the = $(this);
					if(!the.siblings('i').is('.form-note-success') && !the.formCheck() ){
						check.push(the);
					}
				});
				if(check.length>0){
					check[0].focus();
					return false;
				}
				dialog.dialog('close');
				loading.show();
			},
			success: function(text) {
				dialog.html(text).dialog('open');
			}

		}).find('.addaddress').on('click',function(){

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
		})





	</script>


