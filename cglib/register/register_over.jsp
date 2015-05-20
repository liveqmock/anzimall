<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%

	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";

	request.setAttribute("basePath",basePath);
	request.setAttribute("css","global,register");
	request.setAttribute("js","global,fukrm,register");
	
%>
	<jsp:include page="/cglib/header.jsp" flush="true"/>
	<div class="mainbox">

	<style>
		.register_over{background: #fdfbf6;text-align: center;height: 312px;font-size: 28px;line-height: 52px;color: #5c5c5c;}
		.register_over cite{display: inline-block;text-align: left;font-style: normal;margin-top: 50px;}
		.register_over strong{float: left;color: #faa605;font-weight: normal;margin-right: 10px;}
		.register_over p{float: right;}
		.register_over a{color: #5c9b01;}
	</style>
	
	
		<div class="content reginster cs">
			<%-- <div class="register_steps"><img src="/images/register_steps2.png" alt=""></div>--%>

			<h1 style="text-align: center;height: 300px;"><img src="/images/register_over.png" alt=""></h1>

			<div class="register_over">
				 <cite>
					<strong><i class="icon icon-tishi"></i>现在您可以选择：</strong>
					<p>
						1、<a href="/user_bankcard.shtml">绑定银行卡</a>享受优惠<br>
						2、完善<a href="/cglib/user/userdetail_reset.jsp">基本资料</a><br>
						3、<a href="/index.shtml">返回首页</a>购物<br>
					</p>
				</cite>
			</div>

			<br><br><br><br><br><br><br><br><br><br>

		</div>
	</div>

	<!-- 页脚 -->
	<jsp:include page="/cglib/footer.jsp" flush="true"/>
