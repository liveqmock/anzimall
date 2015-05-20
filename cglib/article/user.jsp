<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%
	request.setAttribute("css","global,article");
	request.setAttribute("js","global,article");
%>


<jsp:include page="/cglib/header.jsp" flush="true"/>


	<div class="mainbox cs">
		
		<div class="help_top">
			<span class="help_tit"><a href="index.php">帮助中心</a></span>
			<span class="help_tit_dis">欢迎您来到帮助中心。</span>
		</div>



		<div class="main cs">

			<div class="help_side">
				<div class="h_multi_menu">
					<div class='multi_menu_item active'>
						<a href='#' class='menu_multi_title'>新手指南</a>
						<ul class='menu_multi_sublist'>
							<li><a href="/cglib/article/register.jsp">注册流程</a></li>
							<li><a href="/cglib/article/user.jsp" class='curr' >用户中心</a></li>
							<li><a href="/cglib/article/vipcard.jsp">享受优惠</a></li>
							<li><a href="/cglib/article/exchange.jsp">轻松兑换</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="help_main">
				<div class="u_crumb">
					<a >帮助中心</a>&gt;
					<a >新手指南</a>&gt;
					<strong>用户中心</strong>
				</div>
				


				
				<h2 class="help_main_tle">用户中心</h2>
				<div class="faq_answer" >
					<ul>
                        <li>
                            <h5>1、我的兑换</h5>
                            <p>在用户中心我的兑换中可以查看到您最近在积分商城兑换的商品以及记录。</p>
                        </li>
                        <li>
                            <h5>2、我的会员卡</h5>
                            <p>在用户中心我的会员卡中可以查看您添加的商家会员卡信息，线上刷卡消费时可以享受到会员卡折扣</p>
                        </li>
                        <li>
                            <h5>3、我的积分</h5>
                            <p>在用户中心我的积分中可以查看您的积分总额以及使用和获得明细记录。</p>
                        </li>
                        <li>
                            <h5>4、我的银行卡</h5>
                            <p>在用户中心我的银行卡中可以查看您已绑定的银行卡，上限为5张，如果未达到上限可以在此选择添加。</p>
                        </li>
                        <li>
                            <h5>5、基本信息</h5>
                            <p>在用户中心基本信息中可以查看您的个人信息，如果注册时您选择跳过此步也可以此选择修改完善。</p>
                        </li>
                        <li>
                            <h5>6、修改密码</h5>
                            <p>在用户中心修改密码中您可以在此修改您的登录密码。</p>
                        </li>
                        <li>
                            <h5>7、我的商圈</h5>
                            <p>在用户中心我的商圈中，用户可以选择添加，修改，删除我的商圈信息，上限为5个。我的商圈是为了方便用户查找自己附近的优惠</p>
                        </li>
                        <li>
                            <h5>8、我的收货地址</h5>
                            <p>在用户中心我的收货地址中，用户可以选择添加，修改，删除我的收货地址，上限为5个。我的收货地址是为了线上兑换时给你发货的时的依据</p>
                        </li>
                    </ul>
				</div>
				



				

			</div>

		</div>
		

		
			
	


		
	

	</div>



<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>