<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta http-equiv="pragma" content="no-cache"> 
	<meta http-equiv="cache-control" content="no-cache"> 
	<meta http-equiv="expires" content="0"> 
	<title>积分商城</title>
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<%
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
		request.getSession().setAttribute("basePath", basePath);
	%>
	<base href="${basePath}">


	<%-- 加载css --%>
	<c:forEach var="item" items="${css}"><link type="text/css" rel="stylesheet" href="/css/${item}.css"></c:forEach>

	



	<!--[if lt IE 8]><script src="js/ie67.js"></script><![endif]-->
	<script> 
		// 唯一全局变量
		var GLOBAL = {};
		GLOBAL.loop =[];//事件列队
		<c:if test="${sessionScope.userid eq null}">GLOBAL.loaded =  false;</c:if>
		<c:if test="${sessionScope.userid > 0}">GLOBAL.loaded =  true;</c:if>
	</script>
</head>
<body>

	<!-- 顶部广告 隐藏-->
	<div class="header_ad" style="background: #44b4ff; display: none;"><a href="#"><img src="images/head_ad.jpg" alt=""></a></div>


	<!-- 加载 顶部 -->
	<c:if test="${sessionScope.userid eq null}"><jsp:include page="/cglib/header_unlogin.jsp" flush="true"/></c:if>
	<c:if test="${sessionScope.userid > 0}"><jsp:include page="/cglib/header_logined.jsp" flush="true"/></c:if>

	<!--头部 -->
	<div class="head_nav">
		<div class="center">
			<a href="/index.html" class="head_nav_logo"><img src="/images/head_nav_logo.png" alt="积分商城" style="margin-top:12px"></a>
			<ul>
				<li <c:if test="${head == 'home'}">class="active"</c:if>><a href="/index.html">积分商城</a></li>
				<li <c:if test="${head == 'integral'}">class="active"</c:if>><a class="js-needlogin" href="/user_integraldeduction.shtml">我的积分</a></li>
				<li <c:if test="${head == 'exchange'}">class="active"</c:if>><a href="/get_moreall.shtml">立即兑换</a></li>
				<%--<li <c:if test="${head == 'vipcard'}">class="active"</c:if>><a href="/get_more_merchantsvipcatd.shtml">会员卡</a></li>--%>
				<li <c:if test="${head == 'nearby'}">class="active"</c:if>><a href="/get_userslocation.shtml">附近商圈</a></li>
			</ul>
			<form class="head_search" action="/get_moreall.shtml" method="get" target="_blank"> 
				<div>
					<input name="tid" type="text" value="大家都在搜…">
					<input type="submit" value="">
					<ul>
						<li>demo</li>
						<li>demo</li>
						<li>demo</li>
						<li>demo</li>
					</ul>
				</div>
			</form>
		</div>
	</div>



	
