<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>


<div class="main">

	<form action="/userAddVipcard_wap.shtml" method="post">
		<section class="card" style="margin: 0.8rem;background: #fefcf7;border: 1px solid #c5c5c5;">
			<cite>
				<h6><a><img src="${merchants_vipcard.vipphoto}"></a></h6>
				<h4><a><img src="${merchants_vipcard.logo}" alt="${merchants_vipcard.username}"></a></h4>
				<span><a>NO.00001</a></span>
				<h3><a>${merchants_vipcard.username}</a></h3>
				<p><a>最高可享全单${merchants_vipcard.upgrade1 }折优惠</a></p>
			</cite>
			<h2><strong>${merchants_vipcard.username}会员卡</strong></h2>
			<div>
				<p>说明：<br>
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
		</section>

		<p style="margin:0 0.8rem;"><img src="/wap/images/icon_impor.png" style="width:16px;vertical-align: middle;">加入该会员卡,当您使用您的下列银行卡刷卡时可享受更多折扣！</p>


		<section class="bankcard">
			<ul>
			<c:forEach var="userlist" items="${userlist}" varStatus="status">
				<li><img src="/wap/images/bankcard_1.png">
					<h3><strong>${userlist.bankname }</strong>尾号${userlist.bankcardno}储蓄卡</h3>
				</li>
			</c:forEach>
			</ul>
			
		</section>
		<input type="hidden" name="vid" value="${merchants_vipcard.id }">
		<div class="form" style="margin:0 0.8rem"><input type="submit" value="确认加入" ></div>
	</form>


</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>