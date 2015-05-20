<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<head>
	 <meta http-equiv="pragma" content="no-cache"> 

     <meta http-equiv="cache-control" content="no-cache"> 

     <meta http-equiv="expires" content="0"> 
</head>


	<!-- 顶部导航 -->
	<div class="head_top">
		<ul class="head_top_wel">
			<li>您好，${phone}</li>
			<li><a href="/user_detail.shtml">用户中心</a></li>
			<li>|</li>
			<li><a href="/to_logout.shtml?p=<%= Math.random()%>">退出</a></li>
			<li>|</li>
			<li><span>【${sessionScope.city}】</span><a href="/cglib/city/city.jsp">切换城市</a></li>
		</ul>
		<ul class="head_top_tool">
			<li><a href="http://union.anzimall.com/" target="_blank">异业联盟</a></li>
			<li><a href="http://card.anzipay.com/" target="_blank">安子预付卡</a></li>
			<li><a href="http://anzipay.com/" target="_blank">安子支付</a></li>
			<li><a href="http://www.anziapp.com/" target="_blank">安子助手</a></li>
			<li><a href="http://119.254.69.98:8090/agentmgr/" target="_blank">分销平台</a></li>
			<li><a href="http://anzimall.com/help.shtml?help=1001" target="_blank">帮助中心</a></li>
			<!-- <li><a href="#">帮助指南</a></li>
			<li><a href="#">网站导航<i></i></a>
				<cite class="head_top_nav">
					<dl><dt><a href="http://114.215.239.103:8084/index.html">积分商城</a></dt>
						<dd><a href="http://114.215.239.103:8084/index.html">商城首页</a></dd>
						<dd><a href="http://114.215.239.103:8084/index.html">我的积分</a></dd>
						<dd><a href="http://114.215.239.103:8084/index.html">登陆商城</a></dd>
						<dd><a href="http://114.215.239.103:8084/index.html">注册会员</a></dd>
						<dd><a href="http://114.215.239.103:8084/index.html">我的会员卡</a></dd>
						<dd><a href="http://114.215.239.103:8084/index.html">升级银行卡</a></dd>
					</dl>
					<dl><dt><a href="http://114.215.239.103:8085/index.shtml">异业联盟</a></dt>
						<dd><a href="http://114.215.239.103:8085/index.shtml">登陆后台</a></dd>
						<dd><a href="http://114.215.239.103:8085/index.shtml">联盟平台</a></dd>
						<dd><a href="http://114.215.239.103:8085/index.shtml">在线咨询</a></dd>
						<dd><a href="http://114.215.239.103:8085/index.shtml">联盟新闻</a></dd>
						<dd><a href="http://114.215.239.103:8085/index.shtml">注册加盟</a></dd>
					</dl>
					<dl><dt><a href="http://114.215.239.103:8087/index.shtml">安子预付卡</a></dt>
						<dd><a href="http://114.215.239.103:8087/index.shtml">手机充值</a></dd>
						<dd><a href="http://114.215.239.103:8087/index.shtml">生活代缴</a></dd>
						<dd><a href="http://114.215.239.103:8087/index.shtml">银联pos</a></dd>
						<dd><a href="http://114.215.239.103:8087/index.shtml">会员卡系统</a></dd>
						<dd><a href="http://114.215.239.103:8087/index.shtml">申请加盟</a></dd>
					</dl>
					
				</cite>
			</li>
		</ul> -->
	</div>













