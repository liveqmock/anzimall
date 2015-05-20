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
			<a href="/getAllGoodsList_wap.shtml?advertising=1" <c:if test="${advertising eq '1'}">class="active"</c:if>>限时兑换</a>
			<a href="/getAllGoodsList_wap.shtml?advertising=2" <c:if test="${advertising eq '2'}">class="active"</c:if>>热 门</a>
			<a href="/getAllGoodsList_wap.shtml?advertising=3" <c:if test="${advertising eq '3'}">class="active"</c:if>>特 价</a>
			<a href="/getAllGoodsList_wap.shtml?advertising=4" <c:if test="${advertising eq '4'}">class="active"</c:if>>活 动</a>
			<a href="/getAllGoodsList_wap.shtml?advertising=5" <c:if test="${advertising eq '5'}">class="active"</c:if>>猜你喜欢</a>
		</h2>
	</div>

	<!-- 分类 -->
	<ul class="classy">
		<li>
			<strong>分类：</strong>
			<c:forEach var="goodsType" items="${goodsType}" varStatus="status" begin="0" end="7" step="1">
					<a href="/getAllGoodsList_wap.shtml?tid=${goodsType.tid }">${goodsType.tid }</a>
			</c:forEach>
		</li>
		<li>
			<strong>热门：</strong>
			<c:forEach var="goodsBrand" items="${goodsBrand}" varStatus="status" begin="0" end="7" step="1">
					<a href="/getAllGoodsList_wap.shtml?brand=${goodsBrand.brand }">${goodsBrand.brand }</a>
			</c:forEach>
		</li>
	</ul>


	<!-- 产品页 -->
	<section class="porducts">
		<h2 class="tles">
			<strong>全部商品</strong>
<!--			<a href="#">更多>></a>-->
		</h2>
		<ul>
		<c:forEach var="list_goods" items="${list_goods}" varStatus="status" begin="0" end="9" step="1">
			<li>
				<h3><a href="/getExchangeGoods_wap.shtml?id=${list_goods.id }"><img src="${list_goods.scopeimg}" alt=""></a></h3>
				<h4>${list_goods.name}</h4>
				<p>${list_goods.account}</p>
				<h5><em>${list_goods.pay_maney}</em>元+<em>${list_goods.pay_integer}</em>积分</h5>
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
						
						
					});

					$('.porducts ul').append(res.join(''));

					flag++;
					more = true;
	
				}
			});
		}	

	}); 
	
</script>