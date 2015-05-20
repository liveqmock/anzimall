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
				<dl>
					<dt>新手指南</dt>
					<dd>
						<a href="/help.shtml?help=1001">注册流程</a>
						<a href="/help.shtml?help=1003">用户中心</a>
						<%--<a href="/help.shtml?help=1004">享受优惠</a> --%>
						<%--<a href="/help.shtml?help=1002">轻松兑换</a>--%>
					</dd>
				</dl>
				<dl>
					<dt>兑换帮助</dt>
					<dd>
						<a href="/help.shtml?help=1002">如何兑换</a>
						<a href="/help.shtml?help=1006">如何支付</a>
						<%--<a href="/help.shtml?help=1008">积分现金组合支付</a> --%>
					</dd>
				</dl>

				<%-- <dl>
					<dt>物流配送</dt>
					<dd>
						<a href="/help.shtml?help=1010">配送查询</a>
						<a href="/help.shtml?help=1011">配送范围及时间</a>
						<a href="/help.shtml?help=1012">商品验货与签收</a>
						<a href="/help.shtml?help=1013">自提服务</a>
					</dd>
				</dl>

				<dl>
					<dt>售后服务</dt>
					<dd>
						<a href="/help.shtml?help=1014">退换货地址</a>
						<a href="/help.shtml?help=1015">余额提现</a>
						<a href="/help.shtml?help=1009">退货说明</a>
					</dd>
				</dl>--%>

				<dl>
					<dt>特色服务</dt>
					<dd>
						<a href="/help.shtml?help=1005">享受优惠</a>
						<a href="/help.shtml?help=1007">积分产生</a>
					</dd>
				</dl>
				
				<dl>
					<dt>关于我们</dt>
					<dd>
						<a href="/help.shtml?help=1018">关于我们</a>
						<a href="/help.shtml?help=1019">联系我们</a>
					</dd>
				</dl>

			</div>


			<div class="help_main"><jsp:include page="/cglib/article/${help}.jsp" flush="true"/></div>

		</div>

	</div>



<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>