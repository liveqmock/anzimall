<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/wap/header.jsp" flush="true"/>


<div class="main">

	<!-- 商户 -->
	<div class="store">
		<ul>
			<li>
				<h3><a ><img src="${list_merchant.enterpriseimg}" alt=""></a></h3>
				<cite>
					<h4><img src="${list_merchant.logo}" alt=""><br>${list_merchant.storename}</h4>
					<p>
						评分等级：
						<i>
							<img src="/wap/images/store_star.png">
							<img src="/wap/images/store_star.png">
							<img src="/wap/images/store_star.png">
							<img src="/wap/images/store_star.png">
						</i><br>
						刷卡折扣：全单9折<br>
						行业类别：${list_merchant.tid }<br>
					</p>
				</cite>
			</li>
		</ul>
		<h2>店铺地址：${list_merchant.provice }${list_merchant.city }${list_merchant.county }${list_merchant.address } <a href="/to_detail_map_wap.shtml?mid=${ list_merchant.id}">地图</a></h2>
	</div>


	<div class="intro">
		<i class="intro_close"><img src="/wap/images/intro_close.png" ></i>
		<h3>店铺介绍：</h3>
		<p>${list_merchant.note }</p>
	</div>



	<%--<div class="store_tag">
		<a href="/getMerchantsDetails_wap.shtml?mid=${list_merchant.id }" class="active">所有商品</a>
		<a href="/getMerchantsDetailsVip_wap.shtml?mid=${list_merchant.id }">商家会员卡</a>
	</div>--%>

	<!-- 产品页 -->
	<section class="porducts" style="margin-top: 0;">
		<ul>
			<c:forEach var="list_goods" items="${list_goods}" varStatus="status" begin="0" end="5" step="1">
			<li>
				<h3><a href="/getExchangeGoods_wap.shtml?id=${list_goods.id }"><img src="${list_goods.scopeimg}" alt=""></a></h3>
				<h4>${list_goods.name}</h4>
				<p>${list_goods.account}</p>
				<h5><em>0</em>元+<em>${list_goods.integral}</em>积分</h5>
			</li>
		</c:forEach>	
		</ul>
	</section>


</div>


<jsp:include page="/wap/footer.jsp" flush="true"/>

<script>

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
						res.push('<li><h3><a href="/getExchangeGoods_wap.shtml?id='+
							n.id+'"><img src="'+
							n.scopeimg+'"></a></h3><h4>'+
							n.name+'</h4><p>'+
							n.account+'</p><h5><em>0</em>元+<em>'+
							n.integral+'</em>积分</h5></li>');
						
					});

					$('.porducts ul').append(res.join(''));

					flag++;
					more = true;
	
				}
			});
		}	

	}); 
	

</script>
