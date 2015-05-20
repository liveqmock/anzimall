<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>

<div class="main">
	<section class="basic">
		<h2>
			<span><img src="/wap/images/icon_6.png">头像</span>
			<strong><img src="${userdetail.portrait}" ></strong>
<!--			<a href="#"><img src="/wap/images/basic_link.png" ></a>-->
		</h2>

		<h3>
			<span><img src="/wap/images/icon_7.png">积分总额</span>
			<em>${integer }</em>
<!--			<a href="#"><img src="/wap/images/basic_link.png" ></a>-->
		</h3>

		<ul>
			<li><span><img src="/wap/images/icon_8.png">用户名</span><b>${userdetail.username }</b></li>
			<li><span><img src="/wap/images/icon_9.png">性别</span><b><c:if test="${userdetail.sex eq '1'}">男</c:if><c:if test="${userdetail.sex eq '0'}">女</c:if><c:if test="${userdetail.sex eq '2'}">保密</c:if></b></li>
			<li><span><img src="/wap/images/icon_10.png">生日</span><b>${userdetail.birthday }</b></li>
			<li><span><img src="/wap/images/icon_11.png">邮箱</span><b>${userdetail.email }</b></li>
			<li><span><img src="/wap/images/icon_12.png">QQ</span><b>${userdetail.qq }</b></li>
			<li><span><img src="/wap/images/icon_13.png">地址</span><b>${userdetail.province }${userdetail.city }${userdetail.county }</b></li>
		</ul>

	
	</section>

	<a href="/toMap_wap.shtml" style="margin:0.8rem;color:#036ac9;">我的地址</a>

	<a class="link" href="/queryUserDetail_wap.shtml?flag=2">修改信息>></a>


</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>
<script>$('.header_user').hide()</script>