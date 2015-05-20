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
							<li><a href="/cglib/article/user.jsp">用户中心</a></li>
							<li><a href="/cglib/article/vipcard.jsp" class='curr' >享受优惠</a></li>
							<li><a href="/cglib/article/exchange.jsp">轻松兑换</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="help_main">
				<div class="u_crumb">
					<a >帮助中心</a>&gt;
					<a >新手指南</a>&gt;
					<strong>享受优惠</strong>
				</div>
				


				
				<h2 class="help_main_tle">享受优惠</h2>
				<div class="faq_answer" >
				<h4>会员卡问题</h4>
                    <ul>
                        <li>
                        	<h5>1、选择会员卡</h5>
                            <p>用户可以申领不同商户的会员卡。</p>
                            <p>如果商家不限定“一个会员只能绑一次”， 同一用户名下的多张卡片可以在同一家商户同时绑定会员凭证；同样的，同一用户名下的同一卡片可以绑定多张家商户会员凭证。</p>
                        </li>
                        <li>
                        	<h5>2、会员卡升级</h5>
                    		 <p>用户的会员卡通过用户在其对应的商家消费金额的累积来确定会员卡的等级，等级越高所享受的折扣越低。</p>	
                        </li>
                        <li>
                        	<h5>3、会员卡查询</h5>
                    		 <p>用户登录后可以进入用户中心我的会员卡查询本身已有的会员卡信息。</p>	
                        </li>
                    </ul>
				</div>
				



				

			</div>

		</div>
		

		
			
	


		
	

	</div>



<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>