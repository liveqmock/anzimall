<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="我的银行卡" /></jsp:include>

<div class="main">
	

	<section class="bankcard">
		<ul>
		
		<c:forEach var="list" items="${list}" varStatus="status">
			<li><img src="/wap/images/bankcard_1.png">
			
				<h3><strong>${list.bankname }</strong>银行卡号:${list.bankcardno }</h3>
				<a href="/delUserBankcard_wap.shtml?id=${list.id}" onclick="return confirm('确认删除该银行卡吗')"><img src="/wap/images/icon_delect.png"></a>
			</li>
		</c:forEach>
			<!--<li><img src="/wap/images/bankcard_2.png">
				<h3><strong>工商银行</strong>尾号4137储蓄卡</h3>
				<a href="#"><img src="/wap/images/icon_delect.png"></a>
			</li>
			<li><img src="/wap/images/bankcard_3.png">
				<h3><strong>平安银行</strong>尾号4137储蓄卡</h3>
				<a href="#"><img src="/wap/images/icon_delect.png"></a>
			</li>
			<li><img src="/wap/images/bankcard_4.png">
				<h3><strong>建设银行</strong>尾号4137储蓄卡</h3>
				<a href="#"><img src="/wap/images/icon_delect.png"></a>
			</li>
			<li><img src="/wap/images/bankcard_5.png">
				<h3><strong>中国银行</strong>尾号4137储蓄卡</h3>
				<a href="#"><img src="/wap/images/icon_delect.png"></a>
			</li>-->
			
			</ul>
		
		<div style="color: #0383f9;margin:0 0.8rem;">最多可以添加5张银行卡</div>

		<a href="/to_userAddBankcard_wap.shtml" class="link">新增银行卡>></a>
	</section>



</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>