<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="我的会员卡" /></jsp:include>
<head>
	 <meta http-equiv="pragma" content="no-cache"> 

     <meta http-equiv="cache-control" content="no-cache"> 

     <meta http-equiv="expires" content="0"> 
</head>
<div class="main">
	

	<section class="card card_list">
		<ul>
		<c:forEach var="list" items="${list}" varStatus="status" begin="0" end="4" step="1">
			<li>
				<h2><strong><img src="/wap/images/icon_19.png">${list.name}</strong><em><fmt:formatDate value="${list.getdate}" pattern="yyyy/MM/dd  HH:mm:ss"/></em></h2>
				<cite>
					<h6><a><img src="${list.vipphoto}"></a></h6>
					<!--<h4><a><img src="${list.logo}" alt="${list.name}"></a></h4>-->
					<span><a>NO.00001</a></span>
					<h3><a>${list.name}</a></h3>
					<p><a>最高可享全单${list.discount}折优惠</a></p>
				</cite>
				<p>
					<strong>累计消费：<font color="red">${list.consumetotal}元</font></strong><br>
					<strong>当前等级：<font color="red">${list.type}</font></strong><br>
					<strong>消费享受：<font color="red">${list.discount}折</font></strong><br>
					<a href="/delUserVipcard_wap.shtml?id=${list.vid}"><img src="/wap/images/icon_delect.png"></a>
					<a href="/getMerchantsDetails_wap.shtml?mid=${list.mid}"><img src="/wap/images/icon_info.png"></a>
				</p>
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
						var cache = '<li><h2><strong><img src="/wap/images/icon_19.png">';
						cache += n.name;
						cache += '</strong><em>';
						cache += n.getdate;
						cache += '</em></h2><cite><h6><a><img src="';
						cache += n.vipphoto;
						cache += '"></a></h6><span><a>NO.00001</a></span><h3><a>';
						cache += n.name;
						cache += '</a></h3><p><a>最高可享全单';
						cache += n.discount;
						cache += '折优惠</a></p></cite><p><strong>累计消费：<font color="red">';
						cache += n.consumetotal;
						cache += '元</font></strong><br><strong>当前等级：<font color="red">';
						cache += n.type;
						cache += '</font></strong><br><strong>消费享受：<font color="red">';
						cache += n.discount;
						cache += '折</font></strong><br><a href="/delUserVipcard_wap.shtml?id=';
						cache += n.vid;
						cache += '"><img src="/wap/images/icon_delect.png"></a><a href="/getMerchantsDetails_wap.shtml?mid=';
						cache += n.mid;
						cache += '"><img src="/wap/images/icon_info.png"></a></p></li>';
						res.push(cache);
					});


					$('.card_list ul').append(res.join(''));

					flag++;
					more = true;
	
				}
			});
		}	

	}); 
	
</script>

