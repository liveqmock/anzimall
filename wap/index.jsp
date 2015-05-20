<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/wap/header.jsp" flush="true"/>

<div class="main">

	<!-- 推广切换 -->
	<div class="banner ">
		<div class="swiper-container">
			<ul class="swiper-wrapper">
			<c:forEach var="advertising_goods" items="${advertising_goods}" varStatus="status">
				<li class="swiper-slide">
					<h3><a href="/getExchangeGoods_wap.shtml?id=${advertising_goods.id }" class="banner_pic"><img src="${url }${advertising_goods.advertisingimg}" alt=""></a></h3>
					<cite>
						<h4>${advertising_goods.name}</h4>
						<p>${advertising_goods.account}</p>
						<a href="/getExchangeGoods_wap.shtml?id=${advertising_goods.id }" class="banner_btn">立即兑换</a>
					</cite>
				</li>
			</c:forEach>	
			</ul>
		</div>
		<h2>
			<a href="/index_wap.shtml?advertising=1" <c:if test="${advertising eq '1'}">class="active"</c:if> >限时兑换</a>
			<a href="/index_wap.shtml?advertising=2" <c:if test="${advertising eq '2'}">class="active"</c:if> >热 门</a>
			<a href="/index_wap.shtml?advertising=3" <c:if test="${advertising eq '3'}">class="active"</c:if> >特 价</a>
			<a href="/index_wap.shtml?advertising=4" <c:if test="${advertising eq '4'}">class="active"</c:if> >活 动</a>
			<a href="/index_wap.shtml?advertising=5" <c:if test="${advertising eq '5'}">class="active"</c:if> >猜你喜欢</a>
		</h2>
	</div>
	<!-- 分类 -->
	<ul class="classy">
		<li>
			<strong>全部</strong>
			<c:forEach var="list" items="${goodsType}" begin="0" end="7">
				<span style="width:25%"><a href="/getgoodsbytid_wap.shtml?tid=${list.tid}&page=0">${list.tid}</a></span>
				
			</c:forEach>
		</li>
	</ul>
	<!-- 生活缴费 
	<div class="life">
		<a href="#"><img src="/wap/images/life_pic1.png"><b>水费</b></a>
		<a href="#"><img src="/wap/images/life_pic2.png"><b>电费</b></a>
		<a href="#"><img src="/wap/images/life_pic3.png"><b>燃气费</b></a>
		<a href="#"><img src="/wap/images/life_pic4.png"><b>话费</b></a>
		<a href="#"><img src="/wap/images/life_pic5.png"><b>彩票</b></a>
	</div>
 
	--><!-- 分类 
	<ul class="classy">
		<li>
			<strong>区域：</strong>
			<a href="#">罗湖区</a>
			<a href="#">福田区</a>
			<a href="#">南山区</a>
			<a href="#">宝安区</a>
			<a href="#">龙岗区</a>
			<a href="#">盐田区</a>
		</li>
		<li>
			<strong>分类：</strong>
			<a href="#">购物逛街</a>
			<a href="#">老字号</a>
			<a href="#">餐饮美食</a>
			<a href="#">休闲娱乐</a>
			<a href="#">酒店住宿</a>
		</li>
	</ul>
	-->

	<!-- 产品页 -->
	<section class="porducts">
		<h2 class="tles">
			<strong>可兑换商品</strong>
			<a href="/getMallAllGoodsList_wap.shtml">更多></a>
		</h2>
		<ul>
		<c:forEach var="list_goods1" items="${list_goods1}" varStatus="status" begin="0" end="3" step="1">
			<li>
				<h3><a href="/getExchangeGoods_wap.shtml?id=${list_goods1.id }"><img src="${list_goods1.scopeimg}" alt=""></a></h3>
				<h4>${list_goods1.name}</h4>
				<p>${list_goods1.account}</p>
				<h5><em>0</em>元+<em>${list_goods1.pice}</em>积分</h5>
			</li>
		</c:forEach>	
		
		
		</ul>
	</section>


	<!-- 商铺 -->
	<section class="stores">
		<h2 class="tles">
			<strong>最新商家</strong>
			<a href="/getMoreMerchants_wap.shtml">更多></a>
		</h2>
		<ul>
		<c:forEach var="merchants_user" items="${merchants_list}" varStatus="status" begin="0" end="5" step="1">
			<li>
				<h3><a href="/getMerchantsDetails_wap.shtml?mid=${merchants_user.id}"><img src="${url }${merchants_user.logo}" alt="${merchants_user.username}"></a></h3>
				<h4><a href="/getMerchantsDetails_wap.shtml?mid=${merchants_user.id}">${merchants_user.name}</a></h4>
			</li>
		</c:forEach>
		</ul>
		
	</section>


	<!-- 产品页 -->
	<!-- <section class="porducts">
		<h2 class="tles">
			<strong>消费赚积分</strong>
			<a href="/getMerchantsAllGoodsList_wap.shtml">更多></a>
		</h2>
		<ul>
			<c:forEach var="list_goods2" items="${list_goods2}" varStatus="status" begin="0" end="3" step="1">
			<li>
				<h3><a href="/getExchangeGoods_wap.shtml?id=${list_goods2.id }"><img src="${url }${list_goods2.scopeimg}" alt=""></a></h3>
				<h4>${list_goods2.name}</h4>
				<p>${list_goods2.account}</p>
				<h5><em>0</em>元+<em>${list_goods2.integral}</em>积分</h5>
			</li>
		</c:forEach>
		</ul>
	</section> -->



	<!-- 商家会员卡 -->
	<%--<section class="cards">
		<h2 class="tles">
			<strong>商家会员卡</strong>
			<a href="/getMoreMerchantsVipcard_wap.shtml">更多>></a>
		</h2>
		<ul>
		<c:forEach var="merchants_vipcard" items="${merchants_vipcard}" varStatus="status" begin="0" end="3" step="1">
			<li>
				<h6><a href="/getMerchantsDetailsVip_wap.shtml?mid=${merchants_vipcard.mid}"><img src="${url }${merchants_vipcard.vipphoto}"></a></h6>
				<!--<h4><a href="/getMerchantsDetailsVip_wap.shtml?mid=${merchants_vipcard.mid}">会员卡</a></h4>-->
				<span><a href="/getMerchantsDetailsVip_wap.shtml?mid=${merchants_vipcard.mid}">NO.00001</a></span>
				<h3><a href="/getMerchantsDetailsVip_wap.shtml?mid=${merchants_vipcard.mid}">${merchants_vipcard.username}</a></h3>
				<p><a href="/getMerchantsDetailsVip_wap.shtml?mid=${merchants_vipcard.mid}">最高可享全单${merchants_vipcard.upgrade1 }折优惠</a></p>
			</li>
		</c:forEach>
		</ul>
	</section>--%>

</div>


<script src="/wap/js/idangerous.swiper-2.0.min.js"></script>
<script>
	var mySwiper = new Swiper('.swiper-container',{
		// pagination: '.pagination',
		loop:true,
		grabCursor: true,
		paginationClickable: true
	});
</script>


<jsp:include page="/wap/footer.jsp" flush="true"/>