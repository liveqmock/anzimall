<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="收货地址" /></jsp:include>

<div class="main">
	

	<form action="/addUserAddress_wap.shtml" method="post" class="form">
		
		<cite><span><em>*</em>收货人姓名：</span><input type="text" name="name" value="" placeholder="请输入您的用户名"></cite>
		<cite><span><em>*</em>联系方式：</span><input type="text" name="phone" value="" placeholder="请输入您的手机号"></cite>

		<cite class="js-city">
			<span><em>*</em>选择省市区：</span>
			<select class="prov" name="province" default="" ></select>
			<select class="city" name="city" default="" ></select>
			<select class="town" name="county" default="" ></select>
		</cite>

		<cite><span><em>*</em>详细地址：</span><input type="text" name="address" value="" placeholder="请输入您的详细地址"></cite>

		<div style="color: #0383f9;">最多可以添加5个地址</div>

		<input type="submit" value="添加">

	</form>
	


</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>