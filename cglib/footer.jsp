<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


	<div class="footer">
		<div class="foot_nav">
			<div class="center">
				<a><img src="/images/footer_pic1.png">信誉保证</a> 
				<a><img src="/images/footer_pic2.png">3000家体验店</a> 
				<a><img src="/images/footer_pic3.png">免费送货安装</a> 
				<a><img src="/images/footer_pic4.png">360度全程服务</a>
			</div> 
		</div>


		<div class="foot_help">
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

			<%--<dl>
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
						<a href="/help.shtml?help=1005">积分产生</a>
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

		<div class="foot_copyright">

			<a href="http://www.anzipay.com/website/about.html">联系我们</a> ｜
			<a href="http://www.anzipay.com/website/index.html">安子便民支付</a> ｜
			<a href="/register_basic.shtml">立即注册</a> ｜
			<a href="http://union.anzimall.com/apply.shtml">合作加盟</a>


			
			
			<div class="foot_3">
				<p>网站备案/许可证号：粤ICP备14055158号-2 Copyright2011-2014   All Rights Reserved</p>
			<br><br>

			</div>
			

		</div>

	</div>


	<%-- 加载js --%>
	<c:forEach var="item" items="${js}"><script src="/js/${item}.js" ></script></c:forEach>

	
</body>
</html>