<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/wap/header.jsp" flush="true"/>


<div class="main">

	<!-- 分类 -->
	<ul class="classy">
		<li>
			<strong>全部</strong>
			<a href="/getgoodsbytid_wap.shtml?tid=${tname}">${tname}</a>
			
		</li>
		
	</ul>


	<!-- 产品页 -->
	<section class="porducts">
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