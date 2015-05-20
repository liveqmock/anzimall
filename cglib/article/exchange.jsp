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
							<li><a href="/cglib/article/register.jsp" >注册流程</a></li>
							<li><a href="/cglib/article/user.jsp">用户中心</a></li>
							<li><a href="/cglib/article/vipcard.jsp">享受优惠</a></li>
							<li><a href="/cglib/article/exchange.jsp" class='curr'>轻松兑换</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="help_main">
				<div class="u_crumb">
					<a >帮助中心</a>&gt;
					<a >新手指南</a>&gt;
					<strong>轻松兑换</strong>
				</div>
				


				
				<h2 class="help_main_tle">轻松兑换</h2>
				<div class="faq_answer" >
					<h4>兑换问题</h4>
                    <ul>
                        <li>
                        	<h5>1、选择商品</h5>
                            <p>用户可以在积分商城中浏览所有商家的商品</p>
                            <p>进入商品的详情页面，后查看商品的详情信息后选择自己喜欢的商品</p>
                        </li>
                        <li>
                        	<h5>2、兑换商品</h5>
                    		 <p>用户登录后可以选择使用兑换自己喜欢的商品，兑换成功后根据商品的类型，<br>
                    		 我们会选择给您快速邮递或是发送给您兑换码让您去指定的商家地址进行兑换</p>	
                        </li>
                        <li>
                        	<h5>3、兑换商品查询</h5>
                    		 <p>您可以登录后进入用户中心中查看兑换商品的详情记录，如果忘记了兑换了也可在此找回</p>	
                        </li>
                    </ul>
                    
				</div>
				



				

			</div>

		</div>
		

		
			
	


		
	

	</div>



<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>