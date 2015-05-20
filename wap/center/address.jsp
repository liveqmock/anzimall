<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="收货地址" /></jsp:include>

<div class="main">
	
	<section class="address">
		<ul>
		<c:forEach var="list" items="${list}" varStatus="status">
			<li>
				<h3><strong>${list.name }</strong><span>${list.phone }</span></h3>
				<p>${list.province }${list.city }${list.county }${list.address }</p>
				<h6>
					<a href="/toUpdateUserAddress_wap.shtml?id=${list.id }"><img src="/wap/images/icon_edit.png"></a>
					<a href="/delUserAddress_wap.shtml?id=${list.id }" onclick="return confirm('确认删除该收货地址吗')"><img src="/wap/images/icon_delect.png"></a>
				</h6>
			</li>
		</c:forEach>
		</ul>
		
		<div style="color: #0383f9;margin:0 0.8rem;">最多可以添加5个地址</div>
		<c:if test="${fn:length(list) < 5}">
		<a href="/wap/center/address_add.jsp" class="link">新增收货地址>></a>
		</c:if>	
	</section>




</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>