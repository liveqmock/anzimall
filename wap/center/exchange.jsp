<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="我的兑换" /></jsp:include>

<div class="main">
	

	<section class="exchange_list">
		<ul>
		<c:forEach var="list" items="${list}" varStatus="status" begin="0" end="4" step="1">
			<li>
				<h3><strong><img src="/wap/images/icon_19.png">${list.storename }</strong>
				<em>
				<c:if test="${list.type eq 0}"><font color="#40BB3D">邮寄快递</font></c:if>
				<c:if test="${list.type eq 1}"><font color="#117BC8">线下兑换</font></c:if>
				</em></h3>
				<p>
					<img src="${list.scopeimg }">
					<a href="/getExchangeGoods_wap.shtml?id=${list.gid}">${list.name }</a>
					<cite>${list.pay_maney}元+￥${list.pay_integer} <br> 
					<c:if test="${list.type eq 0}">
						运费：${list.freight*list.number} 元<br>
					</c:if> 
					件数：${list.number}个<br/>
					
					</cite>
				</p>
				
				<c:if test="${list.type eq 1}">
					<h6><strong>兑换码：${list.expressno}</strong></h6>
					<h6><strong>兑换地址：${list.address}</strong>共${list.number}件商品&nbsp;&nbsp;实付：<b>${list.paymoney}</b>元<b>${list.payintegral}</b>积分</h6>
				</c:if>
				<c:if test="${list.type eq 0}">
					<h6><strong>收货地址：${list.aaddress}</strong>共${list.number}件商品&nbsp;&nbsp;实付：<b>${list.paymoney}</b>元<b>${list.payintegral}</b>积分</b>积分</h6>
				</c:if>
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
				:location.href, 
				data:{flag:flag},
				beforeSend:function(){}, 
				success:function(json){

					// 为空则停止更新
					if(json.length == 0){return false;}

					var res = [];
					$.each(json,function(i,n){
						var cache = '<li><h3><strong><img src="/wap/images/icon_19.png">';
						cache += n.username;
						cache += '</strong><em>';
						
						if(n.expressno){
							cache += '<font color="#40BB3D">邮寄快递</font>';
						}else{
							cache += '<font color="#117BC8">线下兑换</font>';
						}
						cache += '</em></h3>';
						cache += '<p><img src="';
						cache += n.scopeimg;
						cache += '"><a href="/getExchangeGoods_wap.shtml?id=';
						cache += n.gid;
						cache += '">';
						cache += n.name;
						cache += '</a><cite>';
						cache += n.integral;
						cache += '<br>X';
						cache += n.number;
						cache += '</cite></p><h6><strong>兑换码：';
						if(n.expressno){
						cache += n.expressno;
						}
						cache += '</strong>共';
						cache += n.number;
						cache += '件商品&nbsp;&nbsp;实付：<b>';
						cache += n.number*n.integral;
						cache += '</b>积分</h6></li>	';
						res.push(cache);
						
					});

					$('.exchange_list ul').append(res.join(''));

					flag++;
					more = true;
	
				}
			});
		}	

	}); 
	
</script>