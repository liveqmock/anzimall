<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<nav>
		<div class="main">
			<a href="/index_wap.shtml"><i><img src="/wap/images/nav_home.png"></i><strong>首页</strong></a>
			<a href="/getAllGoodsList_wap.shtml"><i><img src="/wap/images/nav_product.png"></i><strong>商品</strong></a>
			<a href="/getMoreMerchants_wap.shtml"><i><img src="/wap/images/nav_store.png"></i><strong>商家</strong></a>
			<a href="/toMap_wap.shtml"><i><img src="/wap/images/nav_near.png"></i><strong>附近 </strong></a>
		</div>
	</nav>

	<script src="/wap/js/global.js"></script>

	<script>
		var path = window.location.pathname;
		var nav = $('nav').find('a');

		// 首页
		/\/index/.test(path) && nav.eq(0).addClass('active');

		// 商品
		/\/(getExchangeGoods)|(getGoodsDetails)|(getAllGoodsList)/.test(path) && nav.eq(1).addClass('active');

		// 商家
		/\/(getMoreMerchants)|(getMerchantsDetails)|(getMerchantsDetailsVip)/.test(path) && nav.eq(2).addClass('active');

		// 附近
		/\/toMap/.test(path) && nav.eq(0).addClass('active');


	</script>
</body>
</html>