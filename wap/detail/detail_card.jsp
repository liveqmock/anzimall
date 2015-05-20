<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/wap/header.jsp" flush="true"/>


<div class="main">

	<!-- 商户 -->
	<div class="store">
		<ul>
			<li>
				<h3><a ><img src="${list_merchant.enterpriseimg}" alt=""></a></h3>
				<cite>
					<h4><img src="${list_merchant.logo}" alt=""><br>${list_merchant.storename}</h4>
					<p>
						评分等级：
						<i>
							<img src="${list_merchant.enterpriseimg}">
							<img src="${list_merchant.enterpriseimg2}">
							<img src="${list_merchant.enterpriseimg3}">
							<img src="${list_merchant.enterpriseimg4}">
						</i><br>
						刷卡折扣：全单9折<br>
						行业类别：${list_merchant.tid }<br>
					</p>
				</cite>
			</li>
		</ul>
		<h2>店铺地址：${list_merchant.provice }${list_merchant.city }${list_merchant.county }${list_merchant.address } <a href="/to_detail_map_wap.shtml?mid=${ list_merchant.id}">地图</a></h2>
	</div>


	<div class="intro">
		<i class="intro_close"><img src="/wap/images/intro_close.png" ></i>
		<h3>店铺介绍：</h3>
		<p>${list_merchant.note }</p>
	</div>



	<div class="store_tag">
		<a href="/getMerchantsDetails_wap.shtml?mid=${list_merchant.id }">所有商品</a>
		<a href="/getMerchantsDetailsVip_wap.shtml?mid=${list_merchant.id }" class="active">商家会员卡</a>
	</div>


	<!-- 商家会员卡 -->
	<section class="card">
		<ul>
		<c:forEach var="merchants_vipcard" items="${merchants_vipcard}" varStatus="status" begin="0" end="7" step="1">
			<li>
				<cite>
					<h6><a ><img src="${merchants_vipcard.vipphoto}"></a></h6>
					<!--<h4><a ><img src="${merchants_vipcard.logo}" alt="${merchants_vipcard.username}"></a></h4>-->
					<span><a >NO.00001</a></span>
					<h3><a >${merchants_vipcard.username}</a></h3>
					<p><a >最高可享全单${merchants_vipcard.upgrade1 }折优惠</a></p>
				</cite>
				<h2>
					<strong>${merchants_vipcard.username}体验卡</strong>
					<a href="/toUserAddVipcard_wap.shtml?vid=${merchants_vipcard.id }"><img src="/wap/images/card_icon.png">放入银行卡</a>
				</h2>
				<div>
					<p>
							<b>${merchants_vipcard.rulename1}</b>：0≤累计消费＜${merchants_vipcard.discount2}元，享<font color="red">${merchants_vipcard.upgrade1}折</font><br>	
						<c:if test="${!empty merchants_vipcard.rulename2}">
							<b>${merchants_vipcard.rulename2}</b>：${merchants_vipcard.discount2}≤累计消费＜${merchants_vipcard.discount3}元，享<font color="red">${merchants_vipcard.upgrade2}折</font><br>
						</c:if>
						<c:if test="${!empty merchants_vipcard.rulename3}">
							<b>${merchants_vipcard.rulename3}</b>：${merchants_vipcard.discount3}≤累计消费＜${merchants_vipcard.discount4}元，享<font color="red">${merchants_vipcard.upgrade3}折</font><br>
						</c:if>
						<c:if test="${!empty merchants_vipcard.rulename4}">
							<b>${merchants_vipcard.rulename4}</b>：${merchants_vipcard.discount4}≤累计消费＜${merchants_vipcard.discount5}元，享<font color="red">${merchants_vipcard.upgrade4}折</font><br>
						</c:if>	
						<c:if test="${!empty merchants_vipcard.rulename5}">
							<b>${merchants_vipcard.rulename5}</b>：${merchants_vipcard.discount5}≤累计消费，享<font color="red">${merchants_vipcard.upgrade5}折</font>
						</c:if>		
					</p>	
				</div>
			</li>
		</c:forEach>	
		
		</ul>
	</section>


</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>