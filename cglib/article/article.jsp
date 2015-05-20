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
						<a href='#' class='menu_multi_title'>会员中心</a>
						<ul class='menu_multi_sublist'>
							<li><a href="/to_integer_description.shtml" class='curr'>积分说明</a></li>
							<li><a href="#">会员注册</a></li>
							<li><a href="#">密码管理</a></li>
							<li><a href="#">账户管理</a></li>
							<li><a href="#">邮件通知</a></li>
							<li><a href="#">会员成长体系</a></li>
						</ul>
					</div>
					<div class='multi_menu_item'>
						<a href='#' class='menu_multi_title'>指南</a>
						<ul class='menu_multi_sublist'>
							<li><a href="#">特卖会专区</a></li>
							<li><a href="#">唯品团专区</a></li>
							<li><a href="#">港澳台专区</a></li>
							<li><a href="#">全球特卖</a></li>
							<li><a href="#">尺码换算</a></li>
							<li><a href="#">发票</a></li>
							<li><a href="#">品牌直发</a></li>
						</ul>
					</div>
					<div class='multi_menu_item'>
						<a href='#' class='menu_multi_title'>支付方式</a>
						<ul class='menu_multi_sublist'>
							<li><a href="#">银联在线支付</a></li>
							<li><a href="#">在线支付演示</a></li>
							<li><a href="#">线上支付</a></li>
							<li><a href="#">优惠券</a></li>
							<li><a href="#">货到付款	</a></li>
							<li><a href="#">唯品钱包</a></li>
							<li><a href="#">联名卡</a></li>
						</ul>
					</div>
					<div class='multi_menu_item'>
						<a href='#' class='menu_multi_title'>配送方式</a>
						<ul class='menu_multi_sublist'>
							<li><a href="#">配送服务</a></li>
							<li><a href="#">商品验货与签收</a></li>
							<li><a href="#">收货样品</a></li>
						</ul>
					</div>
					<div class='multi_menu_item'>
						<a href='#' class='menu_multi_title'>售后服务</a>
						<ul class='menu_multi_sublist'>
							<li><a href="#">退货政策</a></li>
							<li><a href="#">退货流程</a></li>
							<li><a href="#">退款方式和时效</a></li>
							<li><a href="#">维修服务</a></li>
							<li><a href="#">保险理赔</a></li>
							<li><a href="#">投诉及建议</a></li>
							<li><a href="#">客服电话语音流程</a></li>
						</ul>
					</div>
					<div class='multi_menu_item'>
						<a href='#' class='menu_multi_title'>掌上唯品会</a>
						<ul class='menu_multi_sublist'>
							<li><a href="#">掌上唯品会</a></li>
							<li><a href="#">iPhone版</a></li>
							<li><a href="#">iPad版</a></li>
							<li><a href="#">Android版</a></li>
							<li><a href="#">塞班版</a></li>
							<li><a href="#">唯品会wap</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="help_main">
				<div class="u_crumb">
					<a href="#">帮助中心</a>&gt;
					<a href="#">会员中心</a>&gt;
					<strong>积分说明</strong>
				</div>
				<div class="u_tab mt5">
					<ul class="u_tab_links">
						<li class="curr"><a href="/cglib/article/integer.jsp">积分说明</a></li>
						<li><a href="#">会员注册</a></li>
						<li><a href="#">密码管理</a></li>
						<li><a href="#">账户管理</a></li>
						<li><a href="#">邮件通知</a></li>
						<li><a href="#">会员成长体系</a></li>
					</ul>
				</div>



				<h2 class="help_main_tle">积分说明<span>积分产生流程，积分兑换方式</span></h2>

				<div class="faq_answer" >
					<p>&nbsp;<strong>1、获取积分</strong><br>&nbsp;唯品会全面回馈广大忠实会员，让您享受尊贵待遇及倾心服务，为您生活增添更多色彩。<br>
				唯品会积分奖励计划是为唯品会会员设立的专享服务计划，会员通过个人消费和网站操作获得相应积分。会员可通过以下两种渠道获取积分。<a href="http://jf.vip.com/exchange.php?action=rule">详情请查看积分制度》》</a></p>
				<p>&nbsp;</p>
				<p><strong>2、积分查询</strong><br>
					（1） 在"我的帐户"&gt;&gt;"会员积分"中，查询积分累积明细，可兑换礼品礼券。<br>
				（2）拨打唯品会服务热线400-6789-888查询</p>
				<p>&nbsp;</p>
				<p><strong>3、积分有效期</strong><br>
					<font face="宋体">会员积分采用年度滚动清零方式，会员该年得到的积分可使用到次年的12月31日，逾期未使用的积分将于到期后自动清零。</font><font face="Arial">（如：2012年度获得的积分，有效期至2013年12月31日，于2014年1月1日00:00自动清零）<span lang="EN-US"><o:p></o:p></span> <br>
				违规处理：<br>
				如果会员利用系统漏洞作弊等违规方式获得积分，经查证后，唯品会将查封会员帐号，并追缴相关积分，并保留追究相应法律责任的权利。 <br>
				修改及终止：<br>
				唯品会保留对本活动细则中条款的解释的权利，并有权根据需要取消本细则或增删、修订细则的权利（包括但不限于参加资格、积分计算及兑换标准）。</font></p>
				<p>&nbsp;</p>
				<p><strong>4、积分换礼</strong><br>
					积分兑换活动不用于兑换现金，仅限参加唯品会指定兑换物品、参与抽奖等各种活动。<br>
				（1）会员可以用积分参与各种指定积分兑换活动，只要会员积分达到可兑换标准，即可兑换相应礼品。兑换成功后将从会员积分中扣减相应积分值。积分一旦兑换奖品后，不能修改。<br>
				（2）积分兑换礼品不设退货流程，如确属礼品质量问题，可更换同等价值的礼品。<br>
				（3）兑换的礼品不提供免费送货服务，可选择在兑换后，礼品随新的订单一并配送（必须先兑换礼品，兑换后10天内下单）；如积分兑换礼品与下单所属仓库不同，不可随订单发出；如会员确需把礼品单独发货的，需按“配送费标准”收取配送费用。<br>
				（4）不同帐户之间的积分不可转让或不可合并使用；<br>
				（5）积分只适用于个人用途而进行的购物，不适用团体购物、以营利或销售为目的的购买行为、其他非个人用途购买行为。<br>
				（6）积分兑换标准及兑换规则均以兑换当时最新活动公告或目录为准，公告或目录如有有效期限的，逾期即不得兑换。<br>
				（7）部分兑换商品有数量限制，兑完为止。</p>
				<p>换购代金券细则：<br>
				1000积分兑换10元代金券（消费满80元即可使用，一个月有效期）<br>
				2000积分兑换20元代金券（消费满160元即可使用，一个月有效期）<br>
				3000积分兑换30元代金券（消费满228元即可使用，一个月有效期）<br>
				5000积分兑换50元代金券（消费满388元即可使用，一个月有效期）<br>
				&nbsp;</p></div>



			</div>

		</div>
		

		
			
	


		
	

	</div>



<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>