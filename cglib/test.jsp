<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

	request.setAttribute("header_active","members");
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title>login</title>
	
	<base href="<%=basePath%>"/>
	<!--[if lt IE 8]><script src="js/ie67.js"></script><![endif]-->
	<link rel="stylesheet" href="/css/global.css">
	<link rel="stylesheet" href="/css/backstage.css">
</head>
<body>

	
	<div class="center cs">
		
		

		<form action="testmoney.shtml" class="js-form js-form-checkvipmobile js-form-ajax"  method="post">
				
				<cite>
					<span><em>*</em>操作序列号：</span>
					<label>
						<input type="text" name="txOperSeqNo" value="2">
					</label>
					<i></i>
				</cite><br>

				<cite>
					<span><em>*</em>提现标识：</span>
					<label>
						<input type="text" name="tFlag" value="1">
					</label>
					<i></i>
				</cite><br>
				<cite>
					<span><em>*</em>多比或单笔标识：</span>
					<label>
						<input type="text" name="SMFlag"  value="T">
					</label>
					<i></i>
				</cite><br>
				<cite>
					<span><em>*</em>序号：</span>
					<label>
						<input type="text" name="detailSeqNo"  value="5">
					</label>
					<i></i>
				</cite><br>
				<cite>
					<span><em>*</em>交易日期：</span>
					<label>
						<input type="text" name="txdate"  value="8013896707">
					</label>
					<i></i>
				</cite><br>
				<cite>
					<span><em>*</em>分拆序号：</span>
					<label>
						<input type="text" name="separateno" value="5" >
					</label>
					<i></i>
				</cite><br>

				<cite><input type="submit" value="提交"></cite>
			</form>


	

	</div>





</body>
</html>