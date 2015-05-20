<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta content="width=device-width,user-scalable=no" name="viewport">
	<meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="yes" name="apple-touch-fullscreen">
	<meta content="fullscreen=yes,preventMove=no" name="ML-Config">
	<meta http-equiv="pragma" content="no-cache"> 
    <meta http-equiv="cache-control" content="no-cache"> 
    <meta http-equiv="expires" content="0"> 
	<title>安淘惠-微商城</title>
	<link rel="stylesheet" href="/wap/css/style.css">
</head>
<body>

	

	<!-- 头 -->
	<header>
		<div class="main">
			<a href="javascript:window.history.go(-1);" class="header_back"><img src="/wap/images/header_back.png" ></a>

			<c:if test="${empty param.title}">
				<form action="/getGoods_wap.shtml"><input type="submit" value=""><label><input type="text" name="word" placeholder="请输入关键字"></label></form>
			</c:if>
			<c:if test="${!empty param.title}"><div class="header_tle">${param.title}</div></c:if>
			
			
			<c:if test="${sessionScope.userid eq null}"><a class="header_load" href="/wap/login.jsp">登录</a></c:if>

			<c:if test="${sessionScope.userid > 0}"><a href="/toUserCenter_wap.shtml" class="header_user"><img src="${portrait}" alt=""></a></c:if>
			
		</div>
	</header>