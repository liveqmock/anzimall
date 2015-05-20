<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="我的积分" /></jsp:include>
<div class="main">

	<section class="integral">
		<h3>
			<span><img src="/wap/images/icon_17.png">我的总积分</span>
			<em>${integer }</em>
		</h3>
		<h4>
			<a href="/getUserIntegralDeductionList_wap.shtml" class="active">使用明细</a>
			<a href="/getUserIntegralProduceList_wap.shtml">获得明细</a>
		</h4>
		<ul>
		<c:forEach var="list" items="${list}" varStatus="status" begin="0" end="4" step="1">
			<li><span><img src="/wap/images/icon_14.png">时间</span><b><fmt:formatDate value="${list.endpaydate}" pattern="yyyy/MM/dd  HH:mm:ss"/></b></li>
			<li><span><img src="/wap/images/icon_15.png">应付金额</span><b>${list.originalmoney}元</b></li>
			<li><span><img src="/wap/images/icon_16.png">本次消费使用积分</span><b>${list.deductionintegral}</b></li>
			<li><span><img src="/wap/images/icon_15.png">实付金额</span><b>${list.discountmoney}元</b></li>
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
						var cache = '<li><span><img src="/wap/images/icon_14.png">时间</span><b>';
						cache += n.consumedate;
						cache += '</b></li>';
						cache += '<li><span><img src="/wap/images/icon_15.png">应付金额</span><b>';
						cache += n.money;
						cache += '元</b></li>';
						cache += '<li><span><img src="/wap/images/icon_16.png">本次消费使用积分</span><b>';
						cache += n.deduction;
						cache += '</b></li>';
						cache += '<li><span><img src="/wap/images/icon_15.png">实付金额</span><b>';
						cache += n.deductionmoney;
						cache += '元</b></li>';
						res.push(cache);
					});

					$('.integral ul').append(res.join(''));

					flag++;
					more = true;
	
				}
			});
		}	

	}); 
	
</script>