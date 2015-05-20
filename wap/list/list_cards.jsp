<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/wap/header.jsp" flush="true"/>


<div class="main">

	<!-- 推广切换 -->
	<div class="banner">
		<div class="swiper-container">
			<ul class="swiper-wrapper">
			<c:forEach var="advertising_goods" items="${advertising_goods}" varStatus="status">
				<li class="swiper-slide">
					<h3><a href="/getExchangeGoods_wap.shtml?id=${advertising_goods.id }" class="banner_pic"><img src="${advertising_goods.advertisingimg}" alt=""></a></h3>
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
			<a href="/getMoreMerchantsVipcard_wap.shtml?advertising=1" <c:if test="${advertising eq '1'}">class="active"</c:if>>限时兑换</a>
			<a href="/getMoreMerchantsVipcard_wap.shtml?advertising=2" <c:if test="${advertising eq '2'}">class="active"</c:if>>热 门</a>
			<a href="/getMoreMerchantsVipcard_wap.shtml?advertising=3" <c:if test="${advertising eq '3'}">class="active"</c:if>>特 价</a>
			<a href="/getMoreMerchantsVipcard_wap.shtml?advertising=4" <c:if test="${advertising eq '4'}">class="active"</c:if>>活 动</a>
			<a href="/getMoreMerchantsVipcard_wap.shtml?advertising=5" <c:if test="${advertising eq '5'}">class="active"</c:if>>猜你喜欢</a>
		</h2>
	</div>

	<!-- 分类 
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

	<!-- 商家会员卡 -->
	<section class="cards">
		<h2 class="tles">
			<strong>商家会员卡</strong>
<!--			<a href="#">更多>></a>-->
		</h2>
		<ul>
		<c:forEach var="merchants_vipcard" items="${merchants_vipcard}" varStatus="status" begin="0" end="7" step="1">
			<li>
				<h6><a href="/getMerchantsDetailsVip_wap.shtml?mid=${merchants_vipcard.mid}"><img src="${merchants_vipcard.vipphoto}"></a></h6>
<!--				<h4><a href="/getMerchantsDetailsVip_wap.shtml?mid=${merchants_vipcard.mid}"><img src="${merchants_vipcard.logo}" alt="${merchants_vipcard.username}"></a></h4>-->
				<span><a href="/getMerchantsDetailsVip_wap.shtml?mid=${merchants_vipcard.mid}">NO.00001</a></span>
				<h3><a href="/getMerchantsDetailsVip_wap.shtml?mid=${merchants_vipcard.mid}">${merchants_vipcard.username}</a></h3>
				<p><a href="/getMerchantsDetailsVip_wap.shtml?mid=${merchants_vipcard.mid}">最高可享全单${merchants_vipcard.upgrade1 }折优惠</a></p>
			</li>
		</c:forEach>
		</ul>
	</section>




<jsp:include page="/wap/footer.jsp" flush="true"/>
<script src="/wap/js/idangerous.swiper-2.0.min.js"></script>
<script>
	var mySwiper = new Swiper('.swiper-container',{
		// pagination: '.pagination',
		loop:true,
		grabCursor: true,
		paginationClickable: true
	});

	
	var flag = 1;
	var more = true;
	$(window).bind('scroll',function(){

		if(more && $(window).scrollTop()+$(window).height()>=$(document).height()){

			more = false;
			$.ajax({ 
				type:'post', 
				dataType:'json', 
				url:location.href, 
				data:{flag:flag},
				beforeSend:function(){}, 
				success:function(json){

					// 为空则停止更新
					if(json.length == 0){return false;}

					var res = [];
					$.each(json,function(i,n){

						res.push('<li><h6><a href="/getMerchantsDetailsVip_wap.shtml?mid='+
							n.mid+'"><img src="'+
							n.vipphoto+'"></a></h6><span><a href="/getMerchantsDetailsVip_wap.shtml?mid='+
							n.mid+'">NO.00001</a></span><h3><a href="/getMerchantsDetailsVip_wap.shtml?mid='+
							n.mid+'">'+
							n.username+'</a></h3><p><a href="/getMerchantsDetailsVip_wap.shtml?mid='+
							n.mid+'">最高可享全单'+
							n.upgrade1+'折优惠</a></p></li>');
					});

					$('.cards ul').append(res.join(''));

					flag++;
					more = true;
	
				}
			});
		}	

	}); 
</script>
