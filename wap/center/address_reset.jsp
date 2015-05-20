<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="收货地址" /></jsp:include>

<div class="main">
	

	<form action="/updateUserAddress_wap.shtml" method="post" class="form">
		
		<cite><span><em>*</em>收货人姓名：</span><input type="text" name="name" value="${list.name }"></cite>
		<cite><span><em>*</em>联系方式：</span><input type="text" name="phone" value="${list.phone }"></cite>

		<cite class="js-city">
			<span><em>*</em>选择省市区：</span>
			<select class="prov" name="province" default="${list.province }" ></select>
			<select class="city" name="city" default="${list.city }" ></select>
			<select class="town" name="county" default="${list.county }" ></select>
		</cite>

		<cite><span><em>*</em>详细地址：</span><input type="text" name="address" value="${list.address }"></cite>

		<a href="/queryUserAddress_wap.shtml" style="color:#0383f9;">不修改，直接返回>></a>
		<input type="hidden" name="id" value="${list.id }">
		<input type="submit" value="修改">

	</form>
	


</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>