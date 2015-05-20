<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="我的兑换" /></jsp:include>

<div class="main">
	

	<form action="/saveUserExchange_wap.shtml" method="post">
	
		<section class="exchange_item">
			<h3><strong><img src="/wap/images/icon_19.png">${list_goods.username }</strong></h3>
			<p>
				<img src="${list_goods.scopeimg }">
				<a href="#">${list_goods.name }</a>
				<b><em>${list_goods.pay_maney}</em>元+<em>${list_goods.pay_integer}</em>积分</b><br>
				<c:if test="${list_goods.type eq '0'}">
					<c:if test="${empty list_goods.freight }"><b>运费：<em>0</em>元</b></c:if>
					<c:if test="${!empty list_goods.freight }"><b>运费：<em>${list_goods.freight*number }</em>元</b></c:if>
				</c:if>
				
				
			</p>
			<h6><strong>兑换数量</strong><span>${number }</span></h6>
			<h6><strong>兑换方式</strong><span>
				<c:if test="${list_goods.type eq '1'}">线下兑换</c:if>
				<c:if test="${list_goods.type eq '0'}">快递邮寄</c:if>
			</span></h6>
			<c:if test="${list_goods.type eq '1'}">
					<h6><strong>合计</strong><span><em>${list_goods.pay_maney*number}</em>元+<em>${list_goods.pay_integer*number }</em>积分</span></h6>
				</c:if>
				<c:if test="${list_goods.type eq '0'}">
					<c:if test="${!empty list_goods.freight }"><h6><strong>合计</strong><span><em>${(list_goods.pay_maney+list_goods.freight)*number}</em>元+<em>${list_goods.pay_integer*number }</em>积分</span></h6></c:if>
				</c:if>
			
		</section>

		
		<c:if test="${list_goods.type eq '0'}">
		<section class="exchange_addr">
			<!-- 快递邮寄 -->
			<h3>请选择收货地址：</h3>
			<c:forEach var="addresslist" items="${addresslist}" varStatus="status">
				<label>
					<input type="radio" name="aid" value="${addresslist.id }" <c:if test="${status.count eq 1}">checked="checked"</c:if> >
					<h4><strong>${addresslist.name}</strong><span>${addresslist.phone}</span></h4>
					<p>${addresslist.province} ${addresslist.city} ${addresslist.county} ${addresslist.address} </p>
				</label>
			</c:forEach>
		</section>
		</c:if>
			

		

			<input type="hidden" name="type" value="${list_goods.type }">
			<input type="hidden" name="goodsintegraltotal" value="${goodsintegraltotal }">
			<input type="hidden" name="userintegral" value="${integer}">
			<input type="hidden" name="gid" value="${list_goods.id }">
			<input type="hidden" name="money" value="${list_goods.integral }">
			<input type="hidden" name="number" value="${number }">
			<input type="hidden" name="mid" value="${list_goods.mid  }">
			<input type="hidden" name="cname" value="${list_goods.name  }">
			<br>


			<c:if test="${list_goods.type eq '0'}">
				<c:if test="${fn:length(addresslist) > 0 }"><div class="form" style="margin:0 0.8rem"><input type="submit" value="立即兑换" ></div></c:if>
				<c:if test="${fn:length(addresslist) <= 0}">
					<div style="text-align: center;">
						<a href="/cglib/dialog/address.jsp" class="addaddress"><strong>添加收货人地址</strong>(未有收货人地址)</a> 
					</div>
				</c:if>
			</c:if>

			<c:if test="${list_goods.type eq '1'}"><div class="form" style="margin:0 0.8rem"><input type="submit" value="立即兑换" ></div></c:if>

	</form>


</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>