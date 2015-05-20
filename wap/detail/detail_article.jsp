<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<jsp:include page="/wap/header.jsp" flush="true"/>

<div class="product_tag">
	<div class="main">
		<a href="/getExchangeGoods_wap.shtml?id=${list_goods.id }">基本信息</a>
		<a href="/getGoodsDetails_wap.shtml?id=${list_goods.id }" class="active">商品详情</a>
	</div>
</div>

<div class="main">


	
	<section class="product_atl">
		${list_goods.note }
	</section>


	<form action="/toSaveUserExchange_wap.shtml" method="post">
		<section class="product">
			<h3><img src="${list_goods.scopeimg}" alt=""></h3>
			<h4>${list_goods.name}</h4>
			<p>${list_goods.account}</p>
			<h5><em>0</em>元+<em>${list_goods.pice}</em>积分</h5>
		</section>
	
	
		<section class="exchange">
			<cite><span>数量：</span>
				<input type="text" name="number" value="1">
				<i><b>+</b><b>-</b></i>
			</cite>
			<strong>需：<em>${list_goods.integral}</em>积分</strong>
	
			<input type="hidden" name="id" value="${list_goods.id }">
			<input type="submit" value="立即兑换">
	</form>
		</section>
		<c:if test="${list_goods.type eq '1'}">
		<div class="product_note">此商品仅支持线下兑换</div>
		</c:if>
		<c:if test="${list_goods.type eq '0'}">
		<div class="product_note">此商品仅支持快递邮寄</div>
		</c:if>
	
		<div class="product_more"><a href="/getMerchantsDetails_wap.shtml?mid=${list_goods.mid }" >进入商家查看更多商品>></a></div>
	

</div>


<jsp:include page="/wap/footer.jsp" flush="true"/>